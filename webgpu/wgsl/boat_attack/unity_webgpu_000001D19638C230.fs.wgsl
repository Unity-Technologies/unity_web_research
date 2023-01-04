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
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : bool;
  var x_229 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb5 : bool;
  var x_621 : f32;
  var x_630 : f32;
  var u_xlatb10 : vec2<bool>;
  var u_xlatb8 : bool;
  var x_761 : f32;
  var u_xlatb16 : bool;
  var x_812 : f32;
  var x_839 : f32;
  var x_863 : f32;
  var x_874 : f32;
  var u_xlatb0 : vec3<bool>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1263 : f32;
  var x_1275 : f32;
  var x_1287 : f32;
  var u_xlat4 : vec2<f32>;
  var x_1432 : f32;
  var x_1444 : f32;
  var x_1456 : f32;
  var x_1630 : f32;
  var x_1642 : f32;
  var x_1654 : f32;
  var x_1706 : f32;
  var x_1718 : f32;
  var x_1730 : f32;
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
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
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
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11.x = (1.0f / x_115);
    let x_119 : f32 = u_xlat6.x;
    let x_121 : f32 = u_xlat11.x;
    u_xlat6.x = ((x_119 * x_121) + -1.0f);
    let x_126 : vec3<f32> = u_xlat0;
    let x_128 : vec3<f32> = u_xlat6;
    let x_131 : vec2<f32> = u_xlat10;
    let x_132 : vec2<f32> = ((vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_128.x, x_128.x)) + x_131);
    let x_133 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  } else {
    let x_138 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_138);
    let x_140 : f32 = u_xlat16;
    let x_142 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat16 = (x_140 * x_142);
    let x_145 : f32 = u_xlat1.x;
    let x_147 : f32 = x_26.x_Distortion_Params2.y;
    u_xlat1.x = (x_145 * x_147);
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_151), 1.0f);
    let x_157 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_157), 1.0f);
    let x_160 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_160);
    let x_162 : f32 = u_xlat7;
    let x_164 : f32 = u_xlat2.x;
    u_xlat2.x = (x_162 * x_164);
    let x_168 : f32 = u_xlat2.x;
    let x_170 : f32 = u_xlat2.x;
    u_xlat7 = (x_168 * x_170);
    let x_173 : f32 = u_xlat7;
    u_xlat12 = ((x_173 * 0.0208351f) + -0.085133001f);
    let x_178 : f32 = u_xlat7;
    let x_179 : f32 = u_xlat12;
    u_xlat12 = ((x_178 * x_179) + 0.180141002f);
    let x_183 : f32 = u_xlat7;
    let x_184 : f32 = u_xlat12;
    u_xlat12 = ((x_183 * x_184) + -0.330299497f);
    let x_188 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat12;
    u_xlat7 = ((x_188 * x_189) + 0.999866009f);
    let x_193 : f32 = u_xlat7;
    let x_195 : f32 = u_xlat2.x;
    u_xlat12 = (x_193 * x_195);
    let x_199 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_199));
    let x_202 : f32 = u_xlat12;
    u_xlat12 = ((x_202 * -2.0f) + 1.570796371f);
    let x_207 : bool = u_xlatb17;
    let x_208 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_208, x_207);
    let x_211 : f32 = u_xlat2.x;
    let x_212 : f32 = u_xlat7;
    let x_214 : f32 = u_xlat12;
    u_xlat2.x = ((x_211 * x_212) + x_214);
    let x_218 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_218, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1 = (x_223 < -(x_225));
    let x_228 : bool = u_xlatb1;
    if (x_228) {
      let x_233 : f32 = u_xlat2.x;
      x_229 = -(x_233);
    } else {
      let x_237 : f32 = u_xlat2.x;
      x_229 = x_237;
    }
    let x_238 : f32 = x_229;
    u_xlat1.x = x_238;
    let x_240 : f32 = u_xlat16;
    let x_242 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_240 * x_242) + -1.0f);
    let x_246 : vec3<f32> = u_xlat0;
    let x_248 : vec4<f32> = u_xlat1;
    let x_251 : vec2<f32> = u_xlat10;
    let x_252 : vec2<f32> = ((vec2<f32>(x_246.x, x_246.y) * vec2<f32>(x_248.x, x_248.x)) + x_251);
    let x_253 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_252.x, x_252.y, x_253.z);
  }
  let x_265 : vec3<f32> = u_xlat6;
  let x_269 : f32 = x_26.x_GlobalMipBias.x;
  let x_270 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_265.x, x_265.y), x_269);
  u_xlat0 = vec3<f32>(x_270.x, x_270.y, x_270.z);
  let x_276 : vec3<f32> = u_xlat6;
  let x_279 : f32 = x_26.x_GlobalMipBias.x;
  let x_280 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_276.x, x_276.y), x_279);
  u_xlat2 = x_280;
  let x_284 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_284);
  let x_286 : bool = u_xlatb15;
  if (x_286) {
    let x_289 : vec4<f32> = u_xlat2;
    let x_291 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_289.w, x_289.w, x_289.w) * vec3<f32>(x_291.x, x_291.y, x_291.z));
    let x_294 : vec3<f32> = u_xlat3;
    let x_297 : vec3<f32> = (x_294 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_298 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  }
  let x_300 : vec4<f32> = u_xlat2;
  let x_304 : vec4<f32> = x_26.x_Bloom_Params;
  let x_306 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_304.x, x_304.x, x_304.x));
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat2;
  let x_312 : vec4<f32> = x_26.x_Bloom_Params;
  let x_315 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_312.y, x_312.z, x_312.w)) + x_315);
  let x_317 : vec3<f32> = u_xlat6;
  let x_321 : vec4<f32> = x_26.x_LensDirt_Params;
  let x_325 : vec4<f32> = x_26.x_LensDirt_Params;
  let x_327 : vec2<f32> = ((vec2<f32>(x_317.x, x_317.y) * vec2<f32>(x_321.x, x_321.y)) + vec2<f32>(x_325.z, x_325.w));
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_327.x, x_328.y, x_328.z, x_327.y);
  let x_334 : vec4<f32> = u_xlat1;
  let x_337 : f32 = x_26.x_GlobalMipBias.x;
  let x_338 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_334.x, x_334.w), x_337);
  u_xlat3 = vec3<f32>(x_338.x, x_338.y, x_338.z);
  let x_340 : vec3<f32> = u_xlat3;
  let x_343 : f32 = x_26.x_LensDirt_Intensity;
  u_xlat3 = (x_340 * vec3<f32>(x_343, x_343, x_343));
  let x_346 : vec3<f32> = u_xlat3;
  let x_347 : vec4<f32> = u_xlat2;
  let x_350 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_346 * vec3<f32>(x_347.x, x_347.y, x_347.z)) + x_350);
  let x_355 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_355);
  let x_357 : bool = u_xlatb15;
  if (x_357) {
    let x_360 : vec3<f32> = u_xlat6;
    let x_363 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_366 : vec2<f32> = (vec2<f32>(x_360.x, x_360.y) + -(vec2<f32>(x_363.x, x_363.y)));
    let x_367 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
    let x_369 : vec4<f32> = u_xlat1;
    let x_373 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_375 : vec2<f32> = (abs(vec2<f32>(x_369.x, x_369.y)) * vec2<f32>(x_373.z, x_373.z));
    let x_376 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_376.x, x_375.x, x_375.y, x_376.w);
    let x_379 : f32 = u_xlat1.y;
    let x_382 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_379 * x_382);
    let x_386 : vec4<f32> = u_xlat1;
    let x_388 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_386.x, x_386.z), vec2<f32>(x_388.x, x_388.z));
    let x_391 : f32 = u_xlat15;
    u_xlat15 = (-(x_391) + 1.0f);
    let x_394 : f32 = u_xlat15;
    u_xlat15 = max(x_394, 0.0f);
    let x_396 : f32 = u_xlat15;
    u_xlat15 = log2(x_396);
    let x_398 : f32 = u_xlat15;
    let x_400 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_398 * x_400);
    let x_402 : f32 = u_xlat15;
    u_xlat15 = exp2(x_402);
    let x_405 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_409 : vec3<f32> = (-(vec3<f32>(x_405.x, x_405.y, x_405.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_410 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
    let x_412 : f32 = u_xlat15;
    let x_414 : vec4<f32> = u_xlat1;
    let x_418 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_420 : vec3<f32> = ((vec3<f32>(x_412, x_412, x_412) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + vec3<f32>(x_418.x, x_418.y, x_418.z));
    let x_421 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    let x_423 : vec3<f32> = u_xlat0;
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_423 * vec3<f32>(x_424.x, x_424.y, x_424.z));
  }
  let x_427 : vec3<f32> = u_xlat0;
  let x_430 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (x_427 * vec3<f32>(x_430.w, x_430.w, x_430.w));
  let x_437 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), x_437);
  let x_444 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), x_444);
  let x_451 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), x_451);
  let x_455 : f32 = u_xlat6.y;
  let x_457 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_455, x_457);
  let x_461 : f32 = u_xlat6.z;
  let x_463 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_461, x_463);
  let x_468 : f32 = u_xlat6.y;
  let x_470 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_468, x_470);
  let x_474 : f32 = u_xlat6.z;
  let x_476 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_474, x_476);
  let x_479 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_479.x, x_479.y, x_479.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
  let x_486 : f32 = u_xlat0.x;
  let x_489 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_486) + x_489);
  let x_493 : f32 = u_xlat0.x;
  let x_495 : f32 = u_xlat0.z;
  u_xlat0.x = (x_493 / x_495);
  let x_498 : vec3<f32> = u_xlat6;
  let x_501 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_498.y, x_498.x, x_498.z)) + vec3<f32>(x_501.z, x_501.y, x_501.x));
  let x_504 : vec3<f32> = u_xlat5;
  let x_506 : vec3<f32> = u_xlat6;
  let x_508 : vec2<f32> = (vec2<f32>(x_504.x, x_504.y) * vec2<f32>(x_506.z, x_506.y));
  let x_509 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_508.x, x_508.y, x_509.z);
  let x_512 : f32 = u_xlat5.y;
  let x_514 : f32 = u_xlat5.x;
  u_xlat5.x = (x_512 + x_514);
  let x_518 : f32 = u_xlat6.x;
  let x_520 : f32 = u_xlat5.z;
  let x_523 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_518 * x_520) + x_523);
  let x_527 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_527, 0.0f);
  let x_531 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_531);
  let x_535 : f32 = u_xlat6.y;
  let x_537 : f32 = u_xlat6.z;
  u_xlat10.x = (x_535 + x_537);
  let x_541 : f32 = u_xlat6.x;
  let x_543 : f32 = u_xlat10.x;
  u_xlat10.x = (x_541 + x_543);
  let x_547 : f32 = u_xlat5.x;
  let x_551 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_547 * 1.75f) + x_551);
  let x_555 : f32 = u_xlat0.x;
  u_xlat15 = (x_555 + -0.400000006f);
  let x_558 : f32 = u_xlat15;
  u_xlat1.x = (x_558 * 2.5f);
  let x_563 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_563)) + 1.0f);
  let x_569 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_569, 0.0f);
  let x_572 : f32 = u_xlat15;
  u_xlatb15 = (x_572 >= 0.0f);
  let x_574 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_574);
  let x_577 : f32 = u_xlat1.x;
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_577) * x_580) + 1.0f);
  let x_584 : f32 = u_xlat15;
  let x_586 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_584 * x_586) + 1.0f);
  let x_590 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_590.x, x_590.z) * vec2<f32>(0.333333343f, 0.025f));
  let x_598 : f32 = u_xlat5.x;
  u_xlatb1 = (0.159999996f >= x_598);
  let x_602 : f32 = u_xlat5.x;
  u_xlatb5 = (x_602 >= 0.479999989f);
  let x_607 : f32 = u_xlat10.x;
  u_xlat10.x = (0.079999998f / x_607);
  let x_611 : f32 = u_xlat10.x;
  u_xlat10.x = (x_611 + -0.5f);
  let x_615 : f32 = u_xlat10.x;
  let x_617 : f32 = u_xlat10.y;
  u_xlat10.x = (x_615 * x_617);
  let x_620 : bool = u_xlatb5;
  if (x_620) {
    x_621 = 0.0f;
  } else {
    let x_626 : f32 = u_xlat10.x;
    x_621 = x_626;
  }
  let x_627 : f32 = x_621;
  u_xlat5.x = x_627;
  let x_629 : bool = u_xlatb1;
  if (x_629) {
    let x_634 : f32 = u_xlat10.y;
    x_630 = x_634;
  } else {
    let x_637 : f32 = u_xlat5.x;
    x_630 = x_637;
  }
  let x_638 : f32 = x_630;
  u_xlat5.x = x_638;
  let x_641 : f32 = u_xlat5.x;
  u_xlat5.x = (x_641 + 1.0f);
  let x_644 : vec3<f32> = u_xlat5;
  let x_646 : vec3<f32> = u_xlat6;
  let x_647 : vec3<f32> = (vec3<f32>(x_644.x, x_644.x, x_644.x) * x_646);
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_648.x, x_647.x, x_647.y, x_647.z);
  let x_653 : vec4<f32> = u_xlat2;
  let x_655 : vec4<f32> = u_xlat2;
  let x_658 : vec4<bool> = (vec4<f32>(x_653.z, x_653.w, x_653.z, x_653.w) == vec4<f32>(x_655.y, x_655.z, x_655.y, x_655.z));
  u_xlatb10 = vec2<bool>(x_658.x, x_658.y);
  let x_661 : bool = u_xlatb10.y;
  let x_663 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_661 & x_663);
  let x_667 : f32 = u_xlat6.y;
  let x_669 : f32 = u_xlat5.x;
  let x_672 : f32 = u_xlat2.w;
  u_xlat15 = ((x_667 * x_669) + -(x_672));
  let x_675 : f32 = u_xlat15;
  u_xlat15 = (x_675 * 1.732050776f);
  let x_679 : f32 = u_xlat2.y;
  let x_683 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_679 * 2.0f) + -(x_683));
  let x_688 : f32 = u_xlat6.z;
  let x_691 : f32 = u_xlat5.x;
  let x_694 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_688) * x_691) + x_694);
  let x_697 : f32 = u_xlat15;
  let x_700 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_697), abs(x_700));
  let x_704 : f32 = u_xlat15;
  let x_707 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_704), abs(x_707));
  let x_710 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_710);
  let x_712 : f32 = u_xlat16;
  let x_714 : f32 = u_xlat11.x;
  u_xlat11.x = (x_712 * x_714);
  let x_718 : f32 = u_xlat11.x;
  let x_720 : f32 = u_xlat11.x;
  u_xlat16 = (x_718 * x_720);
  let x_722 : f32 = u_xlat16;
  u_xlat3.x = ((x_722 * 0.0208351f) + -0.085133001f);
  let x_726 : f32 = u_xlat16;
  let x_728 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_726 * x_728) + 0.180141002f);
  let x_732 : f32 = u_xlat16;
  let x_734 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_732 * x_734) + -0.330299497f);
  let x_738 : f32 = u_xlat16;
  let x_740 : f32 = u_xlat3.x;
  u_xlat16 = ((x_738 * x_740) + 0.999866009f);
  let x_743 : f32 = u_xlat16;
  let x_745 : f32 = u_xlat11.x;
  u_xlat3.x = (x_743 * x_745);
  let x_750 : f32 = u_xlat1.x;
  let x_752 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_750) < abs(x_752));
  let x_756 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_756 * -2.0f) + 1.570796371f);
  let x_760 : bool = u_xlatb8;
  if (x_760) {
    let x_765 : f32 = u_xlat3.x;
    x_761 = x_765;
  } else {
    x_761 = 0.0f;
  }
  let x_767 : f32 = x_761;
  u_xlat3.x = x_767;
  let x_770 : f32 = u_xlat11.x;
  let x_771 : f32 = u_xlat16;
  let x_774 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_770 * x_771) + x_774);
  let x_779 : f32 = u_xlat1.x;
  let x_781 : f32 = u_xlat1.x;
  u_xlatb16 = (x_779 < -(x_781));
  let x_784 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.141592741f, x_784);
  let x_787 : f32 = u_xlat16;
  let x_789 : f32 = u_xlat11.x;
  u_xlat11.x = (x_787 + x_789);
  let x_792 : f32 = u_xlat15;
  let x_794 : f32 = u_xlat1.x;
  u_xlat16 = min(x_792, x_794);
  let x_796 : f32 = u_xlat15;
  let x_798 : f32 = u_xlat1.x;
  u_xlat15 = max(x_796, x_798);
  let x_800 : f32 = u_xlat16;
  let x_801 : f32 = u_xlat16;
  u_xlatb1 = (x_800 < -(x_801));
  let x_804 : f32 = u_xlat15;
  let x_805 : f32 = u_xlat15;
  u_xlatb15 = (x_804 >= -(x_805));
  let x_808 : bool = u_xlatb15;
  let x_809 : bool = u_xlatb1;
  u_xlatb15 = (x_808 & x_809);
  let x_811 : bool = u_xlatb15;
  if (x_811) {
    let x_816 : f32 = u_xlat11.x;
    x_812 = -(x_816);
  } else {
    let x_820 : f32 = u_xlat11.x;
    x_812 = x_820;
  }
  let x_821 : f32 = x_812;
  u_xlat15 = x_821;
  let x_822 : f32 = u_xlat15;
  u_xlat15 = (x_822 * 57.295780182f);
  let x_826 : bool = u_xlatb10.x;
  let x_827 : f32 = u_xlat15;
  u_xlat10.x = select(x_827, 0.0f, x_826);
  let x_831 : f32 = u_xlat10.x;
  u_xlatb15 = (x_831 < 0.0f);
  let x_834 : f32 = u_xlat10.x;
  u_xlat1.x = (x_834 + 360.0f);
  let x_838 : bool = u_xlatb15;
  if (x_838) {
    let x_843 : f32 = u_xlat1.x;
    x_839 = x_843;
  } else {
    let x_846 : f32 = u_xlat10.x;
    x_839 = x_846;
  }
  let x_847 : f32 = x_839;
  u_xlat10.x = x_847;
  let x_850 : f32 = u_xlat10.x;
  u_xlatb15 = (x_850 < -180.0f);
  let x_855 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_855);
  let x_857 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_857.x, x_857.x) + vec2<f32>(360.0f, -360.0f));
  let x_862 : bool = u_xlatb1;
  if (x_862) {
    let x_867 : f32 = u_xlat11.y;
    x_863 = x_867;
  } else {
    let x_870 : f32 = u_xlat10.x;
    x_863 = x_870;
  }
  let x_871 : f32 = x_863;
  u_xlat10.x = x_871;
  let x_873 : bool = u_xlatb15;
  if (x_873) {
    let x_878 : f32 = u_xlat11.x;
    x_874 = x_878;
  } else {
    let x_881 : f32 = u_xlat10.x;
    x_874 = x_881;
  }
  let x_882 : f32 = x_874;
  u_xlat10.x = x_882;
  let x_885 : f32 = u_xlat10.x;
  u_xlat10.x = (x_885 * 0.014814815f);
  let x_890 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_890)) + 1.0f);
  let x_896 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_896, 0.0f);
  let x_900 : f32 = u_xlat10.x;
  u_xlat15 = ((x_900 * -2.0f) + 3.0f);
  let x_905 : f32 = u_xlat10.x;
  let x_907 : f32 = u_xlat10.x;
  u_xlat10.x = (x_905 * x_907);
  let x_911 : f32 = u_xlat10.x;
  let x_912 : f32 = u_xlat15;
  u_xlat10.x = (x_911 * x_912);
  let x_916 : f32 = u_xlat10.x;
  let x_918 : f32 = u_xlat10.x;
  u_xlat10.x = (x_916 * x_918);
  let x_922 : f32 = u_xlat0.x;
  let x_924 : f32 = u_xlat10.x;
  u_xlat0.x = (x_922 * x_924);
  let x_928 : f32 = u_xlat6.x;
  let x_931 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_928) * x_931) + 0.029999999f);
  let x_937 : f32 = u_xlat5.x;
  let x_939 : f32 = u_xlat0.x;
  u_xlat0.x = (x_937 * x_939);
  let x_943 : f32 = u_xlat0.x;
  let x_947 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_943 * 0.180000007f) + x_947);
  let x_954 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_954.x, x_954.z, x_954.w));
  let x_962 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_962.x, x_962.z, x_962.w));
  let x_970 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_970.x, x_970.z, x_970.w));
  let x_974 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_974, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_977 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_977, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_983 : f32 = u_xlat15;
  let x_986 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_983, x_983, x_983)) + x_986);
  let x_988 : vec3<f32> = u_xlat0;
  let x_992 : f32 = u_xlat15;
  u_xlat0 = ((x_988 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_992, x_992, x_992));
  let x_995 : vec3<f32> = u_xlat0;
  let x_998 : vec3<f32> = (x_995 + vec3<f32>(0.024578599f, 0.024578599f, 0.024578599f));
  let x_999 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec3<f32> = u_xlat0;
  let x_1002 : vec4<f32> = u_xlat1;
  let x_1007 : vec3<f32> = ((x_1001 * vec3<f32>(x_1002.x, x_1002.y, x_1002.z)) + vec3<f32>(-0.000090537f, -0.000090537f, -0.000090537f));
  let x_1008 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1010 : vec3<f32> = u_xlat0;
  let x_1016 : vec3<f32> = ((x_1010 * vec3<f32>(0.983729005f, 0.983729005f, 0.983729005f)) + vec3<f32>(0.432951003f, 0.432951003f, 0.432951003f));
  let x_1017 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1019 : vec3<f32> = u_xlat0;
  let x_1020 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1019 * vec3<f32>(x_1020.x, x_1020.y, x_1020.z)) + vec3<f32>(0.238080993f, 0.238080993f, 0.238080993f));
  let x_1026 : vec4<f32> = u_xlat1;
  let x_1028 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1026.x, x_1026.y, x_1026.z) / x_1028);
  let x_1034 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_1034);
  let x_1041 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_1041);
  let x_1048 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_1048);
  let x_1051 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1051.x, x_1051.y, x_1051.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1056 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1056, 0.0001f);
  let x_1059 : vec4<f32> = u_xlat1;
  let x_1061 : vec3<f32> = u_xlat0;
  let x_1063 : vec2<f32> = (vec2<f32>(x_1059.x, x_1059.y) / vec2<f32>(x_1061.x, x_1061.x));
  let x_1064 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1063.x, x_1063.y, x_1064.z);
  let x_1067 : f32 = u_xlat1.y;
  u_xlat15 = max(x_1067, 0.0f);
  let x_1069 : f32 = u_xlat15;
  u_xlat15 = min(x_1069, 65504.0f);
  let x_1072 : f32 = u_xlat15;
  u_xlat15 = log2(x_1072);
  let x_1074 : f32 = u_xlat15;
  u_xlat15 = (x_1074 * 0.981100023f);
  let x_1077 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_1077);
  let x_1081 : f32 = u_xlat0.y;
  u_xlat15 = max(x_1081, 0.0001f);
  let x_1084 : f32 = u_xlat1.y;
  let x_1085 : f32 = u_xlat15;
  u_xlat15 = (x_1084 / x_1085);
  let x_1088 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_1088) + 1.0f);
  let x_1092 : f32 = u_xlat0.y;
  let x_1094 : f32 = u_xlat16;
  u_xlat0.z = (-(x_1092) + x_1094);
  let x_1097 : f32 = u_xlat15;
  let x_1099 : vec3<f32> = u_xlat0;
  let x_1101 : vec2<f32> = (vec2<f32>(x_1097, x_1097) * vec2<f32>(x_1099.x, x_1099.z));
  let x_1102 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1101.x, x_1102.y, x_1101.y, x_1102.w);
  let x_1108 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1116 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1124 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1128 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_1128, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_1130 : f32 = u_xlat15;
  let x_1133 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1130, x_1130, x_1130)) + x_1133);
  let x_1135 : vec3<f32> = u_xlat0;
  let x_1139 : f32 = u_xlat15;
  u_xlat0 = ((x_1135 * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_1139, x_1139, x_1139));
  let x_1142 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_1142);
  let x_1145 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_1145);
  let x_1148 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_1148);
  let x_1155 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1163 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1171 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
  let x_1179 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), x_1179);
  let x_1183 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1183, 0.0f, 1.0f);
  let x_1190 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), x_1190);
  let x_1194 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1194, 0.0f, 1.0f);
  let x_1201 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), x_1201);
  let x_1205 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1205, 0.0f, 1.0f);
  let x_1213 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1213);
  let x_1217 : bool = u_xlatb0.x;
  if (x_1217) {
    let x_1220 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1220.x, x_1220.y, x_1220.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1225 : vec4<f32> = u_xlat1;
    let x_1227 : vec3<f32> = log2(vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
    let x_1228 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
    let x_1230 : vec4<f32> = u_xlat2;
    let x_1234 : vec3<f32> = (vec3<f32>(x_1230.x, x_1230.y, x_1230.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1235 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
    let x_1237 : vec4<f32> = u_xlat2;
    let x_1239 : vec3<f32> = exp2(vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
    let x_1240 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
    let x_1242 : vec4<f32> = u_xlat2;
    let x_1249 : vec3<f32> = ((vec3<f32>(x_1242.x, x_1242.y, x_1242.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1250 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
    let x_1255 : vec4<f32> = u_xlat1;
    let x_1257 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1255.x));
    u_xlatb3 = vec3<bool>(x_1257.x, x_1257.y, x_1257.z);
    let x_1260 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1260;
    let x_1262 : bool = u_xlatb3.x;
    if (x_1262) {
      let x_1267 : f32 = u_xlat0.x;
      x_1263 = x_1267;
    } else {
      let x_1270 : f32 = u_xlat2.x;
      x_1263 = x_1270;
    }
    let x_1271 : f32 = x_1263;
    hlslcc_movcTemp.x = x_1271;
    let x_1274 : bool = u_xlatb3.y;
    if (x_1274) {
      let x_1279 : f32 = u_xlat0.y;
      x_1275 = x_1279;
    } else {
      let x_1282 : f32 = u_xlat2.y;
      x_1275 = x_1282;
    }
    let x_1283 : f32 = x_1275;
    hlslcc_movcTemp.y = x_1283;
    let x_1286 : bool = u_xlatb3.z;
    if (x_1286) {
      let x_1291 : f32 = u_xlat0.z;
      x_1287 = x_1291;
    } else {
      let x_1294 : f32 = u_xlat2.z;
      x_1287 = x_1294;
    }
    let x_1295 : f32 = x_1287;
    hlslcc_movcTemp.z = x_1295;
    let x_1297 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1297;
    let x_1298 : vec3<f32> = u_xlat0;
    let x_1301 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1303 : vec3<f32> = (vec3<f32>(x_1298.z, x_1298.x, x_1298.y) * vec3<f32>(x_1301.z, x_1301.z, x_1301.z));
    let x_1304 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
    let x_1307 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1307);
    let x_1310 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1312 : vec2<f32> = (vec2<f32>(x_1310.x, x_1310.y) * vec2<f32>(0.5f, 0.5f));
    let x_1313 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1312.x, x_1313.y, x_1313.z, x_1312.y);
    let x_1315 : vec4<f32> = u_xlat2;
    let x_1318 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1321 : vec4<f32> = u_xlat2;
    let x_1323 : vec2<f32> = ((vec2<f32>(x_1315.y, x_1315.z) * vec2<f32>(x_1318.x, x_1318.y)) + vec2<f32>(x_1321.x, x_1321.w));
    let x_1324 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1324.x, x_1323.x, x_1323.y, x_1324.w);
    let x_1326 : f32 = u_xlat15;
    let x_1328 : f32 = x_26.x_UserLut_Params.y;
    let x_1331 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1326 * x_1328) + x_1331);
    let x_1338 : vec4<f32> = u_xlat2;
    let x_1340 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1338.x, x_1338.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1340.x, x_1340.y, x_1340.z);
    let x_1344 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_1344;
    u_xlat4.y = 0.0f;
    let x_1347 : vec4<f32> = u_xlat2;
    let x_1349 : vec2<f32> = u_xlat4;
    let x_1350 : vec2<f32> = (vec2<f32>(x_1347.x, x_1347.z) + x_1349);
    let x_1351 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
    let x_1356 : vec4<f32> = u_xlat2;
    let x_1358 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1356.x, x_1356.y), 0.0f);
    let x_1359 : vec3<f32> = vec3<f32>(x_1358.x, x_1358.y, x_1358.z);
    let x_1360 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
    let x_1363 : f32 = u_xlat0.z;
    let x_1365 : f32 = x_26.x_UserLut_Params.z;
    let x_1367 : f32 = u_xlat15;
    u_xlat15 = ((x_1363 * x_1365) + -(x_1367));
    let x_1370 : vec3<f32> = u_xlat3;
    let x_1372 : vec4<f32> = u_xlat2;
    let x_1374 : vec3<f32> = (-(x_1370) + vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
    let x_1375 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
    let x_1377 : f32 = u_xlat15;
    let x_1379 : vec4<f32> = u_xlat2;
    let x_1382 : vec3<f32> = u_xlat3;
    let x_1383 : vec3<f32> = ((vec3<f32>(x_1377, x_1377, x_1377) * vec3<f32>(x_1379.x, x_1379.y, x_1379.z)) + x_1382);
    let x_1384 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
    let x_1386 : vec3<f32> = u_xlat0;
    let x_1388 : vec4<f32> = u_xlat2;
    let x_1390 : vec3<f32> = (-(x_1386) + vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
    let x_1391 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
    let x_1394 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1396 : vec4<f32> = u_xlat2;
    let x_1399 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1394.w, x_1394.w, x_1394.w) * vec3<f32>(x_1396.x, x_1396.y, x_1396.z)) + x_1399);
    let x_1401 : vec3<f32> = u_xlat0;
    let x_1404 : vec3<f32> = (x_1401 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1405 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
    let x_1407 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1407 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1411 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1411 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1415 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1415));
    let x_1418 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1418 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1422 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1422);
    let x_1426 : vec3<f32> = u_xlat0;
    let x_1428 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1426.x));
    u_xlatb0 = vec3<bool>(x_1428.x, x_1428.y, x_1428.z);
    let x_1431 : bool = u_xlatb0.x;
    if (x_1431) {
      let x_1436 : f32 = u_xlat2.x;
      x_1432 = x_1436;
    } else {
      let x_1439 : f32 = u_xlat3.x;
      x_1432 = x_1439;
    }
    let x_1440 : f32 = x_1432;
    u_xlat1.x = x_1440;
    let x_1443 : bool = u_xlatb0.y;
    if (x_1443) {
      let x_1448 : f32 = u_xlat2.y;
      x_1444 = x_1448;
    } else {
      let x_1451 : f32 = u_xlat3.y;
      x_1444 = x_1451;
    }
    let x_1452 : f32 = x_1444;
    u_xlat1.y = x_1452;
    let x_1455 : bool = u_xlatb0.z;
    if (x_1455) {
      let x_1460 : f32 = u_xlat2.z;
      x_1456 = x_1460;
    } else {
      let x_1463 : f32 = u_xlat3.z;
      x_1456 = x_1463;
    }
    let x_1464 : f32 = x_1456;
    u_xlat1.z = x_1464;
  }
  let x_1466 : vec4<f32> = u_xlat1;
  let x_1469 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1466.z, x_1466.x, x_1466.y) * vec3<f32>(x_1469.z, x_1469.z, x_1469.z));
  let x_1473 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1473);
  let x_1477 : vec4<f32> = x_26.x_Lut_Params;
  let x_1479 : vec2<f32> = (vec2<f32>(x_1477.x, x_1477.y) * vec2<f32>(0.5f, 0.5f));
  let x_1480 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1479.x, x_1479.y, x_1480.z, x_1480.w);
  let x_1482 : vec3<f32> = u_xlat0;
  let x_1485 : vec4<f32> = x_26.x_Lut_Params;
  let x_1488 : vec4<f32> = u_xlat1;
  let x_1490 : vec2<f32> = ((vec2<f32>(x_1482.y, x_1482.z) * vec2<f32>(x_1485.x, x_1485.y)) + vec2<f32>(x_1488.x, x_1488.y));
  let x_1491 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1491.x, x_1490.x, x_1490.y, x_1491.w);
  let x_1494 : f32 = u_xlat0.x;
  let x_1496 : f32 = x_26.x_Lut_Params.y;
  let x_1499 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1494 * x_1496) + x_1499);
  let x_1506 : vec4<f32> = u_xlat2;
  let x_1508 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1506.x, x_1506.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1508.x, x_1508.y, x_1508.z);
  let x_1511 : f32 = x_26.x_Lut_Params.y;
  u_xlat1.x = x_1511;
  u_xlat1.y = 0.0f;
  let x_1514 : vec4<f32> = u_xlat1;
  let x_1516 : vec4<f32> = u_xlat2;
  let x_1518 : vec2<f32> = (vec2<f32>(x_1514.x, x_1514.y) + vec2<f32>(x_1516.x, x_1516.z));
  let x_1519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
  let x_1524 : vec4<f32> = u_xlat1;
  let x_1526 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1524.x, x_1524.y), 0.0f);
  let x_1527 : vec3<f32> = vec3<f32>(x_1526.x, x_1526.y, x_1526.z);
  let x_1528 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1527.x, x_1527.y, x_1528.z, x_1527.z);
  let x_1531 : f32 = u_xlat1.z;
  let x_1533 : f32 = x_26.x_Lut_Params.z;
  let x_1536 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1531 * x_1533) + -(x_1536));
  let x_1540 : vec3<f32> = u_xlat5;
  let x_1542 : vec4<f32> = u_xlat1;
  let x_1544 : vec3<f32> = (-(x_1540) + vec3<f32>(x_1542.x, x_1542.y, x_1542.w));
  let x_1545 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
  let x_1547 : vec3<f32> = u_xlat0;
  let x_1549 : vec4<f32> = u_xlat1;
  let x_1552 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1547.x, x_1547.x, x_1547.x) * vec3<f32>(x_1549.x, x_1549.y, x_1549.z)) + x_1552);
  let x_1554 : vec3<f32> = u_xlat0;
  u_xlat0 = sqrt(x_1554);
  let x_1556 : vec2<f32> = vs_TEXCOORD0;
  let x_1559 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1563 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1565 : vec2<f32> = ((x_1556 * vec2<f32>(x_1559.x, x_1559.y)) + vec2<f32>(x_1563.z, x_1563.w));
  let x_1566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1565.x, x_1565.y, x_1566.z, x_1566.w);
  let x_1573 : vec4<f32> = u_xlat1;
  let x_1576 : f32 = x_26.x_GlobalMipBias.x;
  let x_1577 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1573.x, x_1573.y), x_1576);
  u_xlat15 = x_1577.w;
  let x_1579 : f32 = u_xlat15;
  u_xlat15 = ((x_1579 * 2.0f) + -1.0f);
  let x_1582 : f32 = u_xlat15;
  u_xlatb1 = (x_1582 >= 0.0f);
  let x_1584 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1584);
  let x_1587 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1587)) + 1.0f);
  let x_1591 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1591);
  let x_1593 : f32 = u_xlat15;
  u_xlat15 = (-(x_1593) + 1.0f);
  let x_1596 : f32 = u_xlat15;
  let x_1598 : f32 = u_xlat1.x;
  u_xlat15 = (x_1596 * x_1598);
  let x_1600 : vec3<f32> = u_xlat0;
  let x_1601 : vec3<f32> = (x_1600 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1602 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
  let x_1604 : vec3<f32> = u_xlat0;
  let x_1605 : vec3<f32> = log2(x_1604);
  let x_1606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
  let x_1608 : vec4<f32> = u_xlat2;
  let x_1610 : vec3<f32> = (vec3<f32>(x_1608.x, x_1608.y, x_1608.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1611 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1611.w);
  let x_1613 : vec4<f32> = u_xlat2;
  let x_1615 : vec3<f32> = exp2(vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
  let x_1616 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1618 : vec4<f32> = u_xlat2;
  let x_1621 : vec3<f32> = ((vec3<f32>(x_1618.x, x_1618.y, x_1618.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1622 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
  let x_1624 : vec3<f32> = u_xlat0;
  let x_1626 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1624.x));
  u_xlatb0 = vec3<bool>(x_1626.x, x_1626.y, x_1626.z);
  let x_1629 : bool = u_xlatb0.x;
  if (x_1629) {
    let x_1634 : f32 = u_xlat1.x;
    x_1630 = x_1634;
  } else {
    let x_1637 : f32 = u_xlat2.x;
    x_1630 = x_1637;
  }
  let x_1638 : f32 = x_1630;
  u_xlat0.x = x_1638;
  let x_1641 : bool = u_xlatb0.y;
  if (x_1641) {
    let x_1646 : f32 = u_xlat1.y;
    x_1642 = x_1646;
  } else {
    let x_1649 : f32 = u_xlat2.y;
    x_1642 = x_1649;
  }
  let x_1650 : f32 = x_1642;
  u_xlat0.y = x_1650;
  let x_1653 : bool = u_xlatb0.z;
  if (x_1653) {
    let x_1658 : f32 = u_xlat1.z;
    x_1654 = x_1658;
  } else {
    let x_1661 : f32 = u_xlat2.z;
    x_1654 = x_1661;
  }
  let x_1662 : f32 = x_1654;
  u_xlat0.z = x_1662;
  let x_1664 : f32 = u_xlat15;
  let x_1669 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1664, x_1664, x_1664) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1669);
  let x_1671 : vec3<f32> = u_xlat0;
  let x_1672 : vec3<f32> = (x_1671 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1673 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1672.x, x_1672.y, x_1672.z, x_1673.w);
  let x_1675 : vec3<f32> = u_xlat0;
  let x_1676 : vec3<f32> = (x_1675 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1677 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1679 : vec4<f32> = u_xlat2;
  let x_1681 : vec3<f32> = (vec3<f32>(x_1679.x, x_1679.y, x_1679.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1682 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
  let x_1684 : vec4<f32> = u_xlat2;
  let x_1687 : vec3<f32> = log2(abs(vec3<f32>(x_1684.x, x_1684.y, x_1684.z)));
  let x_1688 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1688.w);
  let x_1690 : vec4<f32> = u_xlat2;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1690.x, x_1690.y, x_1690.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1693 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1695 : vec4<f32> = u_xlat2;
  let x_1697 : vec3<f32> = exp2(vec3<f32>(x_1695.x, x_1695.y, x_1695.z));
  let x_1698 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
  let x_1700 : vec3<f32> = u_xlat0;
  let x_1702 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1700.x, x_1700.y, x_1700.z, x_1700.x));
  u_xlatb0 = vec3<bool>(x_1702.x, x_1702.y, x_1702.z);
  let x_1705 : bool = u_xlatb0.x;
  if (x_1705) {
    let x_1710 : f32 = u_xlat1.x;
    x_1706 = x_1710;
  } else {
    let x_1713 : f32 = u_xlat2.x;
    x_1706 = x_1713;
  }
  let x_1714 : f32 = x_1706;
  u_xlat0.x = x_1714;
  let x_1717 : bool = u_xlatb0.y;
  if (x_1717) {
    let x_1722 : f32 = u_xlat1.y;
    x_1718 = x_1722;
  } else {
    let x_1725 : f32 = u_xlat2.y;
    x_1718 = x_1725;
  }
  let x_1726 : f32 = x_1718;
  u_xlat0.y = x_1726;
  let x_1729 : bool = u_xlatb0.z;
  if (x_1729) {
    let x_1734 : f32 = u_xlat1.z;
    x_1730 = x_1734;
  } else {
    let x_1737 : f32 = u_xlat2.z;
    x_1730 = x_1737;
  }
  let x_1738 : f32 = x_1730;
  u_xlat0.z = x_1738;
  let x_1742 : vec3<f32> = u_xlat0;
  let x_1743 : vec3<f32> = max(x_1742, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1744 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1744.w);
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

