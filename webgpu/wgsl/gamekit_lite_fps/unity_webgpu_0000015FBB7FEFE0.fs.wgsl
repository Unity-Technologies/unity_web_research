struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat24 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat7 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_256 : vec3<f32>;
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
    let x_217 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_219 : vec3<f32> = (vec3<f32>(x_213.y, x_213.y, x_213.y) * vec3<f32>(x_217.x, x_217.y, x_217.z));
    let x_220 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_224 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_226 : vec3<f32> = vs_TEXCOORD5;
    let x_229 : vec4<f32> = u_xlat4;
    let x_231 : vec3<f32> = ((vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226.x, x_226.x, x_226.x)) + vec3<f32>(x_229.x, x_229.y, x_229.z));
    let x_232 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
    let x_235 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_237 : vec3<f32> = vs_TEXCOORD5;
    let x_240 : vec4<f32> = u_xlat4;
    let x_242 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.z, x_237.z, x_237.z)) + vec3<f32>(x_240.x, x_240.y, x_240.z));
    let x_243 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_245 : vec4<f32> = u_xlat4;
    let x_249 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_251 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : bool = u_xlatb23;
    if (x_254) {
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
    let x_279 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_280 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) * x_279);
    let x_281 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_281.x, x_280.x, x_280.y, x_280.z);
    let x_285 : f32 = u_xlat4.y;
    u_xlat23 = ((x_285 * 0.25f) + 0.75f);
    let x_292 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_292 * 0.5f) + 0.75f);
    let x_296 : f32 = u_xlat23;
    let x_297 : f32 = u_xlat24;
    u_xlat4.x = max(x_296, x_297);
    let x_308 : vec4<f32> = u_xlat4;
    let x_310 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_308.x, x_308.z, x_308.w));
    u_xlat4 = x_310;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_317 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_317, x_319);
  let x_321 : f32 = u_xlat23;
  u_xlat23 = clamp(x_321, 0.0f, 1.0f);
  let x_324 : f32 = u_xlat23;
  let x_328 : vec4<f32> = x_46.x_LightColor0;
  let x_330 : vec3<f32> = (vec3<f32>(x_324, x_324, x_324) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_335 : f32 = u_xlat0.y;
  let x_339 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_335) * x_339) + 1.0f);
  let x_345 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_345;
  let x_348 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_348;
  let x_351 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_351;
  let x_354 : vec4<f32> = vs_TEXCOORD1;
  let x_357 : f32 = u_xlat22;
  let x_360 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_354.x, x_354.y, x_354.z)) * vec3<f32>(x_357, x_357, x_357)) + x_360);
  let x_362 : vec3<f32> = u_xlat6;
  let x_363 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_362, x_363);
  let x_365 : f32 = u_xlat22;
  u_xlat22 = max(x_365, 0.001f);
  let x_368 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_368);
  let x_370 : f32 = u_xlat22;
  let x_372 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_370, x_370, x_370) * x_372);
  let x_374 : vec4<f32> = u_xlat2;
  let x_376 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), -(x_376));
  let x_379 : vec4<f32> = u_xlat2;
  let x_381 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), x_381);
  let x_383 : f32 = u_xlat23;
  u_xlat23 = clamp(x_383, 0.0f, 1.0f);
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), x_387);
  let x_391 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_391, 0.0f, 1.0f);
  let x_394 : vec3<f32> = u_xlat5;
  let x_395 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(x_394, x_395);
  let x_399 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_399, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat9.x;
  let x_406 : f32 = u_xlat9.x;
  u_xlat16 = (x_404 * x_406);
  let x_408 : f32 = u_xlat16;
  let x_410 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_408, x_408), vec2<f32>(x_410, x_410));
  let x_413 : f32 = u_xlat16;
  u_xlat16 = (x_413 + -0.5f);
  let x_416 : f32 = u_xlat23;
  u_xlat3.x = (-(x_416) + 1.0f);
  let x_422 : f32 = u_xlat3.x;
  let x_424 : f32 = u_xlat3.x;
  u_xlat10 = (x_422 * x_424);
  let x_426 : f32 = u_xlat10;
  let x_427 : f32 = u_xlat10;
  u_xlat10 = (x_426 * x_427);
  let x_430 : f32 = u_xlat3.x;
  let x_431 : f32 = u_xlat10;
  u_xlat3.x = (x_430 * x_431);
  let x_434 : f32 = u_xlat16;
  let x_436 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_434 * x_436) + 1.0f);
  let x_440 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_440)) + 1.0f);
  let x_445 : f32 = u_xlat10;
  let x_446 : f32 = u_xlat10;
  u_xlat17 = (x_445 * x_446);
  let x_448 : f32 = u_xlat17;
  let x_449 : f32 = u_xlat17;
  u_xlat17 = (x_448 * x_449);
  let x_451 : f32 = u_xlat10;
  let x_452 : f32 = u_xlat17;
  u_xlat10 = (x_451 * x_452);
  let x_454 : f32 = u_xlat16;
  let x_455 : f32 = u_xlat10;
  u_xlat16 = ((x_454 * x_455) + 1.0f);
  let x_458 : f32 = u_xlat16;
  let x_460 : f32 = u_xlat3.x;
  u_xlat16 = (x_458 * x_460);
  let x_462 : f32 = u_xlat23;
  let x_463 : f32 = u_xlat16;
  u_xlat16 = (x_462 * x_463);
  let x_465 : f32 = u_xlat7;
  let x_466 : f32 = u_xlat7;
  u_xlat7 = (x_465 * x_466);
  let x_468 : f32 = u_xlat7;
  u_xlat7 = max(x_468, 0.002f);
  let x_471 : f32 = u_xlat7;
  u_xlat3.x = (-(x_471) + 1.0f);
  let x_475 : f32 = u_xlat22;
  let x_478 : f32 = u_xlat3.x;
  let x_480 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_475) * x_478) + x_480);
  let x_482 : f32 = u_xlat23;
  let x_484 : f32 = u_xlat3.x;
  let x_486 : f32 = u_xlat7;
  u_xlat3.x = ((x_482 * x_484) + x_486);
  let x_489 : f32 = u_xlat22;
  let x_492 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_489) * x_492);
  let x_494 : f32 = u_xlat23;
  let x_495 : f32 = u_xlat10;
  let x_497 : f32 = u_xlat22;
  u_xlat22 = ((x_494 * x_495) + x_497);
  let x_499 : f32 = u_xlat22;
  u_xlat22 = (x_499 + 0.00001f);
  let x_502 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_502);
  let x_504 : f32 = u_xlat7;
  let x_505 : f32 = u_xlat7;
  u_xlat7 = (x_504 * x_505);
  let x_508 : f32 = u_xlat2.x;
  let x_509 : f32 = u_xlat7;
  let x_512 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_508 * x_509) + -(x_512));
  let x_517 : f32 = u_xlat3.x;
  let x_519 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_517 * x_519) + 1.0f);
  let x_523 : f32 = u_xlat7;
  u_xlat7 = (x_523 * 0.318309873f);
  let x_527 : f32 = u_xlat2.x;
  let x_529 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_527 * x_529) + 0.0000001f);
  let x_534 : f32 = u_xlat7;
  let x_536 : f32 = u_xlat2.x;
  u_xlat7 = (x_534 / x_536);
  let x_538 : f32 = u_xlat7;
  let x_539 : f32 = u_xlat22;
  u_xlat7 = (x_538 * x_539);
  let x_541 : f32 = u_xlat23;
  let x_542 : f32 = u_xlat7;
  u_xlat7 = (x_541 * x_542);
  let x_544 : f32 = u_xlat7;
  u_xlat7 = (x_544 * 3.141592741f);
  let x_547 : f32 = u_xlat7;
  u_xlat7 = max(x_547, 0.0f);
  let x_549 : vec3<f32> = u_xlat1;
  let x_550 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_549, x_550);
  let x_553 : f32 = u_xlat22;
  u_xlatb22 = !((x_553 == 0.0f));
  let x_555 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_555);
  let x_557 : f32 = u_xlat7;
  let x_558 : f32 = u_xlat22;
  u_xlat7 = (x_557 * x_558);
  let x_560 : f32 = u_xlat16;
  let x_562 : vec4<f32> = u_xlat4;
  let x_564 : vec3<f32> = (vec3<f32>(x_560, x_560, x_560) * vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_565.y, x_564.y, x_564.z);
  let x_567 : vec4<f32> = u_xlat4;
  let x_569 : f32 = u_xlat7;
  u_xlat3 = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_569, x_569, x_569));
  let x_573 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_573) + 1.0f);
  let x_576 : f32 = u_xlat7;
  let x_577 : f32 = u_xlat7;
  u_xlat22 = (x_576 * x_577);
  let x_579 : f32 = u_xlat22;
  let x_580 : f32 = u_xlat22;
  u_xlat22 = (x_579 * x_580);
  let x_582 : f32 = u_xlat7;
  let x_583 : f32 = u_xlat22;
  u_xlat7 = (x_582 * x_583);
  let x_585 : vec3<f32> = u_xlat1;
  let x_588 : vec3<f32> = (-(x_585) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : f32 = u_xlat7;
  let x_596 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(x_593, x_593, x_593)) + x_596);
  let x_598 : vec3<f32> = u_xlat1;
  let x_599 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_598 * x_599);
  let x_603 : vec4<f32> = u_xlat0;
  let x_605 : vec4<f32> = u_xlat2;
  let x_608 : vec3<f32> = u_xlat1;
  let x_609 : vec3<f32> = ((vec3<f32>(x_603.x, x_603.z, x_603.w) * vec3<f32>(x_605.x, x_605.z, x_605.w)) + x_608);
  let x_610 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
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

