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
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb8 : bool;
  var u_xlat8 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat22 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : vec2<f32>;
  var u_xlatb23 : bool;
  var x_209 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_241 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_743 : f32;
  var x_755 : f32;
  var x_767 : f32;
  var x_936 : f32;
  var x_948 : f32;
  var x_960 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat14 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_44 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_79);
  let x_81 : bool = u_xlatb8;
  if (x_81) {
    let x_85 : vec4<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat8 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_93 : f32 = u_xlat8.x;
    u_xlat2.x = sin(x_93);
    let x_98 : f32 = u_xlat8.x;
    u_xlat3.x = cos(x_98);
    let x_102 : f32 = u_xlat2.x;
    let x_104 : f32 = u_xlat3.x;
    u_xlat8.x = (x_102 / x_104);
    let x_111 : f32 = u_xlat8.y;
    u_xlat15 = (1.0f / x_111);
    let x_114 : f32 = u_xlat8.x;
    let x_115 : f32 = u_xlat15;
    u_xlat8.x = ((x_114 * x_115) + -1.0f);
    let x_120 : vec4<f32> = u_xlat0;
    let x_122 : vec2<f32> = u_xlat8;
    let x_125 : vec2<f32> = u_xlat14;
    u_xlat8 = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.x)) + x_125);
  } else {
    let x_130 : f32 = u_xlat1.x;
    u_xlat22 = (1.0f / x_130);
    let x_132 : f32 = u_xlat22;
    let x_134 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat22 = (x_132 * x_134);
    let x_137 : f32 = u_xlat1.x;
    let x_139 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_137 * x_139);
    let x_143 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_143), 1.0f);
    let x_149 : f32 = u_xlat1.x;
    u_xlat9 = max(abs(x_149), 1.0f);
    let x_152 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_152);
    let x_154 : f32 = u_xlat9;
    let x_156 : f32 = u_xlat2.x;
    u_xlat2.x = (x_154 * x_156);
    let x_160 : f32 = u_xlat2.x;
    let x_162 : f32 = u_xlat2.x;
    u_xlat9 = (x_160 * x_162);
    let x_165 : f32 = u_xlat9;
    u_xlat16.x = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_171 : f32 = u_xlat9;
    let x_173 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_171 * x_173) + 0.180141002f);
    let x_178 : f32 = u_xlat9;
    let x_180 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_178 * x_180) + -0.330299497f);
    let x_185 : f32 = u_xlat9;
    let x_187 : f32 = u_xlat16.x;
    u_xlat9 = ((x_185 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat9;
    let x_193 : f32 = u_xlat2.x;
    u_xlat16.x = (x_191 * x_193);
    let x_198 : f32 = u_xlat1.x;
    u_xlatb23 = (1.0f < abs(x_198));
    let x_202 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_202 * -2.0f) + 1.570796371f);
    let x_208 : bool = u_xlatb23;
    if (x_208) {
      let x_213 : f32 = u_xlat16.x;
      x_209 = x_213;
    } else {
      x_209 = 0.0f;
    }
    let x_215 : f32 = x_209;
    u_xlat16.x = x_215;
    let x_218 : f32 = u_xlat2.x;
    let x_219 : f32 = u_xlat9;
    let x_222 : f32 = u_xlat16.x;
    u_xlat2.x = ((x_218 * x_219) + x_222);
    let x_226 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_226, 1.0f);
    let x_233 : f32 = u_xlat1.x;
    let x_235 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_233 < -(x_235));
    let x_240 : bool = u_xlatb1.x;
    if (x_240) {
      let x_245 : f32 = u_xlat2.x;
      x_241 = -(x_245);
    } else {
      let x_249 : f32 = u_xlat2.x;
      x_241 = x_249;
    }
    let x_250 : f32 = x_241;
    u_xlat1.x = x_250;
    let x_252 : f32 = u_xlat22;
    let x_254 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_252 * x_254) + -1.0f);
    let x_258 : vec4<f32> = u_xlat0;
    let x_260 : vec4<f32> = u_xlat1;
    let x_263 : vec2<f32> = u_xlat14;
    u_xlat8 = ((vec2<f32>(x_258.x, x_258.y) * vec2<f32>(x_260.x, x_260.x)) + x_263);
  }
  let x_275 : vec2<f32> = u_xlat8;
  let x_278 : f32 = x_25.x_GlobalMipBias.x;
  let x_279 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_275, x_278);
  let x_281 : vec3<f32> = vec3<f32>(x_279.x, x_279.y, x_279.z);
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec2<f32> = u_xlat8;
  let x_287 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_290 : vec2<f32> = ((x_284 * vec2<f32>(x_287.z, x_287.w)) + vec2<f32>(0.5f, 0.5f));
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_291.y, x_291.z, x_290.y);
  let x_293 : vec4<f32> = u_xlat1;
  let x_295 : vec2<f32> = floor(vec2<f32>(x_293.x, x_293.w));
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  let x_298 : vec4<f32> = u_xlat1;
  let x_300 : vec2<f32> = fract(vec2<f32>(x_298.x, x_298.w));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_301.y, x_301.z, x_300.y);
  let x_303 : vec4<f32> = u_xlat1;
  u_xlat3 = ((-(vec4<f32>(x_303.x, x_303.w, x_303.x, x_303.w)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_311.x, x_311.w, x_311.x, x_311.w) * x_313) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat16 = ((vec2<f32>(x_317.x, x_317.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_323 : vec4<f32> = u_xlat1;
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : vec2<f32> = (vec2<f32>(x_323.x, x_323.w) * vec2<f32>(x_325.x, x_325.w));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_330.x, x_330.y) * x_332) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_337 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_337.x, x_337.w, x_337.x, x_337.w) * x_339) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
  let x_343 : vec2<f32> = u_xlat16;
  let x_346 : vec2<f32> = (-(x_343) + vec2<f32>(1.0f, 1.0f));
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_347.y, x_347.z, x_346.y);
  let x_349 : vec4<f32> = u_xlat3;
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec2<f32> = (-(vec2<f32>(x_349.x, x_349.y)) + vec2<f32>(x_352.x, x_352.w));
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_355.y, x_355.z, x_354.y);
  let x_357 : vec4<f32> = u_xlat3;
  let x_360 : vec4<f32> = u_xlat1;
  let x_362 : vec2<f32> = (-(vec2<f32>(x_357.z, x_357.w)) + vec2<f32>(x_360.x, x_360.w));
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_362.x, x_363.y, x_363.z, x_362.y);
  let x_366 : vec2<f32> = u_xlat16;
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat17 = (x_366 + vec2<f32>(x_367.z, x_367.w));
  let x_370 : vec4<f32> = u_xlat1;
  let x_372 : vec4<f32> = u_xlat3;
  let x_374 : vec2<f32> = (vec2<f32>(x_370.x, x_370.w) + vec2<f32>(x_372.x, x_372.y));
  let x_375 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
  let x_377 : vec2<f32> = u_xlat17;
  let x_381 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_377.x, x_377.y));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
  let x_384 : vec2<f32> = u_xlat16;
  let x_385 : vec4<f32> = u_xlat4;
  let x_388 : vec2<f32> = ((x_384 * vec2<f32>(x_385.x, x_385.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_389.x, x_389.y, x_388.x, x_388.y);
  let x_391 : vec4<f32> = u_xlat3;
  let x_392 : vec2<f32> = vec2<f32>(x_391.x, x_391.y);
  u_xlat16 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_392.x, x_392.y));
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec2<f32> = u_xlat16;
  let x_401 : vec2<f32> = ((vec2<f32>(x_397.x, x_397.w) * x_399) + vec2<f32>(1.0f, 1.0f));
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  let x_405 : vec4<f32> = u_xlat2;
  let x_407 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_405.x, x_405.y, x_405.x, x_405.y) + vec4<f32>(x_407.z, x_407.w, x_407.x, x_407.w));
  let x_410 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_410 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_413 : vec4<f32> = u_xlat5;
  let x_415 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_413 * vec4<f32>(x_415.x, x_415.y, x_415.x, x_415.y));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_418, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_426 : vec4<f32> = u_xlat5;
  let x_428 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_426.x, x_426.y), 0.0f);
  u_xlat6 = x_428;
  let x_432 : vec4<f32> = u_xlat5;
  let x_434 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_432.z, x_432.w), 0.0f);
  u_xlat5 = x_434;
  let x_435 : vec4<f32> = u_xlat3;
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_435.x, x_435.x, x_435.x, x_435.x) * x_437);
  let x_439 : vec2<f32> = u_xlat17;
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_439.x, x_439.x, x_439.x, x_439.x) * x_441) + x_443);
  let x_445 : vec4<f32> = u_xlat2;
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_445.x, x_445.y, x_445.x, x_445.y) + vec4<f32>(x_447.z, x_447.y, x_447.x, x_447.y));
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_450 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_452 : vec4<f32> = u_xlat2;
  let x_454 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat2 = (x_452 * vec4<f32>(x_454.x, x_454.y, x_454.x, x_454.y));
  let x_457 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_457, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_462 : vec4<f32> = u_xlat2;
  let x_464 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_462.x, x_462.y), 0.0f);
  u_xlat4 = x_464;
  let x_468 : vec4<f32> = u_xlat2;
  let x_470 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_468.z, x_468.w), 0.0f);
  u_xlat2 = x_470;
  let x_471 : vec4<f32> = u_xlat2;
  let x_472 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_471 * vec4<f32>(x_472.x, x_472.x, x_472.x, x_472.x));
  let x_475 : vec2<f32> = u_xlat17;
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_475.x, x_475.x, x_475.x, x_475.x) * x_477) + x_479);
  let x_481 : vec4<f32> = u_xlat2;
  let x_482 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_481 * vec4<f32>(x_482.y, x_482.y, x_482.y, x_482.y));
  let x_485 : vec2<f32> = u_xlat17;
  let x_487 : vec4<f32> = u_xlat5;
  let x_489 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_485.y, x_485.y, x_485.y, x_485.y) * x_487) + x_489);
  let x_494 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb21 = (0.0f < x_494);
  let x_496 : bool = u_xlatb21;
  if (x_496) {
    let x_499 : vec4<f32> = u_xlat2;
    let x_501 : vec4<f32> = u_xlat2;
    let x_503 : vec3<f32> = (vec3<f32>(x_499.w, x_499.w, x_499.w) * vec3<f32>(x_501.x, x_501.y, x_501.z));
    let x_504 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_506 : vec4<f32> = u_xlat3;
    let x_510 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_511 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  }
  let x_513 : vec4<f32> = u_xlat2;
  let x_517 : vec4<f32> = x_25.x_Bloom_Params;
  let x_519 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_517.x, x_517.x, x_517.x));
  let x_520 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat2;
  let x_525 : vec4<f32> = x_25.x_Bloom_Params;
  let x_528 : vec4<f32> = u_xlat0;
  let x_530 : vec3<f32> = ((vec3<f32>(x_522.x, x_522.y, x_522.z) * vec3<f32>(x_525.y, x_525.z, x_525.w)) + vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_536 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_536);
  let x_538 : bool = u_xlatb21;
  if (x_538) {
    let x_541 : vec2<f32> = u_xlat8;
    let x_543 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_546 : vec2<f32> = (x_541 + -(vec2<f32>(x_543.x, x_543.y)));
    let x_547 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
    let x_549 : vec4<f32> = u_xlat1;
    let x_553 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_555 : vec2<f32> = (abs(vec2<f32>(x_549.x, x_549.y)) * vec2<f32>(x_553.z, x_553.z));
    let x_556 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_556.x, x_555.x, x_555.y, x_556.w);
    let x_559 : f32 = u_xlat1.y;
    let x_562 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_559 * x_562);
    let x_566 : vec4<f32> = u_xlat1;
    let x_568 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_566.x, x_566.z), vec2<f32>(x_568.x, x_568.z));
    let x_571 : f32 = u_xlat21;
    u_xlat21 = (-(x_571) + 1.0f);
    let x_574 : f32 = u_xlat21;
    u_xlat21 = max(x_574, 0.0f);
    let x_576 : f32 = u_xlat21;
    u_xlat21 = log2(x_576);
    let x_578 : f32 = u_xlat21;
    let x_580 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_578 * x_580);
    let x_582 : f32 = u_xlat21;
    u_xlat21 = exp2(x_582);
    let x_585 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_589 : vec3<f32> = (-(vec3<f32>(x_585.x, x_585.y, x_585.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_590 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
    let x_592 : f32 = u_xlat21;
    let x_594 : vec4<f32> = u_xlat1;
    let x_598 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_600 : vec3<f32> = ((vec3<f32>(x_592, x_592, x_592) * vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_598.x, x_598.y, x_598.z));
    let x_601 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
    let x_603 : vec4<f32> = u_xlat0;
    let x_605 : vec4<f32> = u_xlat1;
    let x_607 : vec3<f32> = (vec3<f32>(x_603.x, x_603.y, x_603.z) * vec3<f32>(x_605.x, x_605.y, x_605.z));
    let x_608 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  }
  let x_610 : vec4<f32> = u_xlat0;
  let x_614 : vec4<f32> = x_25.x_Lut_Params;
  let x_616 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) * vec3<f32>(x_614.w, x_614.w, x_614.w));
  let x_617 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat0;
  let x_623 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat0;
  let x_633 : vec3<f32> = ((vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_634 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat1;
  let x_638 : vec4<f32> = u_xlat2;
  let x_643 : vec3<f32> = ((vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(x_638.x, x_638.y, x_638.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_644 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat0;
  let x_651 : vec3<f32> = ((vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat1;
  let x_656 : vec4<f32> = u_xlat0;
  let x_661 : vec3<f32> = ((vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_656.x, x_656.y, x_656.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_662 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat2;
  let x_666 : vec4<f32> = u_xlat0;
  let x_668 : vec3<f32> = (vec3<f32>(x_664.x, x_664.y, x_664.z) / vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec4<f32> = u_xlat0;
  let x_675 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_676 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec4<f32> = u_xlat0;
  let x_680 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_681 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec4<f32> = u_xlat0;
  let x_687 : vec3<f32> = clamp(vec3<f32>(x_683.x, x_683.y, x_683.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_688 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_692 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_692);
  let x_694 : bool = u_xlatb21;
  if (x_694) {
    let x_697 : vec4<f32> = u_xlat0;
    let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_702 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
    let x_704 : vec4<f32> = u_xlat0;
    let x_706 : vec3<f32> = log2(vec3<f32>(x_704.x, x_704.y, x_704.z));
    let x_707 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
    let x_709 : vec4<f32> = u_xlat2;
    let x_713 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_714 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
    let x_716 : vec4<f32> = u_xlat2;
    let x_718 : vec3<f32> = exp2(vec3<f32>(x_716.x, x_716.y, x_716.z));
    let x_719 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
    let x_721 : vec4<f32> = u_xlat2;
    let x_728 : vec3<f32> = ((vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_729 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
    let x_734 : vec4<f32> = u_xlat0;
    let x_737 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_734.x, x_734.y, x_734.z, x_734.x));
    u_xlatb3 = vec3<bool>(x_737.x, x_737.y, x_737.z);
    let x_740 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_740;
    let x_742 : bool = u_xlatb3.x;
    if (x_742) {
      let x_747 : f32 = u_xlat1.x;
      x_743 = x_747;
    } else {
      let x_750 : f32 = u_xlat2.x;
      x_743 = x_750;
    }
    let x_751 : f32 = x_743;
    hlslcc_movcTemp.x = x_751;
    let x_754 : bool = u_xlatb3.y;
    if (x_754) {
      let x_759 : f32 = u_xlat1.y;
      x_755 = x_759;
    } else {
      let x_762 : f32 = u_xlat2.y;
      x_755 = x_762;
    }
    let x_763 : f32 = x_755;
    hlslcc_movcTemp.y = x_763;
    let x_766 : bool = u_xlatb3.z;
    if (x_766) {
      let x_771 : f32 = u_xlat1.z;
      x_767 = x_771;
    } else {
      let x_774 : f32 = u_xlat2.z;
      x_767 = x_774;
    }
    let x_775 : f32 = x_767;
    hlslcc_movcTemp.z = x_775;
    let x_777 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_777;
    let x_778 : vec4<f32> = u_xlat1;
    let x_781 : vec4<f32> = x_25.x_UserLut_Params;
    let x_783 : vec3<f32> = (vec3<f32>(x_778.z, x_778.x, x_778.y) * vec3<f32>(x_781.z, x_781.z, x_781.z));
    let x_784 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
    let x_787 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_787);
    let x_790 : vec4<f32> = x_25.x_UserLut_Params;
    let x_792 : vec2<f32> = (vec2<f32>(x_790.x, x_790.y) * vec2<f32>(0.5f, 0.5f));
    let x_793 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_792.x, x_793.y, x_793.z, x_792.y);
    let x_795 : vec4<f32> = u_xlat2;
    let x_798 : vec4<f32> = x_25.x_UserLut_Params;
    let x_801 : vec4<f32> = u_xlat2;
    let x_803 : vec2<f32> = ((vec2<f32>(x_795.y, x_795.z) * vec2<f32>(x_798.x, x_798.y)) + vec2<f32>(x_801.x, x_801.w));
    let x_804 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_804.x, x_803.x, x_803.y, x_804.w);
    let x_806 : f32 = u_xlat21;
    let x_808 : f32 = x_25.x_UserLut_Params.y;
    let x_811 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_806 * x_808) + x_811);
    let x_818 : vec4<f32> = u_xlat2;
    let x_820 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_818.x, x_818.z), 0.0f);
    let x_821 : vec3<f32> = vec3<f32>(x_820.x, x_820.y, x_820.z);
    let x_822 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
    let x_825 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_825;
    u_xlat4.y = 0.0f;
    let x_828 : vec4<f32> = u_xlat2;
    let x_830 : vec4<f32> = u_xlat4;
    let x_832 : vec2<f32> = (vec2<f32>(x_828.x, x_828.z) + vec2<f32>(x_830.x, x_830.y));
    let x_833 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
    let x_838 : vec4<f32> = u_xlat2;
    let x_840 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_838.x, x_838.y), 0.0f);
    let x_841 : vec3<f32> = vec3<f32>(x_840.x, x_840.y, x_840.z);
    let x_842 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
    let x_845 : f32 = u_xlat1.z;
    let x_847 : f32 = x_25.x_UserLut_Params.z;
    let x_849 : f32 = u_xlat21;
    u_xlat21 = ((x_845 * x_847) + -(x_849));
    let x_852 : vec4<f32> = u_xlat3;
    let x_855 : vec4<f32> = u_xlat2;
    let x_857 : vec3<f32> = (-(vec3<f32>(x_852.x, x_852.y, x_852.z)) + vec3<f32>(x_855.x, x_855.y, x_855.z));
    let x_858 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
    let x_860 : f32 = u_xlat21;
    let x_862 : vec4<f32> = u_xlat2;
    let x_865 : vec4<f32> = u_xlat3;
    let x_867 : vec3<f32> = ((vec3<f32>(x_860, x_860, x_860) * vec3<f32>(x_862.x, x_862.y, x_862.z)) + vec3<f32>(x_865.x, x_865.y, x_865.z));
    let x_868 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
    let x_870 : vec4<f32> = u_xlat1;
    let x_873 : vec4<f32> = u_xlat2;
    let x_875 : vec3<f32> = (-(vec3<f32>(x_870.x, x_870.y, x_870.z)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
    let x_876 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
    let x_879 : vec4<f32> = x_25.x_UserLut_Params;
    let x_881 : vec4<f32> = u_xlat2;
    let x_884 : vec4<f32> = u_xlat1;
    let x_886 : vec3<f32> = ((vec3<f32>(x_879.w, x_879.w, x_879.w) * vec3<f32>(x_881.x, x_881.y, x_881.z)) + vec3<f32>(x_884.x, x_884.y, x_884.z));
    let x_887 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
    let x_889 : vec4<f32> = u_xlat1;
    let x_893 : vec3<f32> = (vec3<f32>(x_889.x, x_889.y, x_889.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_894 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
    let x_896 : vec4<f32> = u_xlat1;
    let x_900 : vec3<f32> = (vec3<f32>(x_896.x, x_896.y, x_896.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_901 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
    let x_903 : vec4<f32> = u_xlat3;
    let x_907 : vec3<f32> = (vec3<f32>(x_903.x, x_903.y, x_903.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_908 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
    let x_910 : vec4<f32> = u_xlat3;
    let x_913 : vec3<f32> = log2(abs(vec3<f32>(x_910.x, x_910.y, x_910.z)));
    let x_914 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
    let x_916 : vec4<f32> = u_xlat3;
    let x_920 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_921 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
    let x_923 : vec4<f32> = u_xlat3;
    let x_925 : vec3<f32> = exp2(vec3<f32>(x_923.x, x_923.y, x_923.z));
    let x_926 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
    let x_930 : vec4<f32> = u_xlat1;
    let x_932 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_930.x, x_930.y, x_930.z, x_930.x));
    u_xlatb1 = vec3<bool>(x_932.x, x_932.y, x_932.z);
    let x_935 : bool = u_xlatb1.x;
    if (x_935) {
      let x_940 : f32 = u_xlat2.x;
      x_936 = x_940;
    } else {
      let x_943 : f32 = u_xlat3.x;
      x_936 = x_943;
    }
    let x_944 : f32 = x_936;
    u_xlat0.x = x_944;
    let x_947 : bool = u_xlatb1.y;
    if (x_947) {
      let x_952 : f32 = u_xlat2.y;
      x_948 = x_952;
    } else {
      let x_955 : f32 = u_xlat3.y;
      x_948 = x_955;
    }
    let x_956 : f32 = x_948;
    u_xlat0.y = x_956;
    let x_959 : bool = u_xlatb1.z;
    if (x_959) {
      let x_964 : f32 = u_xlat2.z;
      x_960 = x_964;
    } else {
      let x_967 : f32 = u_xlat3.z;
      x_960 = x_967;
    }
    let x_968 : f32 = x_960;
    u_xlat0.z = x_968;
  }
  let x_970 : vec4<f32> = u_xlat0;
  let x_973 : vec4<f32> = x_25.x_Lut_Params;
  let x_975 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(x_973.z, x_973.z, x_973.z));
  let x_976 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_975.z);
  let x_979 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_979);
  let x_982 : vec4<f32> = x_25.x_Lut_Params;
  let x_984 : vec2<f32> = (vec2<f32>(x_982.x, x_982.y) * vec2<f32>(0.5f, 0.5f));
  let x_985 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat0;
  let x_990 : vec4<f32> = x_25.x_Lut_Params;
  let x_993 : vec4<f32> = u_xlat1;
  let x_995 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.y) * vec2<f32>(x_990.x, x_990.y)) + vec2<f32>(x_993.x, x_993.y));
  let x_996 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_996.x, x_995.x, x_995.y, x_996.w);
  let x_998 : f32 = u_xlat21;
  let x_1000 : f32 = x_25.x_Lut_Params.y;
  let x_1003 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_998 * x_1000) + x_1003);
  let x_1010 : vec4<f32> = u_xlat1;
  let x_1012 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1010.x, x_1010.z), 0.0f);
  let x_1013 : vec3<f32> = vec3<f32>(x_1012.x, x_1012.y, x_1012.z);
  let x_1014 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1017 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1017;
  u_xlat0.y = 0.0f;
  let x_1020 : vec4<f32> = u_xlat0;
  let x_1022 : vec4<f32> = u_xlat1;
  let x_1024 : vec2<f32> = (vec2<f32>(x_1020.x, x_1020.y) + vec2<f32>(x_1022.x, x_1022.z));
  let x_1025 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
  let x_1030 : vec4<f32> = u_xlat0;
  let x_1032 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1030.x, x_1030.y), 0.0f);
  let x_1033 : vec3<f32> = vec3<f32>(x_1032.x, x_1032.y, x_1032.z);
  let x_1034 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1037 : f32 = u_xlat0.z;
  let x_1039 : f32 = x_25.x_Lut_Params.z;
  let x_1041 : f32 = u_xlat21;
  u_xlat0.x = ((x_1037 * x_1039) + -(x_1041));
  let x_1047 : vec4<f32> = u_xlat2;
  let x_1050 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1047.x, x_1047.y, x_1047.z)) + vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1055 : vec4<f32> = u_xlat0;
  let x_1057 : vec3<f32> = u_xlat7;
  let x_1059 : vec4<f32> = u_xlat2;
  let x_1061 : vec3<f32> = ((vec3<f32>(x_1055.x, x_1055.x, x_1055.x) * x_1057) + vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
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

