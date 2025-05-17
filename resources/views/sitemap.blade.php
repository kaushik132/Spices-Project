@php
    echo '<?xml version="1.0" encoding="UTF-8"?>'
@endphp
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

    <url>
        <loc>https://shyamafoods.com/</loc>
        <lastmod>2025-05-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>


    <url>
        <loc>https://shyamafoods.com/contact-us</loc>
        <lastmod>2025-05-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>


    @foreach ($products as $products)
        
    <url>
        <loc>{{url('/')}}/product-details/{{$products->slug}}</loc>
        <lastmod>{{$products->created_at->tz('UTC')->toAtomString()}}</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>
    @endforeach
    @foreach ($productCats as $productCats)
        
    <url>
        <loc>{{url('/')}}/products/{{$productCats->slug}}</loc>
        <lastmod>{{$productCats->created_at->tz('UTC')->toAtomString()}}</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>
    @endforeach


    <url>
        <loc>https://shyamafoods.com/products</loc>
        <lastmod>2025-05-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>

    <url>
        <loc>https://shyamafoods.com/privacy-policy</loc>
        <lastmod>2025-05-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>

    <url>
        <loc>https://shyamafoods.com/terms</loc>
        <lastmod>2025-05-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>




</urlset>