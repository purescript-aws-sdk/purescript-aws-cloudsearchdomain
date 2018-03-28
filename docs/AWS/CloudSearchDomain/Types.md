## Module AWS.CloudSearchDomain.Types

#### `options`

``` purescript
options :: Options
```

#### `Adds`

``` purescript
newtype Adds
  = Adds Number
```

##### Instances
``` purescript
Newtype Adds _
Generic Adds _
Show Adds
Decode Adds
Encode Adds
```

#### `Bucket`

``` purescript
newtype Bucket
  = Bucket { value :: NullOrUndefined (String), count :: NullOrUndefined (Number) }
```

<p>A container for facet information. </p>

##### Instances
``` purescript
Newtype Bucket _
Generic Bucket _
Show Bucket
Decode Bucket
Encode Bucket
```

#### `newBucket`

``` purescript
newBucket :: Bucket
```

Constructs Bucket from required parameters

#### `newBucket'`

``` purescript
newBucket' :: ({ value :: NullOrUndefined (String), count :: NullOrUndefined (Number) } -> { value :: NullOrUndefined (String), count :: NullOrUndefined (Number) }) -> Bucket
```

Constructs Bucket's fields from required parameters

#### `BucketInfo`

``` purescript
newtype BucketInfo
  = BucketInfo { buckets :: NullOrUndefined (BucketList) }
```

<p>A container for the calculated facet values and counts.</p>

##### Instances
``` purescript
Newtype BucketInfo _
Generic BucketInfo _
Show BucketInfo
Decode BucketInfo
Encode BucketInfo
```

#### `newBucketInfo`

``` purescript
newBucketInfo :: BucketInfo
```

Constructs BucketInfo from required parameters

#### `newBucketInfo'`

``` purescript
newBucketInfo' :: ({ buckets :: NullOrUndefined (BucketList) } -> { buckets :: NullOrUndefined (BucketList) }) -> BucketInfo
```

Constructs BucketInfo's fields from required parameters

#### `BucketList`

``` purescript
newtype BucketList
  = BucketList (Array Bucket)
```

##### Instances
``` purescript
Newtype BucketList _
Generic BucketList _
Show BucketList
Decode BucketList
Encode BucketList
```

#### `ContentType`

``` purescript
newtype ContentType
  = ContentType String
```

##### Instances
``` purescript
Newtype ContentType _
Generic ContentType _
Show ContentType
Decode ContentType
Encode ContentType
```

#### `Cursor`

``` purescript
newtype Cursor
  = Cursor String
```

##### Instances
``` purescript
Newtype Cursor _
Generic Cursor _
Show Cursor
Decode Cursor
Encode Cursor
```

#### `Deletes`

``` purescript
newtype Deletes
  = Deletes Number
```

##### Instances
``` purescript
Newtype Deletes _
Generic Deletes _
Show Deletes
Decode Deletes
Encode Deletes
```

#### `DocumentServiceException`

``` purescript
newtype DocumentServiceException
  = DocumentServiceException { status :: NullOrUndefined (String), message :: NullOrUndefined (String) }
```

<p>Information about any problems encountered while processing an upload request.</p>

##### Instances
``` purescript
Newtype DocumentServiceException _
Generic DocumentServiceException _
Show DocumentServiceException
Decode DocumentServiceException
Encode DocumentServiceException
```

#### `newDocumentServiceException`

``` purescript
newDocumentServiceException :: DocumentServiceException
```

Constructs DocumentServiceException from required parameters

#### `newDocumentServiceException'`

``` purescript
newDocumentServiceException' :: ({ status :: NullOrUndefined (String), message :: NullOrUndefined (String) } -> { status :: NullOrUndefined (String), message :: NullOrUndefined (String) }) -> DocumentServiceException
```

Constructs DocumentServiceException's fields from required parameters

#### `DocumentServiceWarning`

``` purescript
newtype DocumentServiceWarning
  = DocumentServiceWarning { message :: NullOrUndefined (String) }
```

<p>A warning returned by the document service when an issue is discovered while processing an upload request.</p>

##### Instances
``` purescript
Newtype DocumentServiceWarning _
Generic DocumentServiceWarning _
Show DocumentServiceWarning
Decode DocumentServiceWarning
Encode DocumentServiceWarning
```

#### `newDocumentServiceWarning`

``` purescript
newDocumentServiceWarning :: DocumentServiceWarning
```

