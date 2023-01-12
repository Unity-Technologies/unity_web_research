struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_GlossMapScale : f32,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat4 : vec4<f32>;
  var x_256 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat24 : f32;
  var u_xlat7 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
  var u_xlat21 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  let x_53 : vec3<f32> = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_57 : vec4<f32> = x_46.x_Color;
  let x_59 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_59) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_66) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_75) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.x, x_81.x) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_86.y, x_85.y, x_85.z);
  let x_93 : vec4<f32> = vs_TEXCOORD0;
  let x_95 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.w);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_101 : f32 = u_xlat2.z;
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_101 * x_103);
  let x_106 : vec4<f32> = u_xlat2;
  let x_113 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_121 : f32 = x_46.x_BumpScale;
  let x_123 : vec2<f32> = (vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat22;
  u_xlat22 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat22;
  u_xlat22 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat9;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat22;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat22;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat22;
  let x_193 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_191, x_191, x_191) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_201 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_201 == 1.0f);
  let x_203 : bool = u_xlatb23;
  if (x_203) {
    let x_208 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_208 == 1.0f);
    let x_213 : vec3<f32> = vs_TEXCOORD5;
    let x_218 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_220 : vec3<f32> = (vec3<f32>(x_213.y, x_213.y, x_213.y) * vec3<f32>(x_218.x, x_218.y, x_218.z));
    let x_221 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
    let x_225 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_227 : vec3<f32> = vs_TEXCOORD5;
    let x_230 : vec4<f32> = u_xlat4;
    let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.x, x_227.x, x_227.x)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
    let x_233 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_237 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_239 : vec3<f32> = vs_TEXCOORD5;
    let x_242 : vec4<f32> = u_xlat4;
    let x_244 : vec3<f32> = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239.z, x_239.z, x_239.z)) + vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_247 : vec4<f32> = u_xlat4;
    let x_250 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_252 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) + vec3<f32>(x_250.x, x_250.y, x_250.z));
    let x_253 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : bool = u_xlatb23;
    if (x_255) {
      let x_259 : vec4<f32> = u_xlat4;
      x_256 = vec3<f32>(x_259.x, x_259.y, x_259.z);
    } else {
      let x_262 : vec3<f32> = vs_TEXCOORD5;
      x_256 = x_262;
    }
    let x_263 : vec3<f32> = x_256;
    let x_264 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
    let x_266 : vec4<f32> = u_xlat4;
    let x_271 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_273 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) + -(x_271));
    let x_274 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : vec4<f32> = u_xlat4;
    let x_280 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_281 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) * x_280);
    let x_282 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_282.x, x_281.x, x_281.y, x_281.z);
    let x_286 : f32 = u_xlat4.y;
    u_xlat23 = ((x_286 * 0.25f) + 0.75f);
    let x_293 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_293 * 0.5f) + 0.75f);
    let x_297 : f32 = u_xlat23;
    let x_298 : f32 = u_xlat24;
    u_xlat4.x = max(x_297, x_298);
    let x_309 : vec4<f32> = u_xlat4;
    let x_311 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_309.x, x_309.z, x_309.w));
    u_xlat4 = x_311;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_318, x_320);
  let x_322 : f32 = u_xlat23;
  u_xlat23 = clamp(x_322, 0.0f, 1.0f);
  let x_325 : f32 = u_xlat23;
  let x_329 : vec4<f32> = x_46.x_LightColor0;
  let x_331 : vec3<f32> = (vec3<f32>(x_325, x_325, x_325) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_336 : f32 = u_xlat0.y;
  let x_340 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_336) * x_340) + 1.0f);
  let x_346 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_346;
  let x_349 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_349;
  let x_352 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_352;
  let x_355 : vec4<f32> = vs_TEXCOORD1;
  let x_358 : f32 = u_xlat22;
  let x_361 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_355.x, x_355.y, x_355.z)) * vec3<f32>(x_358, x_358, x_358)) + x_361);
  let x_363 : vec3<f32> = u_xlat6;
  let x_364 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_363, x_364);
  let x_366 : f32 = u_xlat22;
  u_xlat22 = max(x_366, 0.001f);
  let x_369 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_369);
  let x_371 : f32 = u_xlat22;
  let x_373 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_371, x_371, x_371) * x_373);
  let x_375 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), -(x_377));
  let x_380 : vec4<f32> = u_xlat2;
  let x_382 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_380.x, x_380.y, x_380.z), x_382);
  let x_384 : f32 = u_xlat23;
  u_xlat23 = clamp(x_384, 0.0f, 1.0f);
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), x_388);
  let x_392 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_392, 0.0f, 1.0f);
  let x_395 : vec3<f32> = u_xlat5;
  let x_396 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(x_395, x_396);
  let x_400 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_400, 0.0f, 1.0f);
  let x_405 : f32 = u_xlat9.x;
  let x_407 : f32 = u_xlat9.x;
  u_xlat16 = (x_405 * x_407);
  let x_409 : f32 = u_xlat16;
  let x_411 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_409, x_409), vec2<f32>(x_411, x_411));
  let x_414 : f32 = u_xlat16;
  u_xlat16 = (x_414 + -0.5f);
  let x_417 : f32 = u_xlat23;
  u_xlat3.x = (-(x_417) + 1.0f);
  let x_423 : f32 = u_xlat3.x;
  let x_425 : f32 = u_xlat3.x;
  u_xlat10 = (x_423 * x_425);
  let x_427 : f32 = u_xlat10;
  let x_428 : f32 = u_xlat10;
  u_xlat10 = (x_427 * x_428);
  let x_431 : f32 = u_xlat3.x;
  let x_432 : f32 = u_xlat10;
  u_xlat3.x = (x_431 * x_432);
  let x_435 : f32 = u_xlat16;
  let x_437 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_435 * x_437) + 1.0f);
  let x_441 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_441)) + 1.0f);
  let x_446 : f32 = u_xlat10;
  let x_447 : f32 = u_xlat10;
  u_xlat17 = (x_446 * x_447);
  let x_449 : f32 = u_xlat17;
  let x_450 : f32 = u_xlat17;
  u_xlat17 = (x_449 * x_450);
  let x_452 : f32 = u_xlat10;
  let x_453 : f32 = u_xlat17;
  u_xlat10 = (x_452 * x_453);
  let x_455 : f32 = u_xlat16;
  let x_456 : f32 = u_xlat10;
  u_xlat16 = ((x_455 * x_456) + 1.0f);
  let x_459 : f32 = u_xlat16;
  let x_461 : f32 = u_xlat3.x;
  u_xlat16 = (x_459 * x_461);
  let x_463 : f32 = u_xlat23;
  let x_464 : f32 = u_xlat16;
  u_xlat16 = (x_463 * x_464);
  let x_466 : f32 = u_xlat7;
  let x_467 : f32 = u_xlat7;
  u_xlat7 = (x_466 * x_467);
  let x_469 : f32 = u_xlat7;
  u_xlat7 = max(x_469, 0.002f);
  let x_472 : f32 = u_xlat7;
  u_xlat3.x = (-(x_472) + 1.0f);
  let x_476 : f32 = u_xlat22;
  let x_479 : f32 = u_xlat3.x;
  let x_481 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_476) * x_479) + x_481);
  let x_483 : f32 = u_xlat23;
  let x_485 : f32 = u_xlat3.x;
  let x_487 : f32 = u_xlat7;
  u_xlat3.x = ((x_483 * x_485) + x_487);
  let x_490 : f32 = u_xlat22;
  let x_493 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_490) * x_493);
  let x_495 : f32 = u_xlat23;
  let x_496 : f32 = u_xlat10;
  let x_498 : f32 = u_xlat22;
  u_xlat22 = ((x_495 * x_496) + x_498);
  let x_500 : f32 = u_xlat22;
  u_xlat22 = (x_500 + 0.00001f);
  let x_503 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_503);
  let x_505 : f32 = u_xlat7;
  let x_506 : f32 = u_xlat7;
  u_xlat7 = (x_505 * x_506);
  let x_509 : f32 = u_xlat2.x;
  let x_510 : f32 = u_xlat7;
  let x_513 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_509 * x_510) + -(x_513));
  let x_518 : f32 = u_xlat3.x;
  let x_520 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_518 * x_520) + 1.0f);
  let x_524 : f32 = u_xlat7;
  u_xlat7 = (x_524 * 0.318309873f);
  let x_528 : f32 = u_xlat2.x;
  let x_530 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_528 * x_530) + 0.0000001f);
  let x_535 : f32 = u_xlat7;
  let x_537 : f32 = u_xlat2.x;
  u_xlat7 = (x_535 / x_537);
  let x_539 : f32 = u_xlat7;
  let x_540 : f32 = u_xlat22;
  u_xlat7 = (x_539 * x_540);
  let x_542 : f32 = u_xlat23;
  let x_543 : f32 = u_xlat7;
  u_xlat7 = (x_542 * x_543);
  let x_545 : f32 = u_xlat7;
  u_xlat7 = (x_545 * 3.141592741f);
  let x_548 : f32 = u_xlat7;
  u_xlat7 = max(x_548, 0.0f);
  let x_550 : vec3<f32> = u_xlat1;
  let x_551 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_550, x_551);
  let x_554 : f32 = u_xlat22;
  u_xlatb22 = !((x_554 == 0.0f));
  let x_556 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_556);
  let x_558 : f32 = u_xlat7;
  let x_559 : f32 = u_xlat22;
  u_xlat7 = (x_558 * x_559);
  let x_561 : f32 = u_xlat16;
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = (vec3<f32>(x_561, x_561, x_561) * vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_565.x, x_566.y, x_565.y, x_565.z);
  let x_568 : vec4<f32> = u_xlat4;
  let x_570 : f32 = u_xlat7;
  u_xlat3 = (vec3<f32>(x_568.x, x_568.y, x_568.z) * vec3<f32>(x_570, x_570, x_570));
  let x_574 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_574) + 1.0f);
  let x_577 : f32 = u_xlat7;
  let x_578 : f32 = u_xlat7;
  u_xlat22 = (x_577 * x_578);
  let x_580 : f32 = u_xlat22;
  let x_581 : f32 = u_xlat22;
  u_xlat22 = (x_580 * x_581);
  let x_583 : f32 = u_xlat7;
  let x_584 : f32 = u_xlat22;
  u_xlat7 = (x_583 * x_584);
  let x_586 : vec3<f32> = u_xlat1;
  let x_589 : vec3<f32> = (-(x_586) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_590 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : f32 = u_xlat7;
  let x_597 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(x_594, x_594, x_594)) + x_597);
  let x_599 : vec3<f32> = u_xlat1;
  let x_600 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_599 * x_600);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : vec4<f32> = u_xlat2;
  let x_607 : vec3<f32> = u_xlat1;
  let x_608 : vec3<f32> = ((vec3<f32>(x_602.x, x_602.z, x_602.w) * vec3<f32>(x_604.x, x_604.z, x_604.w)) + x_607);
  let x_609 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_613 : f32 = vs_TEXCOORD1.w;
  let x_615 : f32 = x_46.x_ProjectionParams.y;
  u_xlat21 = (x_613 / x_615);
  let x_617 : f32 = u_xlat21;
  u_xlat21 = (-(x_617) + 1.0f);
  let x_620 : f32 = u_xlat21;
  let x_622 : f32 = x_46.x_ProjectionParams.z;
  u_xlat21 = (x_620 * x_622);
  let x_624 : f32 = u_xlat21;
  u_xlat21 = max(x_624, 0.0f);
  let x_626 : f32 = u_xlat21;
  let x_628 : f32 = x_46.unity_FogParams.x;
  u_xlat21 = (x_626 * x_628);
  let x_630 : f32 = u_xlat21;
  let x_631 : f32 = u_xlat21;
  u_xlat21 = (x_630 * -(x_631));
  let x_634 : f32 = u_xlat21;
  u_xlat21 = exp2(x_634);
  let x_638 : vec4<f32> = u_xlat0;
  let x_640 : f32 = u_xlat21;
  let x_642 : vec3<f32> = (vec3<f32>(x_638.x, x_638.y, x_638.z) * vec3<f32>(x_640, x_640, x_640));
  let x_643 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

