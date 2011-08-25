(define (stream-map proc . argstreams)
 (if (null? argstreams)
  the-empty-stream
  (cons-stream
   (apply proc (map stream-car argstreams))
   (apply stream-map
    (cons proc (map stream-cdr argstreams))))))
