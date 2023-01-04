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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb8 : bool;
  var u_xlat8 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat22 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : vec2<f32>;
  var u_xlatb23 : bool;
  var x_215 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_247 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_784 : f32;
  var x_796 : f32;
  var x_808 : f32;
  var x_977 : f32;
  var x_989 : f32;
  var x_1001 : f32;
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
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat8.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat8.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat8.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat8.y;
    u_xlat15 = (1.0f / x_115);
    let x_118 : f32 = u_xlat8.x;
    let x_119 : f32 = u_xlat15;
    u_xlat8.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec3<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat8;
    let x_129 : vec2<f32> = u_xlat14;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat22 = (1.0f / x_136);
    let x_138 : f32 = u_xlat22;
    let x_140 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat22 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_26.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat9 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_158);
    let x_160 : f32 = u_xlat9;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat9 = (x_166 * x_168);
    let x_171 : f32 = u_xlat9;
    u_xlat16.x = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_177 : f32 = u_xlat9;
    let x_179 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_177 * x_179) + 0.180141002f);
    let x_184 : f32 = u_xlat9;
    let x_186 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_184 * x_186) + -0.330299497f);
    let x_191 : f32 = u_xlat9;
    let x_193 : f32 = u_xlat16.x;
    u_xlat9 = ((x_191 * x_193) + 0.999866009f);
    let x_197 : f32 = u_xlat9;
    let x_199 : f32 = u_xlat2.x;
    u_xlat16.x = (x_197 * x_199);
    let x_204 : f32 = u_xlat1.x;
    u_xlatb23 = (1.0f < abs(x_204));
    let x_208 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_208 * -2.0f) + 1.570796371f);
    let x_214 : bool = u_xlatb23;
    if (x_214) {
      let x_219 : f32 = u_xlat16.x;
      x_215 = x_219;
    } else {
      x_215 = 0.0f;
    }
    let x_221 : f32 = x_215;
    u_xlat16.x = x_221;
    let x_224 : f32 = u_xlat2.x;
    let x_225 : f32 = u_xlat9;
    let x_228 : f32 = u_xlat16.x;
    u_xlat2.x = ((x_224 * x_225) + x_228);
    let x_232 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_232, 1.0f);
    let x_239 : f32 = u_xlat1.x;
    let x_241 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_239 < -(x_241));
    let x_246 : bool = u_xlatb1.x;
    if (x_246) {
      let x_251 : f32 = u_xlat2.x;
      x_247 = -(x_251);
    } else {
      let x_255 : f32 = u_xlat2.x;
      x_247 = x_255;
    }
    let x_256 : f32 = x_247;
    u_xlat1.x = x_256;
    let x_258 : f32 = u_xlat22;
    let x_260 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_258 * x_260) + -1.0f);
    let x_264 : vec3<f32> = u_xlat0;
    let x_266 : vec4<f32> = u_xlat1;
    let x_269 : vec2<f32> = u_xlat14;
    let x_270 : vec2<f32> = ((vec2<f32>(x_264.x, x_264.y) * vec2<f32>(x_266.x, x_266.x)) + x_269);
    let x_271 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_270.x, x_270.y, x_271.z);
  }
  let x_283 : vec3<f32> = u_xlat8;
  let x_287 : f32 = x_26.x_GlobalMipBias.x;
  let x_288 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_283.x, x_283.y), x_287);
  u_xlat0 = vec3<f32>(x_288.x, x_288.y, x_288.z);
  let x_290 : vec3<f32> = u_xlat8;
  let x_294 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  let x_297 : vec2<f32> = ((vec2<f32>(x_290.x, x_290.y) * vec2<f32>(x_294.z, x_294.w)) + vec2<f32>(0.5f, 0.5f));
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_297.x, x_298.y, x_298.z, x_297.y);
  let x_300 : vec4<f32> = u_xlat1;
  let x_302 : vec2<f32> = floor(vec2<f32>(x_300.x, x_300.w));
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_302.x, x_302.y, x_303.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec2<f32> = fract(vec2<f32>(x_305.x, x_305.w));
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_307.x, x_308.y, x_308.z, x_307.y);
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat3 = ((-(vec4<f32>(x_310.x, x_310.w, x_310.x, x_310.w)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_318 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_318.x, x_318.w, x_318.x, x_318.w) * x_320) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_324 : vec4<f32> = u_xlat1;
  u_xlat16 = ((vec2<f32>(x_324.x, x_324.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_330 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : vec2<f32> = (vec2<f32>(x_330.x, x_330.w) * vec2<f32>(x_332.x, x_332.w));
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_337.x, x_337.y) * x_339) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_344 : vec4<f32> = u_xlat1;
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_344.x, x_344.w, x_344.x, x_344.w) * x_346) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
  let x_350 : vec2<f32> = u_xlat16;
  let x_353 : vec2<f32> = (-(x_350) + vec2<f32>(1.0f, 1.0f));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_353.x, x_354.y, x_354.z, x_353.y);
  let x_356 : vec4<f32> = u_xlat3;
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec2<f32> = (-(vec2<f32>(x_356.x, x_356.y)) + vec2<f32>(x_359.x, x_359.w));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_362.y, x_362.z, x_361.y);
  let x_364 : vec4<f32> = u_xlat3;
  let x_367 : vec4<f32> = u_xlat1;
  let x_369 : vec2<f32> = (-(vec2<f32>(x_364.z, x_364.w)) + vec2<f32>(x_367.x, x_367.w));
  let x_370 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_369.x, x_370.y, x_370.z, x_369.y);
  let x_373 : vec2<f32> = u_xlat16;
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat17 = (x_373 + vec2<f32>(x_374.z, x_374.w));
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec4<f32> = u_xlat3;
  let x_381 : vec2<f32> = (vec2<f32>(x_377.x, x_377.w) + vec2<f32>(x_379.x, x_379.y));
  let x_382 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
  let x_384 : vec2<f32> = u_xlat17;
  let x_388 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_384.x, x_384.y));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
  let x_391 : vec2<f32> = u_xlat16;
  let x_392 : vec4<f32> = u_xlat4;
  let x_395 : vec2<f32> = ((x_391 * vec2<f32>(x_392.x, x_392.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_396 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_395.x, x_395.y);
  let x_398 : vec4<f32> = u_xlat3;
  let x_399 : vec2<f32> = vec2<f32>(x_398.x, x_398.y);
  u_xlat16 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_399.x, x_399.y));
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec2<f32> = u_xlat16;
  let x_408 : vec2<f32> = ((vec2<f32>(x_404.x, x_404.w) * x_406) + vec2<f32>(1.0f, 1.0f));
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
  let x_412 : vec4<f32> = u_xlat2;
  let x_414 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_412.x, x_412.y, x_412.x, x_412.y) + vec4<f32>(x_414.z, x_414.w, x_414.x, x_414.w));
  let x_417 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_417 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_420 : vec4<f32> = u_xlat5;
  let x_422 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_420 * vec4<f32>(x_422.x, x_422.y, x_422.x, x_422.y));
  let x_425 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_425, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_433 : vec4<f32> = u_xlat5;
  let x_435 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_433.x, x_433.y), 0.0f);
  u_xlat6 = x_435;
  let x_439 : vec4<f32> = u_xlat5;
  let x_441 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_439.z, x_439.w), 0.0f);
  u_xlat5 = x_441;
  let x_442 : vec4<f32> = u_xlat3;
  let x_444 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_442.x, x_442.x, x_442.x, x_442.x) * x_444);
  let x_446 : vec2<f32> = u_xlat17;
  let x_448 : vec4<f32> = u_xlat6;
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_446.x, x_446.x, x_446.x, x_446.x) * x_448) + x_450);
  let x_452 : vec4<f32> = u_xlat2;
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_452.x, x_452.y, x_452.x, x_452.y) + vec4<f32>(x_454.z, x_454.y, x_454.x, x_454.y));
  let x_457 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_457 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_459 : vec4<f32> = u_xlat2;
  let x_461 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  u_xlat2 = (x_459 * vec4<f32>(x_461.x, x_461.y, x_461.x, x_461.y));
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_464, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_469 : vec4<f32> = u_xlat2;
  let x_471 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_469.x, x_469.y), 0.0f);
  u_xlat4 = x_471;
  let x_475 : vec4<f32> = u_xlat2;
  let x_477 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_475.z, x_475.w), 0.0f);
  u_xlat2 = x_477;
  let x_478 : vec4<f32> = u_xlat2;
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_478 * vec4<f32>(x_479.x, x_479.x, x_479.x, x_479.x));
  let x_482 : vec2<f32> = u_xlat17;
  let x_484 : vec4<f32> = u_xlat4;
  let x_486 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_482.x, x_482.x, x_482.x, x_482.x) * x_484) + x_486);
  let x_488 : vec4<f32> = u_xlat2;
  let x_489 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_488 * vec4<f32>(x_489.y, x_489.y, x_489.y, x_489.y));
  let x_492 : vec2<f32> = u_xlat17;
  let x_494 : vec4<f32> = u_xlat5;
  let x_496 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_492.y, x_492.y, x_492.y, x_492.y) * x_494) + x_496);
  let x_501 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb21 = (0.0f < x_501);
  let x_503 : bool = u_xlatb21;
  if (x_503) {
    let x_506 : vec4<f32> = u_xlat2;
    let x_508 : vec4<f32> = u_xlat2;
    let x_510 : vec3<f32> = (vec3<f32>(x_506.w, x_506.w, x_506.w) * vec3<f32>(x_508.x, x_508.y, x_508.z));
    let x_511 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
    let x_513 : vec4<f32> = u_xlat3;
    let x_517 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_518 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  }
  let x_520 : vec4<f32> = u_xlat2;
  let x_524 : vec4<f32> = x_26.x_Bloom_Params;
  let x_526 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(x_524.x, x_524.x, x_524.x));
  let x_527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat2;
  let x_532 : vec4<f32> = x_26.x_Bloom_Params;
  let x_535 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_532.y, x_532.z, x_532.w)) + x_535);
  let x_540 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_540);
  let x_542 : bool = u_xlatb21;
  if (x_542) {
    let x_545 : vec3<f32> = u_xlat8;
    let x_548 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_551 : vec2<f32> = (vec2<f32>(x_545.x, x_545.y) + -(vec2<f32>(x_548.x, x_548.y)));
    let x_552 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
    let x_554 : vec4<f32> = u_xlat1;
    let x_558 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_560 : vec2<f32> = (abs(vec2<f32>(x_554.x, x_554.y)) * vec2<f32>(x_558.z, x_558.z));
    let x_561 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_561.x, x_560.x, x_560.y, x_561.w);
    let x_564 : f32 = u_xlat1.y;
    let x_567 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_564 * x_567);
    let x_571 : vec4<f32> = u_xlat1;
    let x_573 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_571.x, x_571.z), vec2<f32>(x_573.x, x_573.z));
    let x_576 : f32 = u_xlat21;
    u_xlat21 = (-(x_576) + 1.0f);
    let x_579 : f32 = u_xlat21;
    u_xlat21 = max(x_579, 0.0f);
    let x_581 : f32 = u_xlat21;
    u_xlat21 = log2(x_581);
    let x_583 : f32 = u_xlat21;
    let x_585 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat21 = (x_583 * x_585);
    let x_587 : f32 = u_xlat21;
    u_xlat21 = exp2(x_587);
    let x_590 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_594 : vec3<f32> = (-(vec3<f32>(x_590.x, x_590.y, x_590.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_595 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
    let x_597 : f32 = u_xlat21;
    let x_599 : vec4<f32> = u_xlat1;
    let x_603 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_605 : vec3<f32> = ((vec3<f32>(x_597, x_597, x_597) * vec3<f32>(x_599.x, x_599.y, x_599.z)) + vec3<f32>(x_603.x, x_603.y, x_603.z));
    let x_606 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
    let x_608 : vec3<f32> = u_xlat0;
    let x_609 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_608 * vec3<f32>(x_609.x, x_609.y, x_609.z));
  }
  let x_612 : vec3<f32> = u_xlat0;
  let x_616 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_612.z, x_612.x, x_612.y) * vec3<f32>(x_616.w, x_616.w, x_616.w));
  let x_619 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_619 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_626 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_626, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_629 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_629);
  let x_631 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_631 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_638 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_638, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_643 : vec3<f32> = u_xlat0;
  let x_645 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat7 = (x_643 * vec3<f32>(x_645.z, x_645.z, x_645.z));
  let x_649 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_649);
  let x_653 : vec4<f32> = x_26.x_Lut_Params;
  let x_655 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) * vec2<f32>(0.5f, 0.5f));
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
  let x_658 : vec3<f32> = u_xlat7;
  let x_661 : vec4<f32> = x_26.x_Lut_Params;
  let x_664 : vec4<f32> = u_xlat1;
  let x_666 : vec2<f32> = ((vec2<f32>(x_658.y, x_658.z) * vec2<f32>(x_661.x, x_661.y)) + vec2<f32>(x_664.x, x_664.y));
  let x_667 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_667.x, x_666.x, x_666.y, x_667.w);
  let x_670 : f32 = u_xlat7.x;
  let x_672 : f32 = x_26.x_Lut_Params.y;
  let x_675 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_670 * x_672) + x_675);
  let x_682 : vec4<f32> = u_xlat1;
  let x_684 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_682.x, x_682.z), 0.0f);
  let x_685 : vec3<f32> = vec3<f32>(x_684.x, x_684.y, x_684.z);
  let x_686 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_689 : f32 = x_26.x_Lut_Params.y;
  u_xlat3.x = x_689;
  u_xlat3.y = 0.0f;
  let x_692 : vec4<f32> = u_xlat1;
  let x_694 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec2<f32>(x_692.x, x_692.z) + vec2<f32>(x_694.x, x_694.y));
  let x_700 : vec2<f32> = u_xlat14;
  let x_701 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_700, 0.0f);
  let x_702 : vec3<f32> = vec3<f32>(x_701.x, x_701.y, x_701.z);
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_706 : f32 = u_xlat0.x;
  let x_708 : f32 = x_26.x_Lut_Params.z;
  let x_711 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_706 * x_708) + -(x_711));
  let x_715 : vec4<f32> = u_xlat2;
  let x_718 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec3<f32> = u_xlat0;
  let x_723 : vec3<f32> = u_xlat7;
  let x_725 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_721.x, x_721.x, x_721.x) * x_723) + vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_730 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_730);
  let x_732 : bool = u_xlatb21;
  if (x_732) {
    let x_735 : vec3<f32> = u_xlat0;
    u_xlat0 = x_735;
    let x_736 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_736, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_740 : vec3<f32> = u_xlat0;
    let x_743 : vec3<f32> = (x_740 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_744 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
    let x_746 : vec3<f32> = u_xlat0;
    let x_747 : vec3<f32> = log2(x_746);
    let x_748 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
    let x_750 : vec4<f32> = u_xlat2;
    let x_754 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_755 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
    let x_757 : vec4<f32> = u_xlat2;
    let x_759 : vec3<f32> = exp2(vec3<f32>(x_757.x, x_757.y, x_757.z));
    let x_760 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
    let x_762 : vec4<f32> = u_xlat2;
    let x_769 : vec3<f32> = ((vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_770 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
    let x_775 : vec3<f32> = u_xlat0;
    let x_778 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_775.x, x_775.y, x_775.z, x_775.x));
    u_xlatb3 = vec3<bool>(x_778.x, x_778.y, x_778.z);
    let x_781 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_781;
    let x_783 : bool = u_xlatb3.x;
    if (x_783) {
      let x_788 : f32 = u_xlat1.x;
      x_784 = x_788;
    } else {
      let x_791 : f32 = u_xlat2.x;
      x_784 = x_791;
    }
    let x_792 : f32 = x_784;
    hlslcc_movcTemp.x = x_792;
    let x_795 : bool = u_xlatb3.y;
    if (x_795) {
      let x_800 : f32 = u_xlat1.y;
      x_796 = x_800;
    } else {
      let x_803 : f32 = u_xlat2.y;
      x_796 = x_803;
    }
    let x_804 : f32 = x_796;
    hlslcc_movcTemp.y = x_804;
    let x_807 : bool = u_xlatb3.z;
    if (x_807) {
      let x_812 : f32 = u_xlat1.z;
      x_808 = x_812;
    } else {
      let x_815 : f32 = u_xlat2.z;
      x_808 = x_815;
    }
    let x_816 : f32 = x_808;
    hlslcc_movcTemp.z = x_816;
    let x_818 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_818;
    let x_819 : vec4<f32> = u_xlat1;
    let x_822 : vec4<f32> = x_26.x_UserLut_Params;
    let x_824 : vec3<f32> = (vec3<f32>(x_819.z, x_819.x, x_819.y) * vec3<f32>(x_822.z, x_822.z, x_822.z));
    let x_825 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
    let x_828 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_828);
    let x_831 : vec4<f32> = x_26.x_UserLut_Params;
    let x_833 : vec2<f32> = (vec2<f32>(x_831.x, x_831.y) * vec2<f32>(0.5f, 0.5f));
    let x_834 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_833.x, x_834.y, x_834.z, x_833.y);
    let x_836 : vec4<f32> = u_xlat2;
    let x_839 : vec4<f32> = x_26.x_UserLut_Params;
    let x_842 : vec4<f32> = u_xlat2;
    let x_844 : vec2<f32> = ((vec2<f32>(x_836.y, x_836.z) * vec2<f32>(x_839.x, x_839.y)) + vec2<f32>(x_842.x, x_842.w));
    let x_845 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_845.x, x_844.x, x_844.y, x_845.w);
    let x_847 : f32 = u_xlat21;
    let x_849 : f32 = x_26.x_UserLut_Params.y;
    let x_852 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_847 * x_849) + x_852);
    let x_859 : vec4<f32> = u_xlat2;
    let x_861 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_859.x, x_859.z), 0.0f);
    let x_862 : vec3<f32> = vec3<f32>(x_861.x, x_861.y, x_861.z);
    let x_863 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_866 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_866;
    u_xlat4.y = 0.0f;
    let x_869 : vec4<f32> = u_xlat2;
    let x_871 : vec4<f32> = u_xlat4;
    let x_873 : vec2<f32> = (vec2<f32>(x_869.x, x_869.z) + vec2<f32>(x_871.x, x_871.y));
    let x_874 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
    let x_879 : vec4<f32> = u_xlat2;
    let x_881 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_879.x, x_879.y), 0.0f);
    let x_882 : vec3<f32> = vec3<f32>(x_881.x, x_881.y, x_881.z);
    let x_883 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
    let x_886 : f32 = u_xlat1.z;
    let x_888 : f32 = x_26.x_UserLut_Params.z;
    let x_890 : f32 = u_xlat21;
    u_xlat21 = ((x_886 * x_888) + -(x_890));
    let x_893 : vec4<f32> = u_xlat3;
    let x_896 : vec4<f32> = u_xlat2;
    let x_898 : vec3<f32> = (-(vec3<f32>(x_893.x, x_893.y, x_893.z)) + vec3<f32>(x_896.x, x_896.y, x_896.z));
    let x_899 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
    let x_901 : f32 = u_xlat21;
    let x_903 : vec4<f32> = u_xlat2;
    let x_906 : vec4<f32> = u_xlat3;
    let x_908 : vec3<f32> = ((vec3<f32>(x_901, x_901, x_901) * vec3<f32>(x_903.x, x_903.y, x_903.z)) + vec3<f32>(x_906.x, x_906.y, x_906.z));
    let x_909 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
    let x_911 : vec4<f32> = u_xlat1;
    let x_914 : vec4<f32> = u_xlat2;
    let x_916 : vec3<f32> = (-(vec3<f32>(x_911.x, x_911.y, x_911.z)) + vec3<f32>(x_914.x, x_914.y, x_914.z));
    let x_917 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
    let x_920 : vec4<f32> = x_26.x_UserLut_Params;
    let x_922 : vec4<f32> = u_xlat2;
    let x_925 : vec4<f32> = u_xlat1;
    let x_927 : vec3<f32> = ((vec3<f32>(x_920.w, x_920.w, x_920.w) * vec3<f32>(x_922.x, x_922.y, x_922.z)) + vec3<f32>(x_925.x, x_925.y, x_925.z));
    let x_928 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
    let x_930 : vec4<f32> = u_xlat1;
    let x_934 : vec3<f32> = (vec3<f32>(x_930.x, x_930.y, x_930.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_935 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
    let x_937 : vec4<f32> = u_xlat1;
    let x_941 : vec3<f32> = (vec3<f32>(x_937.x, x_937.y, x_937.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_942 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
    let x_944 : vec4<f32> = u_xlat3;
    let x_948 : vec3<f32> = (vec3<f32>(x_944.x, x_944.y, x_944.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_949 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
    let x_951 : vec4<f32> = u_xlat3;
    let x_954 : vec3<f32> = log2(abs(vec3<f32>(x_951.x, x_951.y, x_951.z)));
    let x_955 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
    let x_957 : vec4<f32> = u_xlat3;
    let x_961 : vec3<f32> = (vec3<f32>(x_957.x, x_957.y, x_957.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_962 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
    let x_964 : vec4<f32> = u_xlat3;
    let x_966 : vec3<f32> = exp2(vec3<f32>(x_964.x, x_964.y, x_964.z));
    let x_967 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
    let x_971 : vec4<f32> = u_xlat1;
    let x_973 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_971.x, x_971.y, x_971.z, x_971.x));
    u_xlatb1 = vec3<bool>(x_973.x, x_973.y, x_973.z);
    let x_976 : bool = u_xlatb1.x;
    if (x_976) {
      let x_981 : f32 = u_xlat2.x;
      x_977 = x_981;
    } else {
      let x_984 : f32 = u_xlat3.x;
      x_977 = x_984;
    }
    let x_985 : f32 = x_977;
    u_xlat0.x = x_985;
    let x_988 : bool = u_xlatb1.y;
    if (x_988) {
      let x_993 : f32 = u_xlat2.y;
      x_989 = x_993;
    } else {
      let x_996 : f32 = u_xlat3.y;
      x_989 = x_996;
    }
    let x_997 : f32 = x_989;
    u_xlat0.y = x_997;
    let x_1000 : bool = u_xlatb1.z;
    if (x_1000) {
      let x_1005 : f32 = u_xlat2.z;
      x_1001 = x_1005;
    } else {
      let x_1008 : f32 = u_xlat3.z;
      x_1001 = x_1008;
    }
    let x_1009 : f32 = x_1001;
    u_xlat0.z = x_1009;
  }
  let x_1011 : vec2<f32> = vs_TEXCOORD0;
  let x_1014 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_1018 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_1020 : vec2<f32> = ((x_1011 * vec2<f32>(x_1014.x, x_1014.y)) + vec2<f32>(x_1018.z, x_1018.w));
  let x_1021 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1020.x, x_1020.y, x_1021.z, x_1021.w);
  let x_1028 : vec4<f32> = u_xlat1;
  let x_1031 : f32 = x_26.x_GlobalMipBias.x;
  let x_1032 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1028.x, x_1028.y), x_1031);
  u_xlat21 = x_1032.w;
  let x_1034 : f32 = u_xlat21;
  u_xlat21 = (x_1034 + -0.5f);
  let x_1036 : f32 = u_xlat21;
  let x_1037 : f32 = u_xlat21;
  u_xlat21 = (x_1036 + x_1037);
  let x_1039 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_1039, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1047 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1047);
  let x_1052 : f32 = x_26.x_Grain_Params.y;
  let x_1054 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1052 * -(x_1054)) + 1.0f);
  let x_1059 : f32 = u_xlat21;
  let x_1061 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1059, x_1059, x_1059) * x_1061);
  let x_1063 : vec3<f32> = u_xlat8;
  let x_1066 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat8 = (x_1063 * vec3<f32>(x_1066.x, x_1066.x, x_1066.x));
  let x_1069 : vec3<f32> = u_xlat8;
  let x_1070 : vec4<f32> = u_xlat1;
  let x_1073 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1069 * vec3<f32>(x_1070.x, x_1070.x, x_1070.x)) + x_1073);
  let x_1077 : vec3<f32> = u_xlat0;
  let x_1078 : vec3<f32> = sqrt(x_1077);
  let x_1079 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
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

