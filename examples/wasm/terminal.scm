(import (scheme base) 
        (scheme read) 
        (scheme write) 
        (scheme eval) 
        (srfi 18))

(define-c get-input
  "(void *data, int argc, closure _, object k)"
  " make_utf8_string(data, str, \"(+ 1 2 3) \\\"test\\\" (* 3 5 7)\");
    return_closcall1(data, k, &str);")

(define (loop)
  (with-handler                                                              
    (lambda (obj)                                                            
      (display "Error: ")                                                    
      (cond                                                                  
        ((error-object? obj)                                                 
         (display (error-object-message obj))                                
         (if (not (null? (error-object-irritants obj)))                      
             (display ": "))                                                 
         (for-each                                                           
           (lambda (o)                                                       
             (write o)                                                       
             (display " "))                                                  
           (error-object-irritants obj)))                                    
        ((pair? obj)                                                         
         (when (string? (car obj))                                           
           (display (car obj))                                               
           (if (not (null? (cdr obj)))                                       
               (display ": "))                                               
           (set! obj (cdr obj)))                                             
         (for-each                                                           
           (lambda (o)                                                       
             (write o)                                                       
             (display " "))                                                  
           obj))                                                             
        (else                                                                
          (display obj)))                                                    
      (newline)                                                              
      (loop))
  (let ((str (get-input)))
    (when str
      (let* ((fp (open-input-string str))
             (sexp-lis (read-all fp))) 
        (for-each 
          (lambda (sexp)
            (let ((obj (eval sexp)))
              (write obj)
              (newline)))
          sexp-lis)
        (close-port fp))))
  (thread-sleep! 0.5)
  (loop)))

(loop)