Constructs DocumentServiceWarning from required parameters

#### `newDocumentServiceWarning'`

``` purescript
newDocumentServiceWarning' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> DocumentServiceWarning
```

Constructs DocumentServiceWarning's fields from required parameters

#### `DocumentServiceWarnings`

``` purescript
newtype DocumentServiceWarnings
  = DocumentServiceWarnings (Array DocumentServiceWarning)
```

##### Instances
``` purescript
Newtype DocumentServiceWarnings _
Generic DocumentServiceWarnings _
Show DocumentServiceWarnings
Decode DocumentServiceWarnings
Encode DocumentServiceWarnings
```

#### `Expr`

``` purescript
newtype Expr
  = Expr String
```

##### Instances
``` purescript
Newtype Expr _
Generic Expr _
Show Expr
Decode Expr
Encode Expr
```

#### `Exprs`

``` purescript
newtype Exprs
  = Exprs (StrMap String)
```

##### Instances
``` purescript
Newtype Exprs _
Generic Exprs _
Show Exprs
Decode Exprs
Encode Exprs
```

#### `Facet`

``` purescript
newtype Facet
  = Facet String
```

##### Instances
``` purescript
Newtype Facet _
Generic Facet _
Show Facet
Decode Facet
Encode Facet
```

#### `Facets`

``` purescript
newtype Facets
  = Facets (StrMap BucketInfo)
```

##### Instances
``` purescript
Newtype Facets _
Generic Facets _
Show Facets
Decode Facets
Encode Facets
```

#### `FieldStats`

``` purescript
newtype FieldStats
  = FieldStats { min :: NullOrUndefined (String), max :: NullOrUndefined (String), count :: NullOrUndefined (Number), missing :: NullOrUndefined (Number), sum :: NullOrUndefined (Number), sumOfSquares :: NullOrUndefined (Number), mean :: NullOrUndefined (String), stddev :: NullOrUndefined (Number) }
```

<p>The statistics for a field calculated in the request.</p>

##### Instances
``` purescript
Newtype FieldStats _
Generic FieldStats _
Show FieldStats
Decode FieldStats
Encode FieldStats
```

#### `newFieldStats`

``` purescript
newFieldStats :: FieldStats
```

Constructs FieldStats from required parameters

#### `newFieldStats'`

``` purescript
newFieldStats' :: ({ min :: NullOrUndefined (String), max :: NullOrUndefined (String), count :: NullOrUndefined (Number), missing :: NullOrUndefined (Number), sum :: NullOrUndefined (Number), sumOfSquares :: NullOrUndefined (Number), mean :: NullOrUndefined (String), stddev :: NullOrUndefined (Number) } -> { min :: NullOrUndefined (String), max :: NullOrUndefined (String), count :: NullOrUndefined (Number), missing :: NullOrUndefined (Number), sum :: NullOrUndefined (Number), sumOfSquares :: NullOrUndefined (Number), mean :: NullOrUndefined (String), stddev :: NullOrUndefined (Number) }) -> FieldStats
```

Constructs FieldStats's fields from required parameters

#### `FieldValue`

``` purescript
newtype FieldValue
  = FieldValue (Array String)
```

##### Instances
``` purescript
Newtype FieldValue _
Generic FieldValue _
Show FieldValue
Decode FieldValue
Encode FieldValue
```

#### `Fields`

``` purescript
newtype Fields
  = Fields (StrMap FieldValue)
```

##### Instances
``` purescript
Newtype Fields _
Generic Fields _
Show Fields
Decode Fields
Encode Fields
```

#### `FilterQuery`

``` purescript
newtype FilterQuery
  = FilterQuery String
```

##### Instances
``` purescript
Newtype FilterQuery _
Generic FilterQuery _
Show FilterQuery
Decode FilterQuery
Encode FilterQuery
```

#### `Highlight`

``` purescript
newtype Highlight
  = Highlight String
```

##### Instances
``` purescript
Newtype Highlight _
Generic Highlight _
Show Highlight
Decode Highlight
Encode Highlight
```

#### `Highlights`

``` purescript
newtype Highlights
  = Highlights (StrMap String)
```

##### Instances
``` purescript
Newtype Highlights _
Generic Highlights _
Show Highlights
Decode Highlights
Encode Highlights
```

#### `Hit`

