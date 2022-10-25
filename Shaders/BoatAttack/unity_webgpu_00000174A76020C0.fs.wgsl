struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_LensDirt_Params : vec4<f32>,
  x_LensDirt_Intensity : f32,
  @size(12)
  padding_2 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_388 : f32;
  var x_400 : f32;
  var x_412 : f32;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_564 : f32;
  var x_576 : f32;
  var x_588 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_679 : f32;
  var x_691 : f32;
  var x_703 : f32;
  var x_755 : f32;
  var x_767 : f32;
  var x_779 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  let x_45 : f32 = x_27.x_GlobalMipBias.x;
  let x_46 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_43, x_45);
  u_xlat1 = x_46;
  let x_53 : f32 = x_27.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_53);
  let x_55 : bool = u_xlatb15;
  if (x_55) {
    let x_59 : vec4<f32> = u_xlat1;
    let x_61 : vec4<f32> = u_xlat1;
    let x_63 : vec3<f32> = (vec3<f32>(x_59.w, x_59.w, x_59.w) * vec3<f32>(x_61.x, x_61.y, x_61.z));
    let x_64 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
    let x_66 : vec4<f32> = u_xlat2;
    let x_70 : vec3<f32> = (vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_71 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  }
  let x_73 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = x_27.x_Bloom_Params;
  let x_80 : vec3<f32> = (vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.x, x_78.x));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = x_27.x_Bloom_Params;
  let x_89 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(x_86.y, x_86.z, x_86.w)) + x_89);
  let x_91 : vec2<f32> = vs_TEXCOORD0;
  let x_94 : vec4<f32> = x_27.x_LensDirt_Params;
  let x_98 : vec4<f32> = x_27.x_LensDirt_Params;
  let x_100 : vec2<f32> = ((x_91 * vec2<f32>(x_94.x, x_94.y)) + vec2<f32>(x_98.z, x_98.w));
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_107 : vec4<f32> = u_xlat2;
  let x_110 : f32 = x_27.x_GlobalMipBias.x;
  let x_111 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_107.x, x_107.y), x_110);
  let x_112 : vec3<f32> = vec3<f32>(x_111.x, x_111.y, x_111.z);
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_115 : vec4<f32> = u_xlat2;
  let x_119 : f32 = x_27.x_LensDirt_Intensity;
  let x_121 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.z) * vec3<f32>(x_119, x_119, x_119));
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_124.x, x_124.y, x_124.z) * vec3<f32>(x_126.x, x_126.y, x_126.z)) + x_129);
  let x_134 : f32 = x_27.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_134);
  let x_136 : bool = u_xlatb15;
  if (x_136) {
    let x_139 : vec2<f32> = vs_TEXCOORD0;
    let x_141 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_144 : vec2<f32> = (x_139 + -(vec2<f32>(x_141.x, x_141.y)));
    let x_145 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_144.x, x_144.y, x_145.z, x_145.w);
    let x_147 : vec4<f32> = u_xlat1;
    let x_151 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_153 : vec2<f32> = (abs(vec2<f32>(x_147.x, x_147.y)) * vec2<f32>(x_151.z, x_151.z));
    let x_154 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_154.x, x_153.x, x_153.y, x_154.w);
    let x_159 : f32 = u_xlat1.y;
    let x_163 : f32 = x_27.x_Vignette_Params1.w;
    u_xlat1.x = (x_159 * x_163);
    let x_167 : vec4<f32> = u_xlat1;
    let x_169 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_167.x, x_167.z), vec2<f32>(x_169.x, x_169.z));
    let x_172 : f32 = u_xlat15;
    u_xlat15 = (-(x_172) + 1.0f);
    let x_176 : f32 = u_xlat15;
    u_xlat15 = max(x_176, 0.0f);
    let x_178 : f32 = u_xlat15;
    u_xlat15 = log2(x_178);
    let x_180 : f32 = u_xlat15;
    let x_182 : f32 = x_27.x_Vignette_Params2.w;
    u_xlat15 = (x_180 * x_182);
    let x_184 : f32 = u_xlat15;
    u_xlat15 = exp2(x_184);
    let x_187 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_191 : vec3<f32> = (-(vec3<f32>(x_187.x, x_187.y, x_187.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_192 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_194 : f32 = u_xlat15;
    let x_196 : vec4<f32> = u_xlat1;
    let x_200 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_202 : vec3<f32> = ((vec3<f32>(x_194, x_194, x_194) * vec3<f32>(x_196.x, x_196.y, x_196.z)) + vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_205 : vec3<f32> = u_xlat0;
    let x_206 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_205 * vec3<f32>(x_206.x, x_206.y, x_206.z));
  }
  let x_209 : vec3<f32> = u_xlat0;
  let x_213 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_209.z, x_209.x, x_209.y) * vec3<f32>(x_213.w, x_213.w, x_213.w));
  let x_216 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_216 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_223 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_223, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_226 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_226);
  let x_228 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_228 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_235 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_235, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_240 : vec3<f32> = u_xlat0;
  let x_242 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat5 = (x_240 * vec3<f32>(x_242.z, x_242.z, x_242.z));
  let x_246 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_246);
  let x_250 : vec4<f32> = x_27.x_Lut_Params;
  let x_254 : vec2<f32> = (vec2<f32>(x_250.x, x_250.y) * vec2<f32>(0.5f, 0.5f));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_255.z, x_255.w);
  let x_257 : vec3<f32> = u_xlat5;
  let x_260 : vec4<f32> = x_27.x_Lut_Params;
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec2<f32> = ((vec2<f32>(x_257.y, x_257.z) * vec2<f32>(x_260.x, x_260.y)) + vec2<f32>(x_263.x, x_263.y));
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_266.x, x_265.x, x_265.y, x_266.w);
  let x_269 : f32 = u_xlat5.x;
  let x_271 : f32 = x_27.x_Lut_Params.y;
  let x_274 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_269 * x_271) + x_274);
  let x_281 : vec4<f32> = u_xlat1;
  let x_283 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_281.x, x_281.z), 0.0f);
  let x_284 : vec3<f32> = vec3<f32>(x_283.x, x_283.y, x_283.z);
  let x_285 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_289 : f32 = x_27.x_Lut_Params.y;
  u_xlat3.x = x_289;
  u_xlat3.y = 0.0f;
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_294.x, x_294.z) + vec2<f32>(x_296.x, x_296.y));
  let x_302 : vec2<f32> = u_xlat10;
  let x_303 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_302, 0.0f);
  let x_304 : vec3<f32> = vec3<f32>(x_303.x, x_303.y, x_303.z);
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_308 : f32 = u_xlat0.x;
  let x_310 : f32 = x_27.x_Lut_Params.z;
  let x_313 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_308 * x_310) + -(x_313));
  let x_317 : vec4<f32> = u_xlat2;
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_317.x, x_317.y, x_317.z)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec3<f32> = u_xlat0;
  let x_325 : vec3<f32> = u_xlat5;
  let x_327 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_323.x, x_323.x, x_323.x) * x_325) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_332 : f32 = x_27.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_332);
  let x_334 : bool = u_xlatb15;
  if (x_334) {
    let x_337 : vec3<f32> = u_xlat0;
    u_xlat0 = x_337;
    let x_338 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_338, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_342 : vec3<f32> = u_xlat0;
    let x_345 : vec3<f32> = (x_342 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_346 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
    let x_348 : vec3<f32> = u_xlat0;
    let x_349 : vec3<f32> = log2(x_348);
    let x_350 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
    let x_352 : vec4<f32> = u_xlat2;
    let x_356 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_357 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
    let x_359 : vec4<f32> = u_xlat2;
    let x_361 : vec3<f32> = exp2(vec3<f32>(x_359.x, x_359.y, x_359.z));
    let x_362 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
    let x_364 : vec4<f32> = u_xlat2;
    let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_372 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_379 : vec3<f32> = u_xlat0;
    let x_382 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_379.x, x_379.y, x_379.z, x_379.x));
    u_xlatb3 = vec3<bool>(x_382.x, x_382.y, x_382.z);
    let x_385 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_385;
    let x_387 : bool = u_xlatb3.x;
    if (x_387) {
      let x_392 : f32 = u_xlat1.x;
      x_388 = x_392;
    } else {
      let x_395 : f32 = u_xlat2.x;
      x_388 = x_395;
    }
    let x_396 : f32 = x_388;
    hlslcc_movcTemp.x = x_396;
    let x_399 : bool = u_xlatb3.y;
    if (x_399) {
      let x_404 : f32 = u_xlat1.y;
      x_400 = x_404;
    } else {
      let x_407 : f32 = u_xlat2.y;
      x_400 = x_407;
    }
    let x_408 : f32 = x_400;
    hlslcc_movcTemp.y = x_408;
    let x_411 : bool = u_xlatb3.z;
    if (x_411) {
      let x_416 : f32 = u_xlat1.z;
      x_412 = x_416;
    } else {
      let x_419 : f32 = u_xlat2.z;
      x_412 = x_419;
    }
    let x_420 : f32 = x_412;
    hlslcc_movcTemp.z = x_420;
    let x_422 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_422;
    let x_423 : vec4<f32> = u_xlat1;
    let x_426 : vec4<f32> = x_27.x_UserLut_Params;
    let x_428 : vec3<f32> = (vec3<f32>(x_423.z, x_423.x, x_423.y) * vec3<f32>(x_426.z, x_426.z, x_426.z));
    let x_429 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
    let x_432 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_432);
    let x_435 : vec4<f32> = x_27.x_UserLut_Params;
    let x_437 : vec2<f32> = (vec2<f32>(x_435.x, x_435.y) * vec2<f32>(0.5f, 0.5f));
    let x_438 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_437.x, x_438.y, x_438.z, x_437.y);
    let x_440 : vec4<f32> = u_xlat2;
    let x_443 : vec4<f32> = x_27.x_UserLut_Params;
    let x_446 : vec4<f32> = u_xlat2;
    let x_448 : vec2<f32> = ((vec2<f32>(x_440.y, x_440.z) * vec2<f32>(x_443.x, x_443.y)) + vec2<f32>(x_446.x, x_446.w));
    let x_449 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_449.x, x_448.x, x_448.y, x_449.w);
    let x_451 : f32 = u_xlat15;
    let x_453 : f32 = x_27.x_UserLut_Params.y;
    let x_456 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_451 * x_453) + x_456);
    let x_463 : vec4<f32> = u_xlat2;
    let x_465 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_463.x, x_463.z), 0.0f);
    u_xlat3 = vec3<f32>(x_465.x, x_465.y, x_465.z);
    let x_469 : f32 = x_27.x_UserLut_Params.y;
    u_xlat4.x = x_469;
    u_xlat4.y = 0.0f;
    let x_472 : vec4<f32> = u_xlat2;
    let x_474 : vec2<f32> = u_xlat4;
    let x_475 : vec2<f32> = (vec2<f32>(x_472.x, x_472.z) + x_474);
    let x_476 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
    let x_481 : vec4<f32> = u_xlat2;
    let x_483 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_481.x, x_481.y), 0.0f);
    let x_484 : vec3<f32> = vec3<f32>(x_483.x, x_483.y, x_483.z);
    let x_485 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
    let x_488 : f32 = u_xlat1.z;
    let x_490 : f32 = x_27.x_UserLut_Params.z;
    let x_492 : f32 = u_xlat15;
    u_xlat15 = ((x_488 * x_490) + -(x_492));
    let x_495 : vec3<f32> = u_xlat3;
    let x_497 : vec4<f32> = u_xlat2;
    let x_499 : vec3<f32> = (-(x_495) + vec3<f32>(x_497.x, x_497.y, x_497.z));
    let x_500 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
    let x_502 : f32 = u_xlat15;
    let x_504 : vec4<f32> = u_xlat2;
    let x_507 : vec3<f32> = u_xlat3;
    let x_508 : vec3<f32> = ((vec3<f32>(x_502, x_502, x_502) * vec3<f32>(x_504.x, x_504.y, x_504.z)) + x_507);
    let x_509 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
    let x_511 : vec4<f32> = u_xlat1;
    let x_514 : vec4<f32> = u_xlat2;
    let x_516 : vec3<f32> = (-(vec3<f32>(x_511.x, x_511.y, x_511.z)) + vec3<f32>(x_514.x, x_514.y, x_514.z));
    let x_517 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
    let x_520 : vec4<f32> = x_27.x_UserLut_Params;
    let x_522 : vec4<f32> = u_xlat2;
    let x_525 : vec4<f32> = u_xlat1;
    let x_527 : vec3<f32> = ((vec3<f32>(x_520.w, x_520.w, x_520.w) * vec3<f32>(x_522.x, x_522.y, x_522.z)) + vec3<f32>(x_525.x, x_525.y, x_525.z));
    let x_528 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
    let x_530 : vec4<f32> = u_xlat1;
    let x_534 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_535 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
    let x_537 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_537.x, x_537.y, x_537.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_542 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_542 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_546 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_546));
    let x_549 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_549 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_553 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_553);
    let x_558 : vec4<f32> = u_xlat1;
    let x_560 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_558.x, x_558.y, x_558.z, x_558.x));
    u_xlatb1 = vec3<bool>(x_560.x, x_560.y, x_560.z);
    let x_563 : bool = u_xlatb1.x;
    if (x_563) {
      let x_568 : f32 = u_xlat2.x;
      x_564 = x_568;
    } else {
      let x_571 : f32 = u_xlat3.x;
      x_564 = x_571;
    }
    let x_572 : f32 = x_564;
    u_xlat0.x = x_572;
    let x_575 : bool = u_xlatb1.y;
    if (x_575) {
      let x_580 : f32 = u_xlat2.y;
      x_576 = x_580;
    } else {
      let x_583 : f32 = u_xlat3.y;
      x_576 = x_583;
    }
    let x_584 : f32 = x_576;
    u_xlat0.y = x_584;
    let x_587 : bool = u_xlatb1.z;
    if (x_587) {
      let x_592 : f32 = u_xlat2.z;
      x_588 = x_592;
    } else {
      let x_595 : f32 = u_xlat3.z;
      x_588 = x_595;
    }
    let x_596 : f32 = x_588;
    u_xlat0.z = x_596;
  }
  let x_598 : vec3<f32> = u_xlat0;
  u_xlat0 = sqrt(x_598);
  let x_600 : vec2<f32> = vs_TEXCOORD0;
  let x_603 : vec4<f32> = x_27.x_Dithering_Params;
  let x_607 : vec4<f32> = x_27.x_Dithering_Params;
  let x_609 : vec2<f32> = ((x_600 * vec2<f32>(x_603.x, x_603.y)) + vec2<f32>(x_607.z, x_607.w));
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
  let x_617 : vec4<f32> = u_xlat1;
  let x_620 : f32 = x_27.x_GlobalMipBias.x;
  let x_621 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_617.x, x_617.y), x_620);
  u_xlat15 = x_621.w;
  let x_623 : f32 = u_xlat15;
  u_xlat15 = ((x_623 * 2.0f) + -1.0f);
  let x_628 : f32 = u_xlat15;
  u_xlatb1.x = (x_628 >= 0.0f);
  let x_632 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_632);
  let x_635 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_635)) + 1.0f);
  let x_639 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_639);
  let x_641 : f32 = u_xlat15;
  u_xlat15 = (-(x_641) + 1.0f);
  let x_644 : f32 = u_xlat15;
  let x_646 : f32 = u_xlat1.x;
  u_xlat15 = (x_644 * x_646);
  let x_648 : vec3<f32> = u_xlat0;
  let x_649 : vec3<f32> = (x_648 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_650 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec3<f32> = u_xlat0;
  let x_653 : vec3<f32> = log2(x_652);
  let x_654 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : vec4<f32> = u_xlat2;
  let x_658 : vec3<f32> = (vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_659 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat2;
  let x_663 : vec3<f32> = exp2(vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat2;
  let x_669 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_670 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_673 : vec3<f32> = u_xlat0;
  let x_675 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_673.x, x_673.y, x_673.z, x_673.x));
  u_xlatb0 = vec3<bool>(x_675.x, x_675.y, x_675.z);
  let x_678 : bool = u_xlatb0.x;
  if (x_678) {
    let x_683 : f32 = u_xlat1.x;
    x_679 = x_683;
  } else {
    let x_686 : f32 = u_xlat2.x;
    x_679 = x_686;
  }
  let x_687 : f32 = x_679;
  u_xlat0.x = x_687;
  let x_690 : bool = u_xlatb0.y;
  if (x_690) {
    let x_695 : f32 = u_xlat1.y;
    x_691 = x_695;
  } else {
    let x_698 : f32 = u_xlat2.y;
    x_691 = x_698;
  }
  let x_699 : f32 = x_691;
  u_xlat0.y = x_699;
  let x_702 : bool = u_xlatb0.z;
  if (x_702) {
    let x_707 : f32 = u_xlat1.z;
    x_703 = x_707;
  } else {
    let x_710 : f32 = u_xlat2.z;
    x_703 = x_710;
  }
  let x_711 : f32 = x_703;
  u_xlat0.z = x_711;
  let x_713 : f32 = u_xlat15;
  let x_718 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_713, x_713, x_713) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_718);
  let x_720 : vec3<f32> = u_xlat0;
  let x_721 : vec3<f32> = (x_720 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec3<f32> = u_xlat0;
  let x_725 : vec3<f32> = (x_724 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_726 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat2;
  let x_730 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_731 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat2;
  let x_736 : vec3<f32> = log2(abs(vec3<f32>(x_733.x, x_733.y, x_733.z)));
  let x_737 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat2;
  let x_741 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_742 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat2;
  let x_746 : vec3<f32> = exp2(vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_749 : vec3<f32> = u_xlat0;
  let x_751 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_749.x, x_749.y, x_749.z, x_749.x));
  u_xlatb0 = vec3<bool>(x_751.x, x_751.y, x_751.z);
  let x_754 : bool = u_xlatb0.x;
  if (x_754) {
    let x_759 : f32 = u_xlat1.x;
    x_755 = x_759;
  } else {
    let x_762 : f32 = u_xlat2.x;
    x_755 = x_762;
  }
  let x_763 : f32 = x_755;
  u_xlat0.x = x_763;
  let x_766 : bool = u_xlatb0.y;
  if (x_766) {
    let x_771 : f32 = u_xlat1.y;
    x_767 = x_771;
  } else {
    let x_774 : f32 = u_xlat2.y;
    x_767 = x_774;
  }
  let x_775 : f32 = x_767;
  u_xlat0.y = x_775;
  let x_778 : bool = u_xlatb0.z;
  if (x_778) {
    let x_783 : f32 = u_xlat1.z;
    x_779 = x_783;
  } else {
    let x_786 : f32 = u_xlat2.z;
    x_779 = x_786;
  }
  let x_787 : f32 = x_779;
  u_xlat0.z = x_787;
  let x_791 : vec3<f32> = u_xlat0;
  let x_792 : vec3<f32> = max(x_791, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_793 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
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

