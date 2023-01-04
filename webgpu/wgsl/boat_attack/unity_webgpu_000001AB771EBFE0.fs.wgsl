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
  x_Bloom_Texture_TexelSize : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

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
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_627 : f32;
  var x_639 : f32;
  var x_651 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_815 : f32;
  var x_827 : f32;
  var x_839 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_927 : f32;
  var x_939 : f32;
  var x_951 : f32;
  var x_1006 : f32;
  var x_1018 : f32;
  var x_1030 : f32;
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
  let x_436 : vec3<f32> = (vec3<f32>(x_430.z, x_430.x, x_430.y) * vec3<f32>(x_434.w, x_434.w, x_434.w));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat0;
  let x_446 : vec3<f32> = ((vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat0;
  let x_452 : vec3<f32> = max(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_453 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat0;
  let x_457 : vec3<f32> = log2(vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat0;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat0;
  let x_474 : vec3<f32> = clamp(vec3<f32>(x_470.x, x_470.y, x_470.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : vec4<f32> = u_xlat0;
  let x_481 : vec4<f32> = x_40.x_Lut_Params;
  u_xlat6 = (vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_481.z, x_481.z, x_481.z));
  let x_485 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_485);
  let x_489 : vec4<f32> = x_40.x_Lut_Params;
  let x_491 : vec2<f32> = (vec2<f32>(x_489.x, x_489.y) * vec2<f32>(0.5f, 0.5f));
  let x_492 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_491.x, x_491.y, x_492.z);
  let x_494 : vec3<f32> = u_xlat6;
  let x_497 : vec4<f32> = x_40.x_Lut_Params;
  let x_500 : vec3<f32> = u_xlat1;
  let x_502 : vec2<f32> = ((vec2<f32>(x_494.y, x_494.z) * vec2<f32>(x_497.x, x_497.y)) + vec2<f32>(x_500.x, x_500.y));
  let x_503 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_503.x, x_502.x, x_502.y);
  let x_506 : f32 = u_xlat6.x;
  let x_508 : f32 = x_40.x_Lut_Params.y;
  let x_511 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_506 * x_508) + x_511);
  let x_518 : vec3<f32> = u_xlat1;
  let x_520 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_518.x, x_518.z), 0.0f);
  let x_521 : vec3<f32> = vec3<f32>(x_520.x, x_520.y, x_520.z);
  let x_522 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : f32 = x_40.x_Lut_Params.y;
  u_xlat3.x = x_525;
  u_xlat3.y = 0.0f;
  let x_528 : vec3<f32> = u_xlat1;
  let x_530 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_528.x, x_528.z) + vec2<f32>(x_530.x, x_530.y));
  let x_536 : vec2<f32> = u_xlat12;
  let x_537 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_536, 0.0f);
  u_xlat1 = vec3<f32>(x_537.x, x_537.y, x_537.z);
  let x_540 : f32 = u_xlat0.x;
  let x_542 : f32 = x_40.x_Lut_Params.z;
  let x_545 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_540 * x_542) + -(x_545));
  let x_549 : vec4<f32> = u_xlat2;
  let x_552 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_549.x, x_549.y, x_549.z)) + x_552);
  let x_554 : vec4<f32> = u_xlat0;
  let x_556 : vec3<f32> = u_xlat6;
  let x_558 : vec4<f32> = u_xlat2;
  let x_560 : vec3<f32> = ((vec3<f32>(x_554.x, x_554.x, x_554.x) * x_556) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_565 : f32 = x_40.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_565);
  let x_567 : bool = u_xlatb18;
  if (x_567) {
    let x_570 : vec4<f32> = u_xlat0;
    let x_571 : vec3<f32> = vec3<f32>(x_570.x, x_570.y, x_570.z);
    let x_572 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
    let x_574 : vec4<f32> = u_xlat0;
    let x_578 : vec3<f32> = clamp(vec3<f32>(x_574.x, x_574.y, x_574.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_579 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
    let x_581 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_586 : vec4<f32> = u_xlat0;
    let x_588 : vec3<f32> = log2(vec3<f32>(x_586.x, x_586.y, x_586.z));
    let x_589 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_591 : vec4<f32> = u_xlat2;
    let x_595 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_596 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_598 : vec4<f32> = u_xlat2;
    let x_600 : vec3<f32> = exp2(vec3<f32>(x_598.x, x_598.y, x_598.z));
    let x_601 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
    let x_603 : vec4<f32> = u_xlat2;
    let x_610 : vec3<f32> = ((vec3<f32>(x_603.x, x_603.y, x_603.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_611 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
    let x_618 : vec4<f32> = u_xlat0;
    let x_621 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_618.x, x_618.y, x_618.z, x_618.x));
    u_xlatb3 = vec3<bool>(x_621.x, x_621.y, x_621.z);
    let x_624 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_624;
    let x_626 : bool = u_xlatb3.x;
    if (x_626) {
      let x_631 : f32 = u_xlat1.x;
      x_627 = x_631;
    } else {
      let x_634 : f32 = u_xlat2.x;
      x_627 = x_634;
    }
    let x_635 : f32 = x_627;
    hlslcc_movcTemp.x = x_635;
    let x_638 : bool = u_xlatb3.y;
    if (x_638) {
      let x_643 : f32 = u_xlat1.y;
      x_639 = x_643;
    } else {
      let x_646 : f32 = u_xlat2.y;
      x_639 = x_646;
    }
    let x_647 : f32 = x_639;
    hlslcc_movcTemp.y = x_647;
    let x_650 : bool = u_xlatb3.z;
    if (x_650) {
      let x_655 : f32 = u_xlat1.z;
      x_651 = x_655;
    } else {
      let x_658 : f32 = u_xlat2.z;
      x_651 = x_658;
    }
    let x_659 : f32 = x_651;
    hlslcc_movcTemp.z = x_659;
    let x_661 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_661;
    let x_662 : vec3<f32> = u_xlat1;
    let x_665 : vec4<f32> = x_40.x_UserLut_Params;
    let x_667 : vec3<f32> = (vec3<f32>(x_662.z, x_662.x, x_662.y) * vec3<f32>(x_665.z, x_665.z, x_665.z));
    let x_668 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
    let x_671 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_671);
    let x_674 : vec4<f32> = x_40.x_UserLut_Params;
    let x_676 : vec2<f32> = (vec2<f32>(x_674.x, x_674.y) * vec2<f32>(0.5f, 0.5f));
    let x_677 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_676.x, x_677.y, x_677.z, x_676.y);
    let x_679 : vec4<f32> = u_xlat2;
    let x_682 : vec4<f32> = x_40.x_UserLut_Params;
    let x_685 : vec4<f32> = u_xlat2;
    let x_687 : vec2<f32> = ((vec2<f32>(x_679.y, x_679.z) * vec2<f32>(x_682.x, x_682.y)) + vec2<f32>(x_685.x, x_685.w));
    let x_688 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_688.x, x_687.x, x_687.y, x_688.w);
    let x_690 : f32 = u_xlat18;
    let x_692 : f32 = x_40.x_UserLut_Params.y;
    let x_695 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_690 * x_692) + x_695);
    let x_702 : vec4<f32> = u_xlat2;
    let x_704 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_702.x, x_702.z), 0.0f);
    let x_705 : vec3<f32> = vec3<f32>(x_704.x, x_704.y, x_704.z);
    let x_706 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
    let x_709 : f32 = x_40.x_UserLut_Params.y;
    u_xlat4.x = x_709;
    u_xlat4.y = 0.0f;
    let x_712 : vec4<f32> = u_xlat2;
    let x_714 : vec4<f32> = u_xlat4;
    let x_716 : vec2<f32> = (vec2<f32>(x_712.x, x_712.z) + vec2<f32>(x_714.x, x_714.y));
    let x_717 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
    let x_722 : vec4<f32> = u_xlat2;
    let x_724 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_722.x, x_722.y), 0.0f);
    let x_725 : vec3<f32> = vec3<f32>(x_724.x, x_724.y, x_724.z);
    let x_726 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
    let x_729 : f32 = u_xlat1.z;
    let x_731 : f32 = x_40.x_UserLut_Params.z;
    let x_733 : f32 = u_xlat18;
    u_xlat18 = ((x_729 * x_731) + -(x_733));
    let x_736 : vec4<f32> = u_xlat3;
    let x_739 : vec4<f32> = u_xlat2;
    let x_741 : vec3<f32> = (-(vec3<f32>(x_736.x, x_736.y, x_736.z)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
    let x_742 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
    let x_744 : f32 = u_xlat18;
    let x_746 : vec4<f32> = u_xlat2;
    let x_749 : vec4<f32> = u_xlat3;
    let x_751 : vec3<f32> = ((vec3<f32>(x_744, x_744, x_744) * vec3<f32>(x_746.x, x_746.y, x_746.z)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
    let x_752 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
    let x_754 : vec3<f32> = u_xlat1;
    let x_756 : vec4<f32> = u_xlat2;
    let x_758 : vec3<f32> = (-(x_754) + vec3<f32>(x_756.x, x_756.y, x_756.z));
    let x_759 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
    let x_762 : vec4<f32> = x_40.x_UserLut_Params;
    let x_764 : vec4<f32> = u_xlat2;
    let x_767 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_762.w, x_762.w, x_762.w) * vec3<f32>(x_764.x, x_764.y, x_764.z)) + x_767);
    let x_769 : vec3<f32> = u_xlat1;
    let x_772 : vec3<f32> = (x_769 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_773 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
    let x_775 : vec3<f32> = u_xlat1;
    let x_778 : vec3<f32> = (x_775 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_779 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
    let x_781 : vec4<f32> = u_xlat3;
    let x_785 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_786 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
    let x_788 : vec4<f32> = u_xlat3;
    let x_791 : vec3<f32> = log2(abs(vec3<f32>(x_788.x, x_788.y, x_788.z)));
    let x_792 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
    let x_794 : vec4<f32> = u_xlat3;
    let x_798 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_799 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
    let x_801 : vec4<f32> = u_xlat3;
    let x_803 : vec3<f32> = exp2(vec3<f32>(x_801.x, x_801.y, x_801.z));
    let x_804 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
    let x_809 : vec3<f32> = u_xlat1;
    let x_811 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_809.x, x_809.y, x_809.z, x_809.x));
    u_xlatb1 = vec3<bool>(x_811.x, x_811.y, x_811.z);
    let x_814 : bool = u_xlatb1.x;
    if (x_814) {
      let x_819 : f32 = u_xlat2.x;
      x_815 = x_819;
    } else {
      let x_822 : f32 = u_xlat3.x;
      x_815 = x_822;
    }
    let x_823 : f32 = x_815;
    u_xlat0.x = x_823;
    let x_826 : bool = u_xlatb1.y;
    if (x_826) {
      let x_831 : f32 = u_xlat2.y;
      x_827 = x_831;
    } else {
      let x_834 : f32 = u_xlat3.y;
      x_827 = x_834;
    }
    let x_835 : f32 = x_827;
    u_xlat0.y = x_835;
    let x_838 : bool = u_xlatb1.z;
    if (x_838) {
      let x_843 : f32 = u_xlat2.z;
      x_839 = x_843;
    } else {
      let x_846 : f32 = u_xlat3.z;
      x_839 = x_846;
    }
    let x_847 : f32 = x_839;
    u_xlat0.z = x_847;
  }
  let x_849 : vec2<f32> = vs_TEXCOORD0;
  let x_852 : vec4<f32> = x_40.x_Dithering_Params;
  let x_856 : vec4<f32> = x_40.x_Dithering_Params;
  let x_858 : vec2<f32> = ((x_849 * vec2<f32>(x_852.x, x_852.y)) + vec2<f32>(x_856.z, x_856.w));
  let x_859 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_858.x, x_858.y, x_859.z);
  let x_866 : vec3<f32> = u_xlat1;
  let x_869 : f32 = x_40.x_GlobalMipBias.x;
  let x_870 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_866.x, x_866.y), x_869);
  u_xlat18 = x_870.w;
  let x_872 : f32 = u_xlat18;
  u_xlat18 = ((x_872 * 2.0f) + -1.0f);
  let x_875 : f32 = u_xlat18;
  u_xlatb1.x = (x_875 >= 0.0f);
  let x_879 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_879);
  let x_882 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_882)) + 1.0f);
  let x_886 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_886);
  let x_888 : f32 = u_xlat18;
  u_xlat18 = (-(x_888) + 1.0f);
  let x_891 : f32 = u_xlat18;
  let x_893 : f32 = u_xlat1.x;
  u_xlat18 = (x_891 * x_893);
  let x_895 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_898 : vec4<f32> = u_xlat0;
  let x_901 : vec3<f32> = log2(abs(vec3<f32>(x_898.x, x_898.y, x_898.z)));
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec4<f32> = u_xlat2;
  let x_906 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_907 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec4<f32> = u_xlat2;
  let x_911 : vec3<f32> = exp2(vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec4<f32> = u_xlat2;
  let x_917 : vec3<f32> = ((vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_918 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_921 : vec4<f32> = u_xlat0;
  let x_923 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_921.x, x_921.y, x_921.z, x_921.x));
  u_xlatb0 = vec3<bool>(x_923.x, x_923.y, x_923.z);
  let x_926 : bool = u_xlatb0.x;
  if (x_926) {
    let x_931 : f32 = u_xlat1.x;
    x_927 = x_931;
  } else {
    let x_934 : f32 = u_xlat2.x;
    x_927 = x_934;
  }
  let x_935 : f32 = x_927;
  u_xlat0.x = x_935;
  let x_938 : bool = u_xlatb0.y;
  if (x_938) {
    let x_943 : f32 = u_xlat1.y;
    x_939 = x_943;
  } else {
    let x_946 : f32 = u_xlat2.y;
    x_939 = x_946;
  }
  let x_947 : f32 = x_939;
  u_xlat0.y = x_947;
  let x_950 : bool = u_xlatb0.z;
  if (x_950) {
    let x_955 : f32 = u_xlat1.z;
    x_951 = x_955;
  } else {
    let x_958 : f32 = u_xlat2.z;
    x_951 = x_958;
  }
  let x_959 : f32 = x_951;
  u_xlat0.z = x_959;
  let x_961 : f32 = u_xlat18;
  let x_966 : vec4<f32> = u_xlat0;
  let x_968 : vec3<f32> = ((vec3<f32>(x_961, x_961, x_961) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_971.x, x_971.y, x_971.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_974 : vec4<f32> = u_xlat0;
  let x_976 : vec3<f32> = (vec3<f32>(x_974.x, x_974.y, x_974.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat2;
  let x_981 : vec3<f32> = (vec3<f32>(x_979.x, x_979.y, x_979.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_982 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec4<f32> = u_xlat2;
  let x_987 : vec3<f32> = log2(abs(vec3<f32>(x_984.x, x_984.y, x_984.z)));
  let x_988 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec4<f32> = u_xlat2;
  let x_992 : vec3<f32> = (vec3<f32>(x_990.x, x_990.y, x_990.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_993 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : vec4<f32> = u_xlat2;
  let x_997 : vec3<f32> = exp2(vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec4<f32> = u_xlat0;
  let x_1002 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1000.x));
  u_xlatb0 = vec3<bool>(x_1002.x, x_1002.y, x_1002.z);
  let x_1005 : bool = u_xlatb0.x;
  if (x_1005) {
    let x_1010 : f32 = u_xlat1.x;
    x_1006 = x_1010;
  } else {
    let x_1013 : f32 = u_xlat2.x;
    x_1006 = x_1013;
  }
  let x_1014 : f32 = x_1006;
  u_xlat0.x = x_1014;
  let x_1017 : bool = u_xlatb0.y;
  if (x_1017) {
    let x_1022 : f32 = u_xlat1.y;
    x_1018 = x_1022;
  } else {
    let x_1025 : f32 = u_xlat2.y;
    x_1018 = x_1025;
  }
  let x_1026 : f32 = x_1018;
  u_xlat0.y = x_1026;
  let x_1029 : bool = u_xlatb0.z;
  if (x_1029) {
    let x_1034 : f32 = u_xlat1.z;
    x_1030 = x_1034;
  } else {
    let x_1037 : f32 = u_xlat2.z;
    x_1030 = x_1037;
  }
  let x_1038 : f32 = x_1030;
  u_xlat0.z = x_1038;
  let x_1042 : vec4<f32> = u_xlat0;
  let x_1044 : vec3<f32> = max(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1045 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
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