``` purescript
newtype Hit
  = Hit { id :: NullOrUndefined (String), fields :: NullOrUndefined (Fields), exprs :: NullOrUndefined (Exprs), highlights :: NullOrUndefined (Highlights) }
```

<p>Information about a document that matches the search request.</p>

##### Instances
``` purescript
Newtype Hit _
Generic Hit _
Show Hit
Decode Hit
Encode Hit
```

#### `newHit`

``` purescript
newHit :: Hit
```

Constructs Hit from required parameters

#### `newHit'`

``` purescript
newHit' :: ({ id :: NullOrUndefined (String), fields :: NullOrUndefined (Fields), exprs :: NullOrUndefined (Exprs), highlights :: NullOrUndefined (Highlights) } -> { id :: NullOrUndefined (String), fields :: NullOrUndefined (Fields), exprs :: NullOrUndefined (Exprs), highlights :: NullOrUndefined (Highlights) }) -> Hit
```

Constructs Hit's fields from required parameters

#### `HitList`

``` purescript
newtype HitList
  = HitList (Array Hit)
```

##### Instances
``` purescript
Newtype HitList _
Generic HitList _
Show HitList
Decode HitList
Encode HitList
```

#### `Hits`

``` purescript
newtype Hits
  = Hits { found :: NullOrUndefined (Number), start :: NullOrUndefined (Number), cursor :: NullOrUndefined (String), hit :: NullOrUndefined (HitList) }
```

<p>The collection of documents that match the search request.</p>

##### Instances
``` purescript
Newtype Hits _
Generic Hits _
Show Hits
Decode Hits
Encode Hits
```

#### `newHits`

``` purescript
newHits :: Hits
```

Constructs Hits from required parameters

#### `newHits'`

``` purescript
newHits' :: ({ found :: NullOrUndefined (Number), start :: NullOrUndefined (Number), cursor :: NullOrUndefined (String), hit :: NullOrUndefined (HitList) } -> { found :: NullOrUndefined (Number), start :: NullOrUndefined (Number), cursor :: NullOrUndefined (String), hit :: NullOrUndefined (HitList) }) -> Hits
```

Constructs Hits's fields from required parameters

#### `Partial''`

``` purescript
newtype Partial''
  = Partial'' Boolean
```

##### Instances
``` purescript
Newtype Partial'' _
Generic Partial'' _
Show Partial''
Decode Partial''
Encode Partial''
```

#### `Query`

``` purescript
newtype Query
  = Query String
```

##### Instances
``` purescript
Newtype Query _
Generic Query _
Show Query
Decode Query
Encode Query
```

#### `QueryOptions`

``` purescript
newtype QueryOptions
  = QueryOptions String
```

##### Instances
``` purescript
Newtype QueryOptions _
Generic QueryOptions _
Show QueryOptions
Decode QueryOptions
Encode QueryOptions
```

#### `QueryParser`

``` purescript
newtype QueryParser
  = QueryParser String
```

##### Instances
``` purescript
Newtype QueryParser _
Generic QueryParser _
Show QueryParser
Decode QueryParser
Encode QueryParser
```

#### `Return`

``` purescript
newtype Return
  = Return String
```

##### Instances
``` purescript
Newtype Return _
Generic Return _
Show Return
Decode Return
Encode Return
```

#### `SearchException`

``` purescript
newtype SearchException
  = SearchException { message :: NullOrUndefined (String) }
```

<p>Information about any problems encountered while processing a search request.</p>

##### Instances
``` purescript
Newtype SearchException _
Generic SearchException _
Show SearchException
Decode SearchException
Encode SearchException
```

#### `newSearchException`

``` purescript
newSearchException :: SearchException
```

Constructs SearchException from required parameters

#### `newSearchException'`

``` purescript
newSearchException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> SearchException
```

Constructs SearchException's fields from required parameters

#### `SearchRequest`

``` purescript
newtype SearchRequest
  = SearchRequest { cursor :: NullOrUndefined (Cursor), expr :: NullOrUndefined (Expr), facet :: NullOrUndefined (Facet), filterQuery :: NullOrUndefined (FilterQuery), highlight :: NullOrUndefined (Highlight), partial :: NullOrUndefined (Partial''), query :: Query, queryOptions :: NullOrUndefined (QueryOptions), queryParser :: NullOrUndefined (QueryParser), return :: NullOrUndefined (Return), size :: NullOrUndefined (Size), sort :: NullOrUndefined (Sort), start :: NullOrUndefined (Start), stats :: NullOrUndefined (Stat) }
```

