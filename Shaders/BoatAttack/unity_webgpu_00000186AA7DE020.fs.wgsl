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

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
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
  var x_211 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_243 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_775 : f32;
  var x_787 : f32;
  var x_799 : f32;
  var x_968 : f32;
  var x_980 : f32;
  var x_992 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_1036 : f32;
  var x_1049 : f32;
  var x_1061 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Params2;
  u_xlat14 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Params2;
  let x_45 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_81);
  let x_83 : bool = u_xlatb8;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Params2;
    u_xlat8 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat8.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat8.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat8.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat8.y;
    u_xlat15 = (1.0f / x_113);
    let x_116 : f32 = u_xlat8.x;
    let x_117 : f32 = u_xlat15;
    u_xlat8.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec3<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat8;
    let x_127 : vec2<f32> = u_xlat14;
    u_xlat8 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat22 = (1.0f / x_132);
    let x_134 : f32 = u_xlat22;
    let x_136 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat22 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_26.x_Distortion_Params2.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat9 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_154);
    let x_156 : f32 = u_xlat9;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat9 = (x_162 * x_164);
    let x_167 : f32 = u_xlat9;
    u_xlat16.x = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_173 : f32 = u_xlat9;
    let x_175 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_173 * x_175) + 0.180141002f);
    let x_180 : f32 = u_xlat9;
    let x_182 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_180 * x_182) + -0.330299497f);
    let x_187 : f32 = u_xlat9;
    let x_189 : f32 = u_xlat16.x;
    u_xlat9 = ((x_187 * x_189) + 0.999866009f);
    let x_193 : f32 = u_xlat9;
    let x_195 : f32 = u_xlat2.x;
    u_xlat16.x = (x_193 * x_195);
    let x_200 : f32 = u_xlat1.x;
    u_xlatb23 = (1.0f < abs(x_200));
    let x_204 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_204 * -2.0f) + 1.570796371f);
    let x_210 : bool = u_xlatb23;
    if (x_210) {
      let x_215 : f32 = u_xlat16.x;
      x_211 = x_215;
    } else {
      x_211 = 0.0f;
    }
    let x_217 : f32 = x_211;
    u_xlat16.x = x_217;
    let x_220 : f32 = u_xlat2.x;
    let x_221 : f32 = u_xlat9;
    let x_224 : f32 = u_xlat16.x;
    u_xlat2.x = ((x_220 * x_221) + x_224);
    let x_228 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_228, 1.0f);
    let x_235 : f32 = u_xlat1.x;
    let x_237 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_235 < -(x_237));
    let x_242 : bool = u_xlatb1.x;
    if (x_242) {
      let x_247 : f32 = u_xlat2.x;
      x_243 = -(x_247);
    } else {
      let x_251 : f32 = u_xlat2.x;
      x_243 = x_251;
    }
    let x_252 : f32 = x_243;
    u_xlat1.x = x_252;
    let x_254 : f32 = u_xlat22;
    let x_256 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_254 * x_256) + -1.0f);
    let x_260 : vec3<f32> = u_xlat0;
    let x_262 : vec4<f32> = u_xlat1;
    let x_265 : vec2<f32> = u_xlat14;
    u_xlat8 = ((vec2<f32>(x_260.x, x_260.y) * vec2<f32>(x_262.x, x_262.x)) + x_265);
  }
  let x_277 : vec2<f32> = u_xlat8;
  let x_280 : f32 = x_26.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_277, x_280);
  u_xlat0 = vec3<f32>(x_281.x, x_281.y, x_281.z);
  let x_283 : vec2<f32> = u_xlat8;
  let x_286 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  let x_289 : vec2<f32> = ((x_283 * vec2<f32>(x_286.z, x_286.w)) + vec2<f32>(0.5f, 0.5f));
  let x_290 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_289.x, x_290.y, x_290.z, x_289.y);
  let x_292 : vec4<f32> = u_xlat1;
  let x_294 : vec2<f32> = floor(vec2<f32>(x_292.x, x_292.w));
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_294.x, x_294.y, x_295.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat1;
  let x_299 : vec2<f32> = fract(vec2<f32>(x_297.x, x_297.w));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_300.y, x_300.z, x_299.y);
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat3 = ((-(vec4<f32>(x_302.x, x_302.w, x_302.x, x_302.w)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_310 : vec4<f32> = u_xlat1;
  let x_312 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_310.x, x_310.w, x_310.x, x_310.w) * x_312) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_316 : vec4<f32> = u_xlat1;
  u_xlat16 = ((vec2<f32>(x_316.x, x_316.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_322 : vec4<f32> = u_xlat1;
  let x_324 : vec4<f32> = u_xlat1;
  let x_326 : vec2<f32> = (vec2<f32>(x_322.x, x_322.w) * vec2<f32>(x_324.x, x_324.w));
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_326.x, x_326.y, x_327.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_329.x, x_329.y) * x_331) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_336 : vec4<f32> = u_xlat1;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_336.x, x_336.w, x_336.x, x_336.w) * x_338) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
  let x_342 : vec2<f32> = u_xlat16;
  let x_345 : vec2<f32> = (-(x_342) + vec2<f32>(1.0f, 1.0f));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_346.y, x_346.z, x_345.y);
  let x_348 : vec4<f32> = u_xlat3;
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec2<f32> = (-(vec2<f32>(x_348.x, x_348.y)) + vec2<f32>(x_351.x, x_351.w));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_353.x, x_354.y, x_354.z, x_353.y);
  let x_356 : vec4<f32> = u_xlat3;
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec2<f32> = (-(vec2<f32>(x_356.z, x_356.w)) + vec2<f32>(x_359.x, x_359.w));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_362.y, x_362.z, x_361.y);
  let x_365 : vec2<f32> = u_xlat16;
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat17 = (x_365 + vec2<f32>(x_366.z, x_366.w));
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat3;
  let x_373 : vec2<f32> = (vec2<f32>(x_369.x, x_369.w) + vec2<f32>(x_371.x, x_371.y));
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
  let x_376 : vec2<f32> = u_xlat17;
  let x_380 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_376.x, x_376.y));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
  let x_383 : vec2<f32> = u_xlat16;
  let x_384 : vec4<f32> = u_xlat4;
  let x_387 : vec2<f32> = ((x_383 * vec2<f32>(x_384.x, x_384.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_387.x, x_387.y);
  let x_390 : vec4<f32> = u_xlat3;
  let x_391 : vec2<f32> = vec2<f32>(x_390.x, x_390.y);
  u_xlat16 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_391.x, x_391.y));
  let x_396 : vec4<f32> = u_xlat1;
  let x_398 : vec2<f32> = u_xlat16;
  let x_400 : vec2<f32> = ((vec2<f32>(x_396.x, x_396.w) * x_398) + vec2<f32>(1.0f, 1.0f));
  let x_401 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
  let x_404 : vec4<f32> = u_xlat2;
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_404.x, x_404.y, x_404.x, x_404.y) + vec4<f32>(x_406.z, x_406.w, x_406.x, x_406.w));
  let x_409 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_409 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_412 : vec4<f32> = u_xlat5;
  let x_414 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_412 * vec4<f32>(x_414.x, x_414.y, x_414.x, x_414.y));
  let x_417 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_417, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_425 : vec4<f32> = u_xlat5;
  let x_427 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_425.x, x_425.y), 0.0f);
  u_xlat6 = x_427;
  let x_431 : vec4<f32> = u_xlat5;
  let x_433 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_431.z, x_431.w), 0.0f);
  u_xlat5 = x_433;
  let x_434 : vec4<f32> = u_xlat3;
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_434.x, x_434.x, x_434.x, x_434.x) * x_436);
  let x_438 : vec2<f32> = u_xlat17;
  let x_440 : vec4<f32> = u_xlat6;
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_438.x, x_438.x, x_438.x, x_438.x) * x_440) + x_442);
  let x_444 : vec4<f32> = u_xlat2;
  let x_446 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_444.x, x_444.y, x_444.x, x_444.y) + vec4<f32>(x_446.z, x_446.y, x_446.x, x_446.y));
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_449 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_451 : vec4<f32> = u_xlat2;
  let x_453 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  u_xlat2 = (x_451 * vec4<f32>(x_453.x, x_453.y, x_453.x, x_453.y));
  let x_456 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_456, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_461 : vec4<f32> = u_xlat2;
  let x_463 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_461.x, x_461.y), 0.0f);
  u_xlat4 = x_463;
  let x_467 : vec4<f32> = u_xlat2;
  let x_469 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_467.z, x_467.w), 0.0f);
  u_xlat2 = x_469;
  let x_470 : vec4<f32> = u_xlat2;
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_470 * vec4<f32>(x_471.x, x_471.x, x_471.x, x_471.x));
  let x_474 : vec2<f32> = u_xlat17;
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_474.x, x_474.x, x_474.x, x_474.x) * x_476) + x_478);
  let x_480 : vec4<f32> = u_xlat2;
  let x_481 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_480 * vec4<f32>(x_481.y, x_481.y, x_481.y, x_481.y));
  let x_484 : vec2<f32> = u_xlat17;
  let x_486 : vec4<f32> = u_xlat5;
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_484.y, x_484.y, x_484.y, x_484.y) * x_486) + x_488);
  let x_493 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb21 = (0.0f < x_493);
  let x_495 : bool = u_xlatb21;
  if (x_495) {
    let x_498 : vec4<f32> = u_xlat2;
    let x_500 : vec4<f32> = u_xlat2;
    let x_502 : vec3<f32> = (vec3<f32>(x_498.w, x_498.w, x_498.w) * vec3<f32>(x_500.x, x_500.y, x_500.z));
    let x_503 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
    let x_505 : vec4<f32> = u_xlat3;
    let x_509 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_510 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  }
  let x_512 : vec4<f32> = u_xlat2;
  let x_516 : vec4<f32> = x_26.x_Bloom_Params;
  let x_518 : vec3<f32> = (vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(x_516.x, x_516.x, x_516.x));
  let x_519 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat2;
  let x_524 : vec4<f32> = x_26.x_Bloom_Params;
  let x_527 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(x_524.y, x_524.z, x_524.w)) + x_527);
  let x_532 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_532);
  let x_534 : bool = u_xlatb21;
  if (x_534) {
    let x_537 : vec2<f32> = u_xlat8;
    let x_539 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_542 : vec2<f32> = (x_537 + -(vec2<f32>(x_539.x, x_539.y)));
    let x_543 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
    let x_545 : vec4<f32> = u_xlat1;
    let x_549 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_551 : vec2<f32> = (abs(vec2<f32>(x_545.x, x_545.y)) * vec2<f32>(x_549.z, x_549.z));
    let x_552 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_552.x, x_551.x, x_551.y, x_552.w);
    let x_555 : f32 = u_xlat1.y;
    let x_558 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_555 * x_558);
    let x_562 : vec4<f32> = u_xlat1;
    let x_564 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_562.x, x_562.z), vec2<f32>(x_564.x, x_564.z));
    let x_567 : f32 = u_xlat21;
    u_xlat21 = (-(x_567) + 1.0f);
    let x_570 : f32 = u_xlat21;
    u_xlat21 = max(x_570, 0.0f);
    let x_572 : f32 = u_xlat21;
    u_xlat21 = log2(x_572);
    let x_574 : f32 = u_xlat21;
    let x_576 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat21 = (x_574 * x_576);
    let x_578 : f32 = u_xlat21;
    u_xlat21 = exp2(x_578);
    let x_581 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_585 : vec3<f32> = (-(vec3<f32>(x_581.x, x_581.y, x_581.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_586 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
    let x_588 : f32 = u_xlat21;
    let x_590 : vec4<f32> = u_xlat1;
    let x_594 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_596 : vec3<f32> = ((vec3<f32>(x_588, x_588, x_588) * vec3<f32>(x_590.x, x_590.y, x_590.z)) + vec3<f32>(x_594.x, x_594.y, x_594.z));
    let x_597 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
    let x_599 : vec3<f32> = u_xlat0;
    let x_600 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_599 * vec3<f32>(x_600.x, x_600.y, x_600.z));
  }
  let x_603 : vec3<f32> = u_xlat0;
  let x_607 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_603.z, x_603.x, x_603.y) * vec3<f32>(x_607.w, x_607.w, x_607.w));
  let x_610 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_610 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_617 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_617, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_620 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_620);
  let x_622 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_622 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_629 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_629, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_634 : vec3<f32> = u_xlat0;
  let x_636 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat7 = (x_634 * vec3<f32>(x_636.z, x_636.z, x_636.z));
  let x_640 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_640);
  let x_644 : vec4<f32> = x_26.x_Lut_Params;
  let x_646 : vec2<f32> = (vec2<f32>(x_644.x, x_644.y) * vec2<f32>(0.5f, 0.5f));
  let x_647 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat7;
  let x_652 : vec4<f32> = x_26.x_Lut_Params;
  let x_655 : vec4<f32> = u_xlat1;
  let x_657 : vec2<f32> = ((vec2<f32>(x_649.y, x_649.z) * vec2<f32>(x_652.x, x_652.y)) + vec2<f32>(x_655.x, x_655.y));
  let x_658 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_658.x, x_657.x, x_657.y, x_658.w);
  let x_661 : f32 = u_xlat7.x;
  let x_663 : f32 = x_26.x_Lut_Params.y;
  let x_666 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_661 * x_663) + x_666);
  let x_673 : vec4<f32> = u_xlat1;
  let x_675 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_673.x, x_673.z), 0.0f);
  let x_676 : vec3<f32> = vec3<f32>(x_675.x, x_675.y, x_675.z);
  let x_677 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_680 : f32 = x_26.x_Lut_Params.y;
  u_xlat3.x = x_680;
  u_xlat3.y = 0.0f;
  let x_683 : vec4<f32> = u_xlat1;
  let x_685 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec2<f32>(x_683.x, x_683.z) + vec2<f32>(x_685.x, x_685.y));
  let x_691 : vec2<f32> = u_xlat14;
  let x_692 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_691, 0.0f);
  let x_693 : vec3<f32> = vec3<f32>(x_692.x, x_692.y, x_692.z);
  let x_694 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = x_26.x_Lut_Params.z;
  let x_702 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_697 * x_699) + -(x_702));
  let x_706 : vec4<f32> = u_xlat2;
  let x_709 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_706.x, x_706.y, x_706.z)) + vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec3<f32> = u_xlat0;
  let x_714 : vec3<f32> = u_xlat7;
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_712.x, x_712.x, x_712.x) * x_714) + vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_721 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_721);
  let x_723 : bool = u_xlatb21;
  if (x_723) {
    let x_726 : vec3<f32> = u_xlat0;
    u_xlat0 = x_726;
    let x_727 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_727, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_731 : vec3<f32> = u_xlat0;
    let x_734 : vec3<f32> = (x_731 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_735 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
    let x_737 : vec3<f32> = u_xlat0;
    let x_738 : vec3<f32> = log2(x_737);
    let x_739 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
    let x_741 : vec4<f32> = u_xlat2;
    let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_746 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
    let x_748 : vec4<f32> = u_xlat2;
    let x_750 : vec3<f32> = exp2(vec3<f32>(x_748.x, x_748.y, x_748.z));
    let x_751 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
    let x_753 : vec4<f32> = u_xlat2;
    let x_760 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_761 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
    let x_766 : vec3<f32> = u_xlat0;
    let x_769 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_766.x, x_766.y, x_766.z, x_766.x));
    u_xlatb3 = vec3<bool>(x_769.x, x_769.y, x_769.z);
    let x_772 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_772;
    let x_774 : bool = u_xlatb3.x;
    if (x_774) {
      let x_779 : f32 = u_xlat1.x;
      x_775 = x_779;
    } else {
      let x_782 : f32 = u_xlat2.x;
      x_775 = x_782;
    }
    let x_783 : f32 = x_775;
    hlslcc_movcTemp.x = x_783;
    let x_786 : bool = u_xlatb3.y;
    if (x_786) {
      let x_791 : f32 = u_xlat1.y;
      x_787 = x_791;
    } else {
      let x_794 : f32 = u_xlat2.y;
      x_787 = x_794;
    }
    let x_795 : f32 = x_787;
    hlslcc_movcTemp.y = x_795;
    let x_798 : bool = u_xlatb3.z;
    if (x_798) {
      let x_803 : f32 = u_xlat1.z;
      x_799 = x_803;
    } else {
      let x_806 : f32 = u_xlat2.z;
      x_799 = x_806;
    }
    let x_807 : f32 = x_799;
    hlslcc_movcTemp.z = x_807;
    let x_809 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_809;
    let x_810 : vec4<f32> = u_xlat1;
    let x_813 : vec4<f32> = x_26.x_UserLut_Params;
    let x_815 : vec3<f32> = (vec3<f32>(x_810.z, x_810.x, x_810.y) * vec3<f32>(x_813.z, x_813.z, x_813.z));
    let x_816 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
    let x_819 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_819);
    let x_822 : vec4<f32> = x_26.x_UserLut_Params;
    let x_824 : vec2<f32> = (vec2<f32>(x_822.x, x_822.y) * vec2<f32>(0.5f, 0.5f));
    let x_825 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_824.x, x_825.y, x_825.z, x_824.y);
    let x_827 : vec4<f32> = u_xlat2;
    let x_830 : vec4<f32> = x_26.x_UserLut_Params;
    let x_833 : vec4<f32> = u_xlat2;
    let x_835 : vec2<f32> = ((vec2<f32>(x_827.y, x_827.z) * vec2<f32>(x_830.x, x_830.y)) + vec2<f32>(x_833.x, x_833.w));
    let x_836 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_836.x, x_835.x, x_835.y, x_836.w);
    let x_838 : f32 = u_xlat21;
    let x_840 : f32 = x_26.x_UserLut_Params.y;
    let x_843 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_838 * x_840) + x_843);
    let x_850 : vec4<f32> = u_xlat2;
    let x_852 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_850.x, x_850.z), 0.0f);
    let x_853 : vec3<f32> = vec3<f32>(x_852.x, x_852.y, x_852.z);
    let x_854 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
    let x_857 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_857;
    u_xlat4.y = 0.0f;
    let x_860 : vec4<f32> = u_xlat2;
    let x_862 : vec4<f32> = u_xlat4;
    let x_864 : vec2<f32> = (vec2<f32>(x_860.x, x_860.z) + vec2<f32>(x_862.x, x_862.y));
    let x_865 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
    let x_870 : vec4<f32> = u_xlat2;
    let x_872 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_870.x, x_870.y), 0.0f);
    let x_873 : vec3<f32> = vec3<f32>(x_872.x, x_872.y, x_872.z);
    let x_874 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
    let x_877 : f32 = u_xlat1.z;
    let x_879 : f32 = x_26.x_UserLut_Params.z;
    let x_881 : f32 = u_xlat21;
    u_xlat21 = ((x_877 * x_879) + -(x_881));
    let x_884 : vec4<f32> = u_xlat3;
    let x_887 : vec4<f32> = u_xlat2;
    let x_889 : vec3<f32> = (-(vec3<f32>(x_884.x, x_884.y, x_884.z)) + vec3<f32>(x_887.x, x_887.y, x_887.z));
    let x_890 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
    let x_892 : f32 = u_xlat21;
    let x_894 : vec4<f32> = u_xlat2;
    let x_897 : vec4<f32> = u_xlat3;
    let x_899 : vec3<f32> = ((vec3<f32>(x_892, x_892, x_892) * vec3<f32>(x_894.x, x_894.y, x_894.z)) + vec3<f32>(x_897.x, x_897.y, x_897.z));
    let x_900 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
    let x_902 : vec4<f32> = u_xlat1;
    let x_905 : vec4<f32> = u_xlat2;
    let x_907 : vec3<f32> = (-(vec3<f32>(x_902.x, x_902.y, x_902.z)) + vec3<f32>(x_905.x, x_905.y, x_905.z));
    let x_908 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
    let x_911 : vec4<f32> = x_26.x_UserLut_Params;
    let x_913 : vec4<f32> = u_xlat2;
    let x_916 : vec4<f32> = u_xlat1;
    let x_918 : vec3<f32> = ((vec3<f32>(x_911.w, x_911.w, x_911.w) * vec3<f32>(x_913.x, x_913.y, x_913.z)) + vec3<f32>(x_916.x, x_916.y, x_916.z));
    let x_919 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
    let x_921 : vec4<f32> = u_xlat1;
    let x_925 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_926 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
    let x_928 : vec4<f32> = u_xlat1;
    let x_932 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_933 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
    let x_935 : vec4<f32> = u_xlat3;
    let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_940 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
    let x_942 : vec4<f32> = u_xlat3;
    let x_945 : vec3<f32> = log2(abs(vec3<f32>(x_942.x, x_942.y, x_942.z)));
    let x_946 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
    let x_948 : vec4<f32> = u_xlat3;
    let x_952 : vec3<f32> = (vec3<f32>(x_948.x, x_948.y, x_948.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_953 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
    let x_955 : vec4<f32> = u_xlat3;
    let x_957 : vec3<f32> = exp2(vec3<f32>(x_955.x, x_955.y, x_955.z));
    let x_958 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
    let x_962 : vec4<f32> = u_xlat1;
    let x_964 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_962.x, x_962.y, x_962.z, x_962.x));
    u_xlatb1 = vec3<bool>(x_964.x, x_964.y, x_964.z);
    let x_967 : bool = u_xlatb1.x;
    if (x_967) {
      let x_972 : f32 = u_xlat2.x;
      x_968 = x_972;
    } else {
      let x_975 : f32 = u_xlat3.x;
      x_968 = x_975;
    }
    let x_976 : f32 = x_968;
    u_xlat0.x = x_976;
    let x_979 : bool = u_xlatb1.y;
    if (x_979) {
      let x_984 : f32 = u_xlat2.y;
      x_980 = x_984;
    } else {
      let x_987 : f32 = u_xlat3.y;
      x_980 = x_987;
    }
    let x_988 : f32 = x_980;
    u_xlat0.y = x_988;
    let x_991 : bool = u_xlatb1.z;
    if (x_991) {
      let x_996 : f32 = u_xlat2.z;
      x_992 = x_996;
    } else {
      let x_999 : f32 = u_xlat3.z;
      x_992 = x_999;
    }
    let x_1000 : f32 = x_992;
    u_xlat0.z = x_1000;
  }
  let x_1002 : vec3<f32> = u_xlat0;
  let x_1003 : vec3<f32> = (x_1002 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec3<f32> = u_xlat0;
  let x_1008 : vec3<f32> = log2(abs(x_1006));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1013 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1014 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : vec4<f32> = u_xlat2;
  let x_1018 : vec3<f32> = exp2(vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat2;
  let x_1024 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1025 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1028 : vec3<f32> = u_xlat0;
  let x_1030 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1028.x));
  u_xlatb0 = vec3<bool>(x_1030.x, x_1030.y, x_1030.z);
  let x_1035 : bool = u_xlatb0.x;
  if (x_1035) {
    let x_1040 : f32 = u_xlat1.x;
    x_1036 = x_1040;
  } else {
    let x_1043 : f32 = u_xlat2.x;
    x_1036 = x_1043;
  }
  let x_1044 : f32 = x_1036;
  SV_Target0.x = x_1044;
  let x_1048 : bool = u_xlatb0.y;
  if (x_1048) {
    let x_1053 : f32 = u_xlat1.y;
    x_1049 = x_1053;
  } else {
    let x_1056 : f32 = u_xlat2.y;
    x_1049 = x_1056;
  }
  let x_1057 : f32 = x_1049;
  SV_Target0.y = x_1057;
  let x_1060 : bool = u_xlatb0.z;
  if (x_1060) {
    let x_1065 : f32 = u_xlat1.z;
    x_1061 = x_1065;
  } else {
    let x_1068 : f32 = u_xlat2.z;
    x_1061 = x_1068;
  }
  let x_1069 : f32 = x_1061;
  SV_Target0.z = x_1069;
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

