struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  x_Chroma_Params : f32,
  @size(8)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb19 : bool;
  var u_xlatb18 : bool;
  var u_xlat18 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_499 : f32;
  var x_511 : f32;
  var x_523 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_687 : f32;
  var x_699 : f32;
  var x_711 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_24 : vec4<f32> = u_xlat0;
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_24.z, x_24.w), vec2<f32>(x_26.z, x_26.w));
  let x_33 : vec4<f32> = u_xlat0;
  let x_34 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_33 * vec4<f32>(x_34.x, x_34.x, x_34.x, x_34.x));
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : f32 = x_40.x_Chroma_Params;
  u_xlat0 = (x_37 * vec4<f32>(x_45, x_45, x_45, x_45));
  let x_58 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_40.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_58, x_61);
  u_xlat1.x = x_62.x;
  let x_65 : vec4<f32> = u_xlat0;
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_65 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.y));
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : f32 = x_40.x_GlobalMipBias.x;
  let x_80 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_76.x, x_76.y), x_79);
  u_xlat1.y = x_80.y;
  let x_87 : vec4<f32> = u_xlat0;
  let x_90 : f32 = x_40.x_GlobalMipBias.x;
  let x_91 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_87.z, x_87.w), x_90);
  u_xlat1.z = x_91.z;
  let x_95 : vec2<f32> = vs_TEXCOORD0;
  let x_99 : vec4<f32> = x_40.x_Bloom_Texture_TexelSize;
  let x_104 : vec2<f32> = ((x_95 * vec2<f32>(x_99.z, x_99.w)) + vec2<f32>(0.5f, 0.5f));
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat12 = floor(vec2<f32>(x_109.x, x_109.y));
  let x_112 : vec4<f32> = u_xlat0;
  let x_114 : vec2<f32> = fract(vec2<f32>(x_112.x, x_112.y));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_115.w);
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat2 = ((-(vec4<f32>(x_118.x, x_118.y, x_118.x, x_118.y)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_126.x, x_126.y, x_126.x, x_126.y) * x_128) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_134 : vec4<f32> = u_xlat0;
  let x_138 : vec2<f32> = ((vec2<f32>(x_134.x, x_134.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_142 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = u_xlat0;
  u_xlat15 = (vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_144.x, x_144.y));
  let x_147 : vec2<f32> = u_xlat15;
  let x_148 : vec4<f32> = u_xlat3;
  let x_153 : vec2<f32> = ((x_147 * vec2<f32>(x_148.x, x_148.y)) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_154 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_153.x, x_153.y, x_154.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_156.x, x_156.y, x_156.x, x_156.y) * x_158) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
  let x_162 : vec4<f32> = u_xlat3;
  let x_167 : vec2<f32> = (-(vec2<f32>(x_162.x, x_162.y)) + vec2<f32>(1.0f, 1.0f));
  let x_168 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = u_xlat0;
  let x_175 : vec2<f32> = (-(vec2<f32>(x_170.x, x_170.y)) + vec2<f32>(x_173.x, x_173.y));
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
  let x_178 : vec4<f32> = u_xlat2;
  let x_181 : vec4<f32> = u_xlat0;
  let x_183 : vec2<f32> = (-(vec2<f32>(x_178.z, x_178.w)) + vec2<f32>(x_181.x, x_181.y));
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_183.x, x_183.y, x_184.z, x_184.w);
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec2<f32>(x_187.x, x_187.y) + vec2<f32>(x_189.z, x_189.w));
  let x_192 : vec4<f32> = u_xlat0;
  let x_194 : vec4<f32> = u_xlat2;
  let x_196 : vec2<f32> = (vec2<f32>(x_192.x, x_192.y) + vec2<f32>(x_194.x, x_194.y));
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_196.x, x_196.y, x_197.z, x_197.w);
  let x_199 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_199.x, x_199.y));
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec2<f32> = u_xlat15;
  let x_208 : vec2<f32> = ((vec2<f32>(x_204.x, x_204.y) * x_206) + vec2<f32>(-1.0f, -1.0f));
  let x_209 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_208.x, x_208.y);
  let x_212 : vec4<f32> = u_xlat2;
  let x_213 : vec2<f32> = vec2<f32>(x_212.x, x_212.y);
  let x_217 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_213.x, x_213.y));
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : vec4<f32> = u_xlat4;
  let x_225 : vec2<f32> = ((vec2<f32>(x_220.x, x_220.y) * vec2<f32>(x_222.x, x_222.y)) + vec2<f32>(1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_225.x, x_225.y, x_226.z, x_226.w);
  let x_228 : vec2<f32> = u_xlat12;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_228.x, x_228.y, x_228.x, x_228.y) + vec4<f32>(x_230.z, x_230.w, x_230.x, x_230.w));
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_233 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_236 : vec4<f32> = u_xlat4;
  let x_238 : vec4<f32> = x_40.x_Bloom_Texture_TexelSize;
  u_xlat4 = (x_236 * vec4<f32>(x_238.x, x_238.y, x_238.x, x_238.y));
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = min(x_241, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_249 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_249.x, x_249.y), 0.0f);
  u_xlat5 = x_252;
  let x_256 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_256.z, x_256.w), 0.0f);
  u_xlat4 = x_258;
  let x_259 : vec4<f32> = u_xlat2;
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_259.x, x_259.x, x_259.x, x_259.x) * x_261);
  let x_263 : vec2<f32> = u_xlat14;
  let x_265 : vec4<f32> = u_xlat5;
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_263.x, x_263.x, x_263.x, x_263.x) * x_265) + x_267);
  let x_269 : vec2<f32> = u_xlat12;
  let x_271 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec4<f32>(x_269.x, x_269.y, x_269.x, x_269.y) + vec4<f32>(x_271.z, x_271.y, x_271.x, x_271.y));
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_274 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_276 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = x_40.x_Bloom_Texture_TexelSize;
  u_xlat0 = (x_276 * vec4<f32>(x_278.x, x_278.y, x_278.x, x_278.y));
  let x_281 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_281, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_286 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_286.x, x_286.y), 0.0f);
  u_xlat3 = x_288;
  let x_292 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_292.z, x_292.w), 0.0f);
  u_xlat0 = x_294;
  let x_295 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_295 * vec4<f32>(x_296.x, x_296.x, x_296.x, x_296.x));
  let x_299 : vec2<f32> = u_xlat14;
  let x_301 : vec4<f32> = u_xlat3;
  let x_303 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_299.x, x_299.x, x_299.x, x_299.x) * x_301) + x_303);
  let x_305 : vec4<f32> = u_xlat0;
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_305 * vec4<f32>(x_306.y, x_306.y, x_306.y, x_306.y));
  let x_309 : vec2<f32> = u_xlat14;
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_309.y, x_309.y, x_309.y, x_309.y) * x_311) + x_313);
  let x_320 : f32 = x_40.x_Bloom_RGBM;
  u_xlatb19 = (0.0f < x_320);
  let x_322 : bool = u_xlatb19;
  if (x_322) {
    let x_325 : vec4<f32> = u_xlat0;
    let x_327 : vec4<f32> = u_xlat0;
    let x_329 : vec3<f32> = (vec3<f32>(x_325.w, x_325.w, x_325.w) * vec3<f32>(x_327.x, x_327.y, x_327.z));
    let x_330 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_332 : vec4<f32> = u_xlat2;
    let x_336 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_337 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  }
  let x_339 : vec4<f32> = u_xlat0;
  let x_343 : vec4<f32> = x_40.x_Bloom_Params;
  let x_345 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_343.x, x_343.x, x_343.x));
  let x_346 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat0;
  let x_351 : vec4<f32> = x_40.x_Bloom_Params;
  let x_354 : vec3<f32> = u_xlat1;
  let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_351.y, x_351.z, x_351.w)) + x_354);
  let x_356 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_361 : f32 = x_40.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_361);
  let x_363 : bool = u_xlatb18;
  if (x_363) {
    let x_366 : vec2<f32> = vs_TEXCOORD0;
    let x_368 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_371 : vec2<f32> = (x_366 + -(vec2<f32>(x_368.x, x_368.y)));
    let x_372 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_371.x, x_371.y, x_372.z);
    let x_374 : vec3<f32> = u_xlat1;
    let x_378 : vec4<f32> = x_40.x_Vignette_Params2;
    let x_380 : vec2<f32> = (abs(vec2<f32>(x_374.x, x_374.y)) * vec2<f32>(x_378.z, x_378.z));
    let x_381 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_381.x, x_380.x, x_380.y);
    let x_384 : f32 = u_xlat1.y;
    let x_388 : f32 = x_40.x_Vignette_Params1.w;
    u_xlat1.x = (x_384 * x_388);
    let x_392 : vec3<f32> = u_xlat1;
    let x_394 : vec3<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_392.x, x_392.z), vec2<f32>(x_394.x, x_394.z));
    let x_397 : f32 = u_xlat18;
    u_xlat18 = (-(x_397) + 1.0f);
    let x_400 : f32 = u_xlat18;
    u_xlat18 = max(x_400, 0.0f);
    let x_402 : f32 = u_xlat18;
    u_xlat18 = log2(x_402);
    let x_404 : f32 = u_xlat18;
    let x_406 : f32 = x_40.x_Vignette_Params2.w;
    u_xlat18 = (x_404 * x_406);
    let x_408 : f32 = u_xlat18;
    u_xlat18 = exp2(x_408);
    let x_411 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_411.x, x_411.y, x_411.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_416 : f32 = u_xlat18;
    let x_418 : vec3<f32> = u_xlat1;
    let x_421 : vec4<f32> = x_40.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_416, x_416, x_416) * x_418) + vec3<f32>(x_421.x, x_421.y, x_421.z));
    let x_424 : vec4<f32> = u_xlat0;
    let x_426 : vec3<f32> = u_xlat1;
    let x_427 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) * x_426);
    let x_428 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  }
  let x_430 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = x_40.x_Lut_Params;
  let x_436 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) * vec3<f32>(x_434.w, x_434.w, x_434.w));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = clamp(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_448 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_448);
  let x_450 : bool = u_xlatb18;
  if (x_450) {
    let x_453 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_458 : vec4<f32> = u_xlat0;
    let x_460 : vec3<f32> = log2(vec3<f32>(x_458.x, x_458.y, x_458.z));
    let x_461 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
    let x_463 : vec4<f32> = u_xlat2;
    let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_468 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
    let x_470 : vec4<f32> = u_xlat2;
    let x_472 : vec3<f32> = exp2(vec3<f32>(x_470.x, x_470.y, x_470.z));
    let x_473 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
    let x_475 : vec4<f32> = u_xlat2;
    let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_483 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
    let x_490 : vec4<f32> = u_xlat0;
    let x_493 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_490.x, x_490.y, x_490.z, x_490.x));
    u_xlatb3 = vec3<bool>(x_493.x, x_493.y, x_493.z);
    let x_496 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_496;
    let x_498 : bool = u_xlatb3.x;
    if (x_498) {
      let x_503 : f32 = u_xlat1.x;
      x_499 = x_503;
    } else {
      let x_506 : f32 = u_xlat2.x;
      x_499 = x_506;
    }
    let x_507 : f32 = x_499;
    hlslcc_movcTemp.x = x_507;
    let x_510 : bool = u_xlatb3.y;
    if (x_510) {
      let x_515 : f32 = u_xlat1.y;
      x_511 = x_515;
    } else {
      let x_518 : f32 = u_xlat2.y;
      x_511 = x_518;
    }
    let x_519 : f32 = x_511;
    hlslcc_movcTemp.y = x_519;
    let x_522 : bool = u_xlatb3.z;
    if (x_522) {
      let x_527 : f32 = u_xlat1.z;
      x_523 = x_527;
    } else {
      let x_530 : f32 = u_xlat2.z;
      x_523 = x_530;
    }
    let x_531 : f32 = x_523;
    hlslcc_movcTemp.z = x_531;
    let x_533 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_533;
    let x_534 : vec3<f32> = u_xlat1;
    let x_537 : vec4<f32> = x_40.x_UserLut_Params;
    let x_539 : vec3<f32> = (vec3<f32>(x_534.z, x_534.x, x_534.y) * vec3<f32>(x_537.z, x_537.z, x_537.z));
    let x_540 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
    let x_543 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_543);
    let x_546 : vec4<f32> = x_40.x_UserLut_Params;
    let x_548 : vec2<f32> = (vec2<f32>(x_546.x, x_546.y) * vec2<f32>(0.5f, 0.5f));
    let x_549 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_548.x, x_549.y, x_549.z, x_548.y);
    let x_551 : vec4<f32> = u_xlat2;
    let x_554 : vec4<f32> = x_40.x_UserLut_Params;
    let x_557 : vec4<f32> = u_xlat2;
    let x_559 : vec2<f32> = ((vec2<f32>(x_551.y, x_551.z) * vec2<f32>(x_554.x, x_554.y)) + vec2<f32>(x_557.x, x_557.w));
    let x_560 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_560.x, x_559.x, x_559.y, x_560.w);
    let x_562 : f32 = u_xlat18;
    let x_564 : f32 = x_40.x_UserLut_Params.y;
    let x_567 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_562 * x_564) + x_567);
    let x_574 : vec4<f32> = u_xlat2;
    let x_576 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_574.x, x_574.z), 0.0f);
    let x_577 : vec3<f32> = vec3<f32>(x_576.x, x_576.y, x_576.z);
    let x_578 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
    let x_581 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_581;
    u_xlat4.y = 0.0f;
    let x_584 : vec4<f32> = u_xlat2;
    let x_586 : vec4<f32> = u_xlat4;
    let x_588 : vec2<f32> = (vec2<f32>(x_584.x, x_584.z) + vec2<f32>(x_586.x, x_586.y));
    let x_589 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
    let x_594 : vec4<f32> = u_xlat2;
    let x_596 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_594.x, x_594.y), 0.0f);
    let x_597 : vec3<f32> = vec3<f32>(x_596.x, x_596.y, x_596.z);
    let x_598 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
    let x_601 : f32 = u_xlat1.z;
    let x_603 : f32 = x_40.x_UserLut_Params.z;
    let x_605 : f32 = u_xlat18;
    u_xlat18 = ((x_601 * x_603) + -(x_605));
    let x_608 : vec4<f32> = u_xlat3;
    let x_611 : vec4<f32> = u_xlat2;
    let x_613 : vec3<f32> = (-(vec3<f32>(x_608.x, x_608.y, x_608.z)) + vec3<f32>(x_611.x, x_611.y, x_611.z));
    let x_614 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
    let x_616 : f32 = u_xlat18;
    let x_618 : vec4<f32> = u_xlat2;
    let x_621 : vec4<f32> = u_xlat3;
    let x_623 : vec3<f32> = ((vec3<f32>(x_616, x_616, x_616) * vec3<f32>(x_618.x, x_618.y, x_618.z)) + vec3<f32>(x_621.x, x_621.y, x_621.z));
    let x_624 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
    let x_626 : vec3<f32> = u_xlat1;
    let x_628 : vec4<f32> = u_xlat2;
    let x_630 : vec3<f32> = (-(x_626) + vec3<f32>(x_628.x, x_628.y, x_628.z));
    let x_631 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
    let x_634 : vec4<f32> = x_40.x_UserLut_Params;
    let x_636 : vec4<f32> = u_xlat2;
    let x_639 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_634.w, x_634.w, x_634.w) * vec3<f32>(x_636.x, x_636.y, x_636.z)) + x_639);
    let x_641 : vec3<f32> = u_xlat1;
    let x_644 : vec3<f32> = (x_641 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_645 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
    let x_647 : vec3<f32> = u_xlat1;
    let x_650 : vec3<f32> = (x_647 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_651 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
    let x_653 : vec4<f32> = u_xlat3;
    let x_657 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_658 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
    let x_660 : vec4<f32> = u_xlat3;
    let x_663 : vec3<f32> = log2(abs(vec3<f32>(x_660.x, x_660.y, x_660.z)));
    let x_664 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
    let x_666 : vec4<f32> = u_xlat3;
    let x_670 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_671 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
    let x_673 : vec4<f32> = u_xlat3;
    let x_675 : vec3<f32> = exp2(vec3<f32>(x_673.x, x_673.y, x_673.z));
    let x_676 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_681 : vec3<f32> = u_xlat1;
    let x_683 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_681.x, x_681.y, x_681.z, x_681.x));
    u_xlatb1 = vec3<bool>(x_683.x, x_683.y, x_683.z);
    let x_686 : bool = u_xlatb1.x;
    if (x_686) {
      let x_691 : f32 = u_xlat2.x;
      x_687 = x_691;
    } else {
      let x_694 : f32 = u_xlat3.x;
      x_687 = x_694;
    }
    let x_695 : f32 = x_687;
    u_xlat0.x = x_695;
    let x_698 : bool = u_xlatb1.y;
    if (x_698) {
      let x_703 : f32 = u_xlat2.y;
      x_699 = x_703;
    } else {
      let x_706 : f32 = u_xlat3.y;
      x_699 = x_706;
    }
    let x_707 : f32 = x_699;
    u_xlat0.y = x_707;
    let x_710 : bool = u_xlatb1.z;
    if (x_710) {
      let x_715 : f32 = u_xlat2.z;
      x_711 = x_715;
    } else {
      let x_718 : f32 = u_xlat3.z;
      x_711 = x_718;
    }
    let x_719 : f32 = x_711;
    u_xlat0.z = x_719;
  }
  let x_721 : vec4<f32> = u_xlat0;
  let x_724 : vec4<f32> = x_40.x_Lut_Params;
  let x_726 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_724.z, x_724.z, x_724.z));
  let x_727 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_726.z);
  let x_730 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_730);
  let x_733 : vec4<f32> = x_40.x_Lut_Params;
  let x_735 : vec2<f32> = (vec2<f32>(x_733.x, x_733.y) * vec2<f32>(0.5f, 0.5f));
  let x_736 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_735.x, x_735.y, x_736.z);
  let x_738 : vec4<f32> = u_xlat0;
  let x_741 : vec4<f32> = x_40.x_Lut_Params;
  let x_744 : vec3<f32> = u_xlat1;
  let x_746 : vec2<f32> = ((vec2<f32>(x_738.x, x_738.y) * vec2<f32>(x_741.x, x_741.y)) + vec2<f32>(x_744.x, x_744.y));
  let x_747 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_747.x, x_746.x, x_746.y);
  let x_749 : f32 = u_xlat18;
  let x_751 : f32 = x_40.x_Lut_Params.y;
  let x_754 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_749 * x_751) + x_754);
  let x_761 : vec3<f32> = u_xlat1;
  let x_763 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_761.x, x_761.z), 0.0f);
  let x_764 : vec3<f32> = vec3<f32>(x_763.x, x_763.y, x_763.z);
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_768 : f32 = x_40.x_Lut_Params.y;
  u_xlat0.x = x_768;
  u_xlat0.y = 0.0f;
  let x_771 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = u_xlat1;
  let x_775 : vec2<f32> = (vec2<f32>(x_771.x, x_771.y) + vec2<f32>(x_773.x, x_773.z));
  let x_776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_775.x, x_775.y, x_776.z, x_776.w);
  let x_781 : vec4<f32> = u_xlat0;
  let x_783 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_781.x, x_781.y), 0.0f);
  u_xlat1 = vec3<f32>(x_783.x, x_783.y, x_783.z);
  let x_786 : f32 = u_xlat0.z;
  let x_788 : f32 = x_40.x_Lut_Params.z;
  let x_790 : f32 = u_xlat18;
  u_xlat0.x = ((x_786 * x_788) + -(x_790));
  let x_795 : vec4<f32> = u_xlat2;
  let x_798 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_795.x, x_795.y, x_795.z)) + x_798);
  let x_800 : vec4<f32> = u_xlat0;
  let x_802 : vec3<f32> = u_xlat6;
  let x_804 : vec4<f32> = u_xlat2;
  let x_806 : vec3<f32> = ((vec3<f32>(x_800.x, x_800.x, x_800.x) * x_802) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec2<f32> = vs_TEXCOORD0;
  let x_812 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_816 : vec4<f32> = x_40.x_Grain_TilingParams;
  let x_818 : vec2<f32> = ((x_809 * vec2<f32>(x_812.x, x_812.y)) + vec2<f32>(x_816.z, x_816.w));
  let x_819 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_818.x, x_818.y, x_819.z);
  let x_826 : vec3<f32> = u_xlat1;
  let x_829 : f32 = x_40.x_GlobalMipBias.x;
  let x_830 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_826.x, x_826.y), x_829);
  u_xlat18 = x_830.w;
  let x_832 : f32 = u_xlat18;
  u_xlat18 = (x_832 + -0.5f);
  let x_834 : f32 = u_xlat18;
  let x_835 : f32 = u_xlat18;
  u_xlat18 = (x_834 + x_835);
  let x_837 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_837.x, x_837.y, x_837.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_846 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_846);
  let x_851 : f32 = x_40.x_Grain_Params.y;
  let x_853 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_851 * -(x_853)) + 1.0f);
  let x_859 : f32 = u_xlat18;
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_859, x_859, x_859) * vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec3<f32> = u_xlat7;
  let x_867 : vec2<f32> = x_40.x_Grain_Params;
  u_xlat7 = (x_864 * vec3<f32>(x_867.x, x_867.x, x_867.x));
  let x_872 : vec3<f32> = u_xlat7;
  let x_873 : vec3<f32> = u_xlat1;
  let x_876 : vec4<f32> = u_xlat0;
  let x_878 : vec3<f32> = ((x_872 * vec3<f32>(x_873.x, x_873.x, x_873.x)) + vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_879 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