<p>Container for the parameters to the <code>Search</code> request.</p>

##### Instances
``` purescript
Newtype SearchRequest _
Generic SearchRequest _
Show SearchRequest
Decode SearchRequest
Encode SearchRequest
```

#### `newSearchRequest`

``` purescript
newSearchRequest :: Query -> SearchRequest
```

Constructs SearchRequest from required parameters

#### `newSearchRequest'`

``` purescript
newSearchRequest' :: Query -> ({ cursor :: NullOrUndefined (Cursor), expr :: NullOrUndefined (Expr), facet :: NullOrUndefined (Facet), filterQuery :: NullOrUndefined (FilterQuery), highlight :: NullOrUndefined (Highlight), partial :: NullOrUndefined (Partial''), query :: Query, queryOptions :: NullOrUndefined (QueryOptions), queryParser :: NullOrUndefined (QueryParser), return :: NullOrUndefined (Return), size :: NullOrUndefined (Size), sort :: NullOrUndefined (Sort), start :: NullOrUndefined (Start), stats :: NullOrUndefined (Stat) } -> { cursor :: NullOrUndefined (Cursor), expr :: NullOrUndefined (Expr), facet :: NullOrUndefined (Facet), filterQuery :: NullOrUndefined (FilterQuery), highlight :: NullOrUndefined (Highlight), partial :: NullOrUndefined (Partial''), query :: Query, queryOptions :: NullOrUndefined (QueryOptions), queryParser :: NullOrUndefined (QueryParser), return :: NullOrUndefined (Return), size :: NullOrUndefined (Size), sort :: NullOrUndefined (Sort), start :: NullOrUndefined (Start), stats :: NullOrUndefined (Stat) }) -> SearchRequest
```

Constructs SearchRequest's fields from required parameters

#### `SearchResponse`

``` purescript
newtype SearchResponse
  = SearchResponse { status :: NullOrUndefined (SearchStatus), hits :: NullOrUndefined (Hits), facets :: NullOrUndefined (Facets), stats :: NullOrUndefined (Stats) }
```

<p>The result of a <code>Search</code> request. Contains the documents that match the specified search criteria and any requested fields, highlights, and facet information.</p>

##### Instances
``` purescript
Newtype SearchResponse _
Generic SearchResponse _
Show SearchResponse
Decode SearchResponse
Encode SearchResponse
```

#### `newSearchResponse`

``` purescript
newSearchResponse :: SearchResponse
```

Constructs SearchResponse from required parameters

#### `newSearchResponse'`

``` purescript
newSearchResponse' :: ({ status :: NullOrUndefined (SearchStatus), hits :: NullOrUndefined (Hits), facets :: NullOrUndefined (Facets), stats :: NullOrUndefined (Stats) } -> { status :: NullOrUndefined (SearchStatus), hits :: NullOrUndefined (Hits), facets :: NullOrUndefined (Facets), stats :: NullOrUndefined (Stats) }) -> SearchResponse
```

Constructs SearchResponse's fields from required parameters

#### `SearchStatus`

``` purescript
newtype SearchStatus
  = SearchStatus { timems :: NullOrUndefined (Number), rid :: NullOrUndefined (String) }
```

<p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>

##### Instances
``` purescript
Newtype SearchStatus _
Generic SearchStatus _
Show SearchStatus
Decode SearchStatus
Encode SearchStatus
```

#### `newSearchStatus`

``` purescript
newSearchStatus :: SearchStatus
```

Constructs SearchStatus from required parameters

#### `newSearchStatus'`

``` purescript
newSearchStatus' :: ({ timems :: NullOrUndefined (Number), rid :: NullOrUndefined (String) } -> { timems :: NullOrUndefined (Number), rid :: NullOrUndefined (String) }) -> SearchStatus
```

Constructs SearchStatus's fields from required parameters

#### `Size`

``` purescript
newtype Size
  = Size Number
```

##### Instances
``` purescript
Newtype Size _
Generic Size _
Show Size
Decode Size
Encode Size
```

#### `Sort`

``` purescript
newtype Sort
  = Sort String
```

##### Instances
``` purescript
Newtype Sort _
Generic Sort _
Show Sort
Decode Sort
Encode Sort
```

#### `Start`

``` purescript
newtype Start
  = Start Number
```

