struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_Emission : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_39 : PGlobals;

var<private> u_xlat48 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat49 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(12) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicSmooth : sampler;

var<private> u_xlat50 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AO : texture_2d<f32>;

@group(0) @binding(15) var sampler_AO : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(13) var sampler_Normal : sampler;

var<private> u_xlatb49 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_292 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_480 : f32;
  var x_492 : f32;
  var x_504 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_656 : f32;
  var x_668 : f32;
  var x_680 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_16;
  let x_22 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_22;
  let x_27 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_27;
  let x_33 : vec4<f32> = u_xlat0;
  let x_44 : vec3<f32> = x_39.x_WorldSpaceCameraPos;
  u_xlat1 = (-(vec3<f32>(x_33.x, x_33.y, x_33.z)) + x_44);
  let x_47 : vec3<f32> = u_xlat1;
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_50);
  let x_53 : f32 = u_xlat48;
  let x_55 : vec3<f32> = u_xlat1;
  let x_56 : vec3<f32> = (vec3<f32>(x_53, x_53, x_53) * x_55);
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_72.x, x_72.y));
  u_xlat49 = x_74.x;
  let x_82 : vec4<f32> = vs_TEXCOORD0;
  let x_84 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_82.z, x_82.w));
  let x_85 : vec2<f32> = vec2<f32>(x_84.x, x_84.w);
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : f32 = u_xlat49;
  u_xlat49 = (-(x_88) + 1.0f);
  let x_92 : f32 = u_xlat49;
  let x_96 : f32 = x_39.x_Cutoff;
  u_xlat49 = (x_92 + -(x_96));
  let x_102 : f32 = x_39.x_EdgeSize;
  u_xlat50 = (1.0f / -(x_102));
  let x_105 : f32 = u_xlat49;
  let x_106 : f32 = u_xlat50;
  u_xlat49 = (x_105 * x_106);
  let x_108 : f32 = u_xlat49;
  u_xlat49 = clamp(x_108, 0.0f, 1.0f);
  let x_111 : f32 = u_xlat49;
  u_xlat50 = ((x_111 * -2.0f) + 3.0f);
  let x_116 : f32 = u_xlat49;
  let x_117 : f32 = u_xlat49;
  u_xlat49 = (x_116 * x_117);
  let x_120 : f32 = u_xlat49;
  let x_121 : f32 = u_xlat50;
  u_xlat35 = (x_120 * x_121);
  let x_129 : vec4<f32> = vs_TEXCOORD0;
  let x_131 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_129.z, x_129.w));
  u_xlat4 = x_131;
  let x_133 : vec4<f32> = u_xlat4;
  let x_138 : vec4<f32> = x_39.x_Color;
  u_xlat5 = (vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = vs_TEXCOORD0;
  let x_149 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_147.z, x_147.w));
  u_xlat51 = x_149.x;
  let x_152 : f32 = u_xlat35;
  let x_156 : vec4<f32> = x_39.x_EdgeColor1;
  u_xlat6 = (vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat4;
  let x_163 : vec4<f32> = x_39.x_Emission;
  let x_166 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_159.w, x_159.w, x_159.w) * vec3<f32>(x_163.x, x_163.y, x_163.z)) + x_166);
  let x_174 : vec4<f32> = vs_TEXCOORD0;
  let x_176 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_174.z, x_174.w));
  u_xlat7 = vec3<f32>(x_176.x, x_176.y, x_176.w);
  let x_179 : f32 = u_xlat7.z;
  let x_181 : f32 = u_xlat7.x;
  u_xlat7.x = (x_179 * x_181);
  let x_184 : vec3<f32> = u_xlat7;
  let x_191 : vec2<f32> = ((vec2<f32>(x_184.x, x_184.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_192 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_191.x, x_191.y, x_192.z);
  let x_194 : vec3<f32> = u_xlat7;
  let x_196 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec2<f32>(x_194.x, x_194.y), vec2<f32>(x_196.x, x_196.y));
  let x_199 : f32 = u_xlat35;
  u_xlat35 = min(x_199, 1.0f);
  let x_201 : f32 = u_xlat35;
  u_xlat35 = (-(x_201) + 1.0f);
  let x_204 : f32 = u_xlat35;
  u_xlat7.z = sqrt(x_204);
  let x_208 : f32 = u_xlat3.x;
  let x_211 : f32 = x_39.x_Metallic;
  u_xlat3.x = (x_208 * x_211);
  let x_214 : f32 = u_xlat50;
  let x_216 : f32 = u_xlat49;
  let x_219 : f32 = x_39.x_Cutoff;
  u_xlat49 = ((-(x_214) * x_216) + -(x_219));
  let x_222 : f32 = u_xlat49;
  u_xlat49 = (x_222 + 1.0f);
  let x_227 : f32 = u_xlat49;
  u_xlatb49 = (x_227 < 0.0f);
  let x_229 : bool = u_xlatb49;
  if (((select(0i, 1i, x_229) * -1i) != 0i)) {
    discard;
  }
  let x_240 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_240 == 1.0f);
  let x_242 : bool = u_xlatb49;
  if (x_242) {
    let x_246 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb49 = (x_246 == 1.0f);
    let x_249 : vec4<f32> = vs_TEXCOORD2;
    let x_253 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_255 : vec3<f32> = (vec3<f32>(x_249.w, x_249.w, x_249.w) * vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_259 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_261 : vec4<f32> = vs_TEXCOORD1;
    let x_264 : vec4<f32> = u_xlat8;
    let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.w, x_261.w, x_261.w)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_271 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_273 : vec4<f32> = vs_TEXCOORD3;
    let x_276 : vec4<f32> = u_xlat8;
    let x_278 : vec3<f32> = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_273.w, x_273.w, x_273.w)) + vec3<f32>(x_276.x, x_276.y, x_276.z));
    let x_279 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
    let x_281 : vec4<f32> = u_xlat8;
    let x_285 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_287 : vec3<f32> = (vec3<f32>(x_281.x, x_281.y, x_281.z) + vec3<f32>(x_285.x, x_285.y, x_285.z));
    let x_288 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
    let x_290 : bool = u_xlatb49;
    if (x_290) {
      let x_295 : vec4<f32> = u_xlat8;
      x_292 = vec3<f32>(x_295.x, x_295.y, x_295.z);
    } else {
      let x_298 : vec4<f32> = u_xlat0;
      x_292 = vec3<f32>(x_298.x, x_298.y, x_298.z);
    }
    let x_300 : vec3<f32> = x_292;
    let x_301 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_303 : vec4<f32> = u_xlat8;
    let x_307 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_309 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + -(x_307));
    let x_310 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
    let x_312 : vec4<f32> = u_xlat8;
    let x_316 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_317 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * x_316);
    let x_318 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_318.x, x_317.x, x_317.y, x_317.z);
    let x_321 : f32 = u_xlat8.y;
    u_xlat49 = ((x_321 * 0.25f) + 0.75f);
    let x_327 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat50 = ((x_327 * 0.5f) + 0.75f);
    let x_331 : f32 = u_xlat49;
    let x_332 : f32 = u_xlat50;
    u_xlat8.x = max(x_331, x_332);
    let x_343 : vec4<f32> = u_xlat8;
    let x_345 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_343.x, x_343.z, x_343.w));
    u_xlat8 = x_345;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_351 : vec4<f32> = u_xlat8;
  let x_353 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat49 = dot(x_351, x_353);
  let x_355 : f32 = u_xlat49;
  u_xlat49 = clamp(x_355, 0.0f, 1.0f);
  let x_357 : vec4<f32> = vs_TEXCOORD1;
  let x_359 : vec3<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_357.x, x_357.y, x_357.z), x_359);
  let x_362 : vec4<f32> = vs_TEXCOORD2;
  let x_364 : vec3<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), x_364);
  let x_367 : vec4<f32> = vs_TEXCOORD3;
  let x_369 : vec3<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), x_369);
  let x_372 : vec4<f32> = u_xlat8;
  let x_374 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_377);
  let x_379 : f32 = u_xlat50;
  let x_381 : vec4<f32> = u_xlat8;
  u_xlat7 = (vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_385 : f32 = u_xlat3.y;
  let x_389 : f32 = x_39.x_Glossiness;
  u_xlat50 = ((-(x_385) * x_389) + 1.0f);
  let x_392 : vec4<f32> = u_xlat2;
  let x_395 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(-(vec3<f32>(x_392.x, x_392.y, x_392.z)), x_395);
  let x_397 : f32 = u_xlat35;
  let x_398 : f32 = u_xlat35;
  u_xlat35 = (x_397 + x_398);
  let x_400 : vec3<f32> = u_xlat7;
  let x_401 : f32 = u_xlat35;
  let x_405 : vec4<f32> = u_xlat2;
  let x_408 : vec3<f32> = ((x_400 * -(vec3<f32>(x_401, x_401, x_401))) + -(vec3<f32>(x_405.x, x_405.y, x_405.z)));
  let x_409 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : f32 = u_xlat49;
  let x_416 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_412, x_412, x_412) * vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_421 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_421);
  let x_423 : bool = u_xlatb49;
  if (x_423) {
    let x_426 : vec4<f32> = u_xlat8;
    let x_428 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_426.x, x_426.y, x_426.z), vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_431);
    let x_434 : f32 = u_xlat49;
    let x_436 : vec4<f32> = u_xlat8;
    let x_438 : vec3<f32> = (vec3<f32>(x_434, x_434, x_434) * vec3<f32>(x_436.x, x_436.y, x_436.z));
    let x_439 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
    let x_442 : vec4<f32> = u_xlat0;
    let x_446 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    u_xlat11 = (-(vec3<f32>(x_442.x, x_442.y, x_442.z)) + vec3<f32>(x_446.x, x_446.y, x_446.z));
    let x_449 : vec3<f32> = u_xlat11;
    let x_450 : vec4<f32> = u_xlat10;
    u_xlat11 = (x_449 / vec3<f32>(x_450.x, x_450.y, x_450.z));
    let x_454 : vec4<f32> = u_xlat0;
    let x_459 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_454.x, x_454.y, x_454.z)) + vec3<f32>(x_459.x, x_459.y, x_459.z));
    let x_462 : vec3<f32> = u_xlat12;
    let x_463 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_462 / vec3<f32>(x_463.x, x_463.y, x_463.z));
    let x_470 : vec4<f32> = u_xlat10;
    let x_473 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_470.x, x_470.y, x_470.z, x_470.x));
    u_xlatb13 = vec3<bool>(x_473.x, x_473.y, x_473.z);
    let x_476 : vec3<f32> = u_xlat11;
    hlslcc_movcTemp = x_476;
    let x_478 : bool = u_xlatb13.x;
    if (x_478) {
      let x_484 : f32 = u_xlat11.x;
      x_480 = x_484;
    } else {
      let x_487 : f32 = u_xlat12.x;
      x_480 = x_487;
    }
    let x_488 : f32 = x_480;
    hlslcc_movcTemp.x = x_488;
    let x_491 : bool = u_xlatb13.y;
    if (x_491) {
      let x_496 : f32 = u_xlat11.y;
      x_492 = x_496;
    } else {
      let x_499 : f32 = u_xlat12.y;
      x_492 = x_499;
    }
    let x_500 : f32 = x_492;
    hlslcc_movcTemp.y = x_500;
    let x_503 : bool = u_xlatb13.z;
    if (x_503) {
      let x_508 : f32 = u_xlat11.z;
      x_504 = x_508;
    } else {
      let x_511 : f32 = u_xlat12.z;
      x_504 = x_511;
    }
    let x_512 : f32 = x_504;
    hlslcc_movcTemp.z = x_512;
    let x_514 : vec3<f32> = hlslcc_movcTemp;
    u_xlat11 = x_514;
    let x_516 : f32 = u_xlat11.y;
    let x_518 : f32 = u_xlat11.x;
    u_xlat49 = min(x_516, x_518);
    let x_521 : f32 = u_xlat11.z;
    let x_522 : f32 = u_xlat49;
    u_xlat49 = min(x_521, x_522);
    let x_524 : vec4<f32> = u_xlat0;
    let x_527 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    u_xlat11 = (vec3<f32>(x_524.x, x_524.y, x_524.z) + -(vec3<f32>(x_527.x, x_527.y, x_527.z)));
    let x_531 : vec4<f32> = u_xlat10;
    let x_533 : f32 = u_xlat49;
    let x_536 : vec3<f32> = u_xlat11;
    let x_537 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_533, x_533, x_533)) + x_536);
    let x_538 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  } else {
    let x_541 : vec4<f32> = u_xlat8;
    let x_542 : vec3<f32> = vec3<f32>(x_541.x, x_541.y, x_541.z);
    let x_543 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  }
  let x_545 : f32 = u_xlat50;
  u_xlat49 = ((-(x_545) * 0.699999988f) + 1.700000048f);
  let x_551 : f32 = u_xlat49;
  let x_552 : f32 = u_xlat50;
  u_xlat49 = (x_551 * x_552);
  let x_554 : f32 = u_xlat49;
  u_xlat49 = (x_554 * 6.0f);
  let x_565 : vec4<f32> = u_xlat10;
  let x_567 : f32 = u_xlat49;
  let x_568 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_565.x, x_565.y, x_565.z), x_567);
  u_xlat10 = x_568;
  let x_570 : f32 = u_xlat10.w;
  u_xlat35 = (x_570 + -1.0f);
  let x_574 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_575 : f32 = u_xlat35;
  u_xlat35 = ((x_574 * x_575) + 1.0f);
  let x_578 : f32 = u_xlat35;
  u_xlat35 = log2(x_578);
  let x_580 : f32 = u_xlat35;
  let x_582 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_580 * x_582);
  let x_584 : f32 = u_xlat35;
  u_xlat35 = exp2(x_584);
  let x_586 : f32 = u_xlat35;
  let x_588 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_586 * x_588);
  let x_590 : vec4<f32> = u_xlat10;
  let x_592 : f32 = u_xlat35;
  u_xlat11 = (vec3<f32>(x_590.x, x_590.y, x_590.z) * vec3<f32>(x_592, x_592, x_592));
  let x_597 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_597 < 0.999989986f);
  let x_600 : bool = u_xlatb52;
  if (x_600) {
    let x_605 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_605);
    let x_607 : bool = u_xlatb52;
    if (x_607) {
      let x_611 : vec4<f32> = u_xlat8;
      let x_613 : vec4<f32> = u_xlat8;
      u_xlat52 = dot(vec3<f32>(x_611.x, x_611.y, x_611.z), vec3<f32>(x_613.x, x_613.y, x_613.z));
      let x_616 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_616);
      let x_618 : f32 = u_xlat52;
      let x_620 : vec4<f32> = u_xlat8;
      u_xlat12 = (vec3<f32>(x_618, x_618, x_618) * vec3<f32>(x_620.x, x_620.y, x_620.z));
      let x_624 : vec4<f32> = u_xlat0;
      let x_629 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_624.x, x_624.y, x_624.z)) + vec3<f32>(x_629.x, x_629.y, x_629.z));
      let x_632 : vec3<f32> = u_xlat13;
      let x_633 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_632 / x_633);
      let x_636 : vec4<f32> = u_xlat0;
      let x_641 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_636.x, x_636.y, x_636.z)) + vec3<f32>(x_641.x, x_641.y, x_641.z));
      let x_644 : vec3<f32> = u_xlat14;
      let x_645 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_644 / x_645);
      let x_648 : vec3<f32> = u_xlat12;
      let x_650 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_648.x, x_648.y, x_648.z, x_648.x));
      u_xlatb15 = vec3<bool>(x_650.x, x_650.y, x_650.z);
      let x_653 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_653;
      let x_655 : bool = u_xlatb15.x;
      if (x_655) {
        let x_660 : f32 = u_xlat13.x;
        x_656 = x_660;
      } else {
        let x_663 : f32 = u_xlat14.x;
        x_656 = x_663;
      }
      let x_664 : f32 = x_656;
      hlslcc_movcTemp_1.x = x_664;
      let x_667 : bool = u_xlatb15.y;
      if (x_667) {
        let x_672 : f32 = u_xlat13.y;
        x_668 = x_672;
      } else {
        let x_675 : f32 = u_xlat14.y;
        x_668 = x_675;
      }
      let x_676 : f32 = x_668;
      hlslcc_movcTemp_1.y = x_676;
      let x_679 : bool = u_xlatb15.z;
      if (x_679) {
        let x_684 : f32 = u_xlat13.z;
        x_680 = x_684;
      } else {
        let x_687 : f32 = u_xlat14.z;
        x_680 = x_687;
      }
      let x_688 : f32 = x_680;
      hlslcc_movcTemp_1.z = x_688;
      let x_690 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_690;
      let x_692 : f32 = u_xlat13.y;
      let x_694 : f32 = u_xlat13.x;
      u_xlat52 = min(x_692, x_694);
      let x_697 : f32 = u_xlat13.z;
      let x_698 : f32 = u_xlat52;
      u_xlat52 = min(x_697, x_698);
      let x_700 : vec4<f32> = u_xlat0;
      let x_703 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_706 : vec3<f32> = (vec3<f32>(x_700.x, x_700.y, x_700.z) + -(vec3<f32>(x_703.x, x_703.y, x_703.z)));
      let x_707 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
      let x_709 : vec3<f32> = u_xlat12;
      let x_710 : f32 = u_xlat52;
      let x_713 : vec4<f32> = u_xlat0;
      let x_715 : vec3<f32> = ((x_709 * vec3<f32>(x_710, x_710, x_710)) + vec3<f32>(x_713.x, x_713.y, x_713.z));
      let x_716 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
    }
    let x_722 : vec4<f32> = u_xlat8;
    let x_724 : f32 = u_xlat49;
    let x_725 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_722.x, x_722.y, x_722.z), x_724);
    u_xlat8 = x_725;
    let x_727 : f32 = u_xlat8.w;
    u_xlat0.x = (x_727 + -1.0f);
    let x_732 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_734 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_732 * x_734) + 1.0f);
    let x_739 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_739);
    let x_743 : f32 = u_xlat0.x;
    let x_745 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_743 * x_745);
    let x_749 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_749);
    let x_753 : f32 = u_xlat0.x;
    let x_755 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_753 * x_755);
    let x_758 : vec4<f32> = u_xlat8;
    let x_760 : vec4<f32> = u_xlat0;
    let x_762 : vec3<f32> = (vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(x_760.x, x_760.x, x_760.x));
    let x_763 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
    let x_765 : f32 = u_xlat35;
    let x_767 : vec4<f32> = u_xlat10;
    let x_770 : vec4<f32> = u_xlat0;
    let x_773 : vec3<f32> = ((vec3<f32>(x_765, x_765, x_765) * vec3<f32>(x_767.x, x_767.y, x_767.z)) + -(vec3<f32>(x_770.x, x_770.y, x_770.z)));
    let x_774 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
    let x_777 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_779 : vec4<f32> = u_xlat8;
    let x_782 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_777.w, x_777.w, x_777.w) * vec3<f32>(x_779.x, x_779.y, x_779.z)) + vec3<f32>(x_782.x, x_782.y, x_782.z));
  }
  let x_785 : f32 = u_xlat51;
  let x_787 : vec3<f32> = u_xlat11;
  let x_788 : vec3<f32> = (vec3<f32>(x_785, x_785, x_785) * x_787);
  let x_789 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_791 : vec4<f32> = u_xlat4;
  let x_794 : vec4<f32> = x_39.x_Color;
  let x_799 : vec3<f32> = ((vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_794.x, x_794.y, x_794.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_800 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat3;
  let x_804 : vec4<f32> = u_xlat4;
  let x_809 : vec3<f32> = ((vec3<f32>(x_802.x, x_802.x, x_802.x) * vec3<f32>(x_804.x, x_804.y, x_804.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_810 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_813 : f32 = u_xlat3.x;
  u_xlat49 = ((-(x_813) * 0.959999979f) + 0.959999979f);
  let x_818 : f32 = u_xlat49;
  let x_820 : vec3<f32> = u_xlat5;
  let x_821 : vec3<f32> = (vec3<f32>(x_818, x_818, x_818) * x_820);
  let x_822 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_821.x, x_822.y, x_821.y, x_821.z);
  let x_824 : vec3<f32> = u_xlat1;
  let x_825 : f32 = u_xlat48;
  let x_829 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_824 * vec3<f32>(x_825, x_825, x_825)) + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec3<f32> = u_xlat1;
  let x_833 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_832, x_833);
  let x_835 : f32 = u_xlat48;
  u_xlat48 = max(x_835, 0.001f);
  let x_838 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat48;
  let x_842 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_840, x_840, x_840) * x_842);
  let x_844 : vec3<f32> = u_xlat7;
  let x_845 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(x_844, vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec3<f32> = u_xlat7;
  let x_850 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_848, vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_855 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_855, 0.0f, 1.0f);
  let x_859 : vec3<f32> = u_xlat7;
  let x_860 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_859, x_860);
  let x_862 : f32 = u_xlat18;
  u_xlat18 = clamp(x_862, 0.0f, 1.0f);
  let x_865 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_867 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), x_867);
  let x_871 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_871, 0.0f, 1.0f);
  let x_876 : f32 = u_xlat1.x;
  let x_878 : f32 = u_xlat1.x;
  u_xlat17 = (x_876 * x_878);
  let x_880 : f32 = u_xlat17;
  let x_882 : f32 = u_xlat50;
  u_xlat17 = dot(vec2<f32>(x_880, x_880), vec2<f32>(x_882, x_882));
  let x_885 : f32 = u_xlat17;
  u_xlat17 = (x_885 + -0.5f);
  let x_890 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_890) + 1.0f);
  let x_894 : f32 = u_xlat33;
  let x_895 : f32 = u_xlat33;
  u_xlat34 = (x_894 * x_895);
  let x_897 : f32 = u_xlat34;
  let x_898 : f32 = u_xlat34;
  u_xlat34 = (x_897 * x_898);
  let x_900 : f32 = u_xlat33;
  let x_901 : f32 = u_xlat34;
  u_xlat33 = (x_900 * x_901);
  let x_903 : f32 = u_xlat17;
  let x_904 : f32 = u_xlat33;
  u_xlat33 = ((x_903 * x_904) + 1.0f);
  let x_907 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_907)) + 1.0f);
  let x_911 : f32 = u_xlat34;
  let x_912 : f32 = u_xlat34;
  u_xlat52 = (x_911 * x_912);
  let x_914 : f32 = u_xlat52;
  let x_915 : f32 = u_xlat52;
  u_xlat52 = (x_914 * x_915);
  let x_917 : f32 = u_xlat34;
  let x_918 : f32 = u_xlat52;
  u_xlat34 = (x_917 * x_918);
  let x_920 : f32 = u_xlat17;
  let x_921 : f32 = u_xlat34;
  u_xlat17 = ((x_920 * x_921) + 1.0f);
  let x_924 : f32 = u_xlat17;
  let x_925 : f32 = u_xlat33;
  u_xlat17 = (x_924 * x_925);
  let x_928 : f32 = u_xlat2.x;
  let x_929 : f32 = u_xlat17;
  u_xlat17 = (x_928 * x_929);
  let x_931 : f32 = u_xlat50;
  let x_932 : f32 = u_xlat50;
  u_xlat33 = (x_931 * x_932);
  let x_934 : f32 = u_xlat33;
  u_xlat33 = max(x_934, 0.002f);
  let x_937 : f32 = u_xlat33;
  u_xlat50 = (-(x_937) + 1.0f);
  let x_940 : f32 = u_xlat48;
  let x_942 : f32 = u_xlat50;
  let x_944 : f32 = u_xlat33;
  u_xlat52 = ((abs(x_940) * x_942) + x_944);
  let x_947 : f32 = u_xlat2.x;
  let x_948 : f32 = u_xlat50;
  let x_950 : f32 = u_xlat33;
  u_xlat50 = ((x_947 * x_948) + x_950);
  let x_952 : f32 = u_xlat48;
  let x_954 : f32 = u_xlat50;
  u_xlat48 = (abs(x_952) * x_954);
  let x_957 : f32 = u_xlat2.x;
  let x_958 : f32 = u_xlat52;
  let x_960 : f32 = u_xlat48;
  u_xlat48 = ((x_957 * x_958) + x_960);
  let x_962 : f32 = u_xlat48;
  u_xlat48 = (x_962 + 0.00001f);
  let x_965 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_965);
  let x_967 : f32 = u_xlat33;
  let x_968 : f32 = u_xlat33;
  u_xlat50 = (x_967 * x_968);
  let x_970 : f32 = u_xlat18;
  let x_971 : f32 = u_xlat50;
  let x_973 : f32 = u_xlat18;
  u_xlat52 = ((x_970 * x_971) + -(x_973));
  let x_976 : f32 = u_xlat52;
  let x_977 : f32 = u_xlat18;
  u_xlat18 = ((x_976 * x_977) + 1.0f);
  let x_980 : f32 = u_xlat50;
  u_xlat50 = (x_980 * 0.318309873f);
  let x_983 : f32 = u_xlat18;
  let x_984 : f32 = u_xlat18;
  u_xlat18 = ((x_983 * x_984) + 0.0000001f);
  let x_988 : f32 = u_xlat50;
  let x_989 : f32 = u_xlat18;
  u_xlat18 = (x_988 / x_989);
  let x_991 : f32 = u_xlat48;
  let x_992 : f32 = u_xlat18;
  u_xlat48 = (x_991 * x_992);
  let x_995 : f32 = u_xlat2.x;
  let x_996 : f32 = u_xlat48;
  u_xlat48 = (x_995 * x_996);
  let x_998 : f32 = u_xlat48;
  u_xlat48 = (x_998 * 3.141592741f);
  let x_1001 : f32 = u_xlat48;
  u_xlat48 = max(x_1001, 0.0f);
  let x_1003 : f32 = u_xlat33;
  let x_1004 : f32 = u_xlat33;
  u_xlat33 = ((x_1003 * x_1004) + 1.0f);
  let x_1007 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1007);
  let x_1010 : vec4<f32> = u_xlat4;
  let x_1012 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1018 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1018 == 0.0f));
  let x_1020 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1020);
  let x_1023 : f32 = u_xlat48;
  let x_1025 : f32 = u_xlat2.x;
  u_xlat48 = (x_1023 * x_1025);
  let x_1028 : f32 = u_xlat3.y;
  let x_1030 : f32 = x_39.x_Glossiness;
  let x_1032 : f32 = u_xlat49;
  u_xlat49 = ((x_1028 * x_1030) + -(x_1032));
  let x_1035 : f32 = u_xlat49;
  u_xlat49 = (x_1035 + 1.0f);
  let x_1037 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1037, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat17;
  let x_1041 : vec3<f32> = u_xlat9;
  let x_1042 : vec3<f32> = (vec3<f32>(x_1039, x_1039, x_1039) * x_1041);
  let x_1043 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1042.z);
  let x_1045 : vec3<f32> = u_xlat9;
  let x_1046 : f32 = u_xlat48;
  u_xlat5 = (x_1045 * vec3<f32>(x_1046, x_1046, x_1046));
  let x_1050 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1050) + 1.0f);
  let x_1055 : f32 = u_xlat0.w;
  let x_1057 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1055 * x_1057);
  let x_1061 : f32 = u_xlat1.x;
  let x_1063 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1061 * x_1063);
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1067 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1066 * vec4<f32>(x_1067.z, x_1067.z, x_1067.z, x_1067.x));
  let x_1070 : vec4<f32> = u_xlat4;
  u_xlat7 = (-(vec3<f32>(x_1070.x, x_1070.y, x_1070.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1075 : vec3<f32> = u_xlat7;
  let x_1076 : vec4<f32> = u_xlat0;
  let x_1079 : vec4<f32> = u_xlat4;
  u_xlat7 = ((x_1075 * vec3<f32>(x_1076.w, x_1076.w, x_1076.w)) + vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : vec3<f32> = u_xlat5;
  let x_1083 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_1082 * x_1083);
  let x_1085 : vec4<f32> = u_xlat3;
  let x_1087 : vec4<f32> = u_xlat2;
  let x_1090 : vec3<f32> = u_xlat5;
  let x_1091 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.z, x_1085.w) * vec3<f32>(x_1087.x, x_1087.y, x_1087.w)) + x_1090);
  let x_1092 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1091.z);
  let x_1094 : vec4<f32> = u_xlat4;
  let x_1097 : f32 = u_xlat49;
  u_xlat1 = (-(vec3<f32>(x_1094.x, x_1094.y, x_1094.z)) + vec3<f32>(x_1097, x_1097, x_1097));
  let x_1100 : f32 = u_xlat34;
  let x_1102 : vec3<f32> = u_xlat1;
  let x_1104 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1100, x_1100, x_1100) * x_1102) + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat0;
  let x_1109 : vec3<f32> = u_xlat1;
  let x_1111 : vec4<f32> = u_xlat2;
  let x_1113 : vec3<f32> = ((vec3<f32>(x_1107.x, x_1107.y, x_1107.z) * x_1109) + vec3<f32>(x_1111.x, x_1111.y, x_1111.w));
  let x_1114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1118 : vec3<f32> = u_xlat6;
  let x_1119 : vec4<f32> = u_xlat0;
  let x_1121 : vec3<f32> = (x_1118 + vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1122 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