##### Instances
``` purescript
Newtype Start _
Generic Start _
Show Start
Decode Start
Encode Start
```

#### `Stat`

``` purescript
newtype Stat
  = Stat String
```

##### Instances
``` purescript
Newtype Stat _
Generic Stat _
Show Stat
Decode Stat
Encode Stat
```

#### `Stats`

``` purescript
newtype Stats
  = Stats (StrMap FieldStats)
```

<p>The statistics calculated in the request.</p>

##### Instances
``` purescript
Newtype Stats _
Generic Stats _
Show Stats
Decode Stats
Encode Stats
```

#### `SuggestModel`

``` purescript
newtype SuggestModel
  = SuggestModel { query :: NullOrUndefined (String), found :: NullOrUndefined (Number), suggestions :: NullOrUndefined (Suggestions) }
```

<p>Container for the suggestion information returned in a <code>SuggestResponse</code>.</p>

##### Instances
``` purescript
Newtype SuggestModel _
Generic SuggestModel _
Show SuggestModel
Decode SuggestModel
Encode SuggestModel
```

#### `newSuggestModel`

``` purescript
newSuggestModel :: SuggestModel
```

Constructs SuggestModel from required parameters

#### `newSuggestModel'`

``` purescript
newSuggestModel' :: ({ query :: NullOrUndefined (String), found :: NullOrUndefined (Number), suggestions :: NullOrUndefined (Suggestions) } -> { query :: NullOrUndefined (String), found :: NullOrUndefined (Number), suggestions :: NullOrUndefined (Suggestions) }) -> SuggestModel
```

Constructs SuggestModel's fields from required parameters

#### `SuggestRequest`

``` purescript
newtype SuggestRequest
  = SuggestRequest { query :: Query, suggester :: Suggester, size :: NullOrUndefined (SuggestionsSize) }
```

<p>Container for the parameters to the <code>Suggest</code> request.</p>

##### Instances
``` purescript
Newtype SuggestRequest _
Generic SuggestRequest _
Show SuggestRequest
Decode SuggestRequest
Encode SuggestRequest
```

#### `newSuggestRequest`

``` purescript
newSuggestRequest :: Query -> Suggester -> SuggestRequest
```

Constructs SuggestRequest from required parameters

#### `newSuggestRequest'`

``` purescript
newSuggestRequest' :: Query -> Suggester -> ({ query :: Query, suggester :: Suggester, size :: NullOrUndefined (SuggestionsSize) } -> { query :: Query, suggester :: Suggester, size :: NullOrUndefined (SuggestionsSize) }) -> SuggestRequest
```

Constructs SuggestRequest's fields from required parameters

#### `SuggestResponse`

``` purescript
newtype SuggestResponse
  = SuggestResponse { status :: NullOrUndefined (SuggestStatus), suggest :: NullOrUndefined (SuggestModel) }
```

<p>Contains the response to a <code>Suggest</code> request.</p>

##### Instances
``` purescript
Newtype SuggestResponse _
Generic SuggestResponse _
Show SuggestResponse
Decode SuggestResponse
Encode SuggestResponse
```

#### `newSuggestResponse`

``` purescript
newSuggestResponse :: SuggestResponse
```

Constructs SuggestResponse from required parameters

#### `newSuggestResponse'`

``` purescript
newSuggestResponse' :: ({ status :: NullOrUndefined (SuggestStatus), suggest :: NullOrUndefined (SuggestModel) } -> { status :: NullOrUndefined (SuggestStatus), suggest :: NullOrUndefined (SuggestModel) }) -> SuggestResponse
```

Constructs SuggestResponse's fields from required parameters

#### `SuggestStatus`

``` purescript
newtype SuggestStatus
  = SuggestStatus { timems :: NullOrUndefined (Number), rid :: NullOrUndefined (String) }
```

<p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>

##### Instances
``` purescript
Newtype SuggestStatus _
Generic SuggestStatus _
Show SuggestStatus
Decode SuggestStatus
Encode SuggestStatus
```

#### `newSuggestStatus`

``` purescript
newSuggestStatus :: SuggestStatus
```

Constructs SuggestStatus from required parameters

#### `newSuggestStatus'`

``` purescript
newSuggestStatus' :: ({ timems :: NullOrUndefined (Number), rid :: NullOrUndefined (String) } -> { timems :: NullOrUndefined (Number), rid :: NullOrUndefined (String) }) -> SuggestStatus
```

Constructs SuggestStatus's fields from required parameters

#### `Suggester`

``` purescript
newtype Suggester
  = Suggester String
```

##### Instances
``` purescript
Newtype Suggester _
Generic Suggester _
Show Suggester
Decode Suggester
Encode Suggester
```

#### `SuggestionMatch`

``` purescript
newtype SuggestionMatch
  = SuggestionMatch { suggestion :: NullOrUndefined (String), score :: NullOrUndefined (Number), id :: NullOrUndefined (String) }
```

<p>An autocomplete suggestion that matches the query string specified in a <code>SuggestRequest</code>. </p>

##### Instances
``` purescript
Newtype SuggestionMatch _
Generic SuggestionMatch _
Show SuggestionMatch
Decode SuggestionMatch
Encode SuggestionMatch
```

#### `newSuggestionMatch`

``` purescript
newSuggestionMatch :: SuggestionMatch
```

Constructs SuggestionMatch from required parameters

#### `newSuggestionMatch'`

``` purescript
newSuggestionMatch' :: ({ suggestion :: NullOrUndefined (String), score :: NullOrUndefined (Number), id :: NullOrUndefined (String) } -> { suggestion :: NullOrUndefined (String), score :: NullOrUndefined (Number), id :: NullOrUndefined (String) }) -> SuggestionMatch
```

Constructs SuggestionMatch's fields from required parameters

#### `Suggestions`

``` purescript
newtype Suggestions
  = Suggestions (Array SuggestionMatch)
```

##### Instances
``` purescript
Newtype Suggestions _
Generic Suggestions _
Show Suggestions
Decode Suggestions
Encode Suggestions
```

#### `SuggestionsSize`

``` purescript
newtype SuggestionsSize
  = SuggestionsSize Number
```

##### Instances
``` purescript
Newtype SuggestionsSize _
Generic SuggestionsSize _
Show SuggestionsSize
Decode SuggestionsSize
Encode SuggestionsSize
```

#### `UploadDocumentsRequest`

``` purescript
newtype UploadDocumentsRequest
  = UploadDocumentsRequest { documents :: String, contentType :: ContentType }
```

<p>Container for the parameters to the <code>UploadDocuments</code> request.</p>

##### Instances
``` purescript
Newtype UploadDocumentsRequest _
Generic UploadDocumentsRequest _
Show UploadDocumentsRequest
Decode UploadDocumentsRequest
Encode UploadDocumentsRequest
```

#### `newUploadDocumentsRequest`

``` purescript
newUploadDocumentsRequest :: ContentType -> String -> UploadDocumentsRequest
```

Constructs UploadDocumentsRequest from required parameters

#### `newUploadDocumentsRequest'`

``` purescript
newUploadDocumentsRequest' :: ContentType -> String -> ({ documents :: String, contentType :: ContentType } -> { documents :: String, contentType :: ContentType }) -> UploadDocumentsRequest
```

Constructs UploadDocumentsRequest's fields from required parameters

#### `UploadDocumentsResponse`

``` purescript
newtype UploadDocumentsResponse
  = UploadDocumentsResponse { status :: NullOrUndefined (String), adds :: NullOrUndefined (Adds), deletes :: NullOrUndefined (Deletes), warnings :: NullOrUndefined (DocumentServiceWarnings) }
```

<p>Contains the response to an <code>UploadDocuments</code> request.</p>

##### Instances
``` purescript
Newtype UploadDocumentsResponse _
Generic UploadDocumentsResponse _
Show UploadDocumentsResponse
Decode UploadDocumentsResponse
Encode UploadDocumentsResponse
```

#### `newUploadDocumentsResponse`

``` purescript
newUploadDocumentsResponse :: UploadDocumentsResponse
```

Constructs UploadDocumentsResponse from required parameters

#### `newUploadDocumentsResponse'`

``` purescript
newUploadDocumentsResponse' :: ({ status :: NullOrUndefined (String), adds :: NullOrUndefined (Adds), deletes :: NullOrUndefined (Deletes), warnings :: NullOrUndefined (DocumentServiceWarnings) } -> { status :: NullOrUndefined (String), adds :: NullOrUndefined (Adds), deletes :: NullOrUndefined (Deletes), warnings :: NullOrUndefined (DocumentServiceWarnings) }) -> UploadDocumentsResponse
```

Constructs UploadDocumentsResponse's fields from required parameters


