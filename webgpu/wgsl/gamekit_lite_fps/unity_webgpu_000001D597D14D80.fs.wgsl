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
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
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

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat50 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(14) var sampler_Gradient : sampler;

var<private> u_xlat35 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat51 : f32;

@group(0) @binding(5) var x_AO : texture_2d<f32>;

@group(0) @binding(17) var sampler_AO : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(6) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlatb49 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(9) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(11) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_314 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_502 : f32;
  var x_514 : f32;
  var x_526 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_678 : f32;
  var x_690 : f32;
  var x_702 : f32;
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
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_94.z, x_94.w));
  u_xlat50 = x_96.x;
  let x_99 : f32 = u_xlat50;
  u_xlat35 = (-(x_99) + 1.0f);
  let x_103 : f32 = u_xlat49;
  let x_104 : f32 = u_xlat35;
  u_xlat49 = (x_103 * x_104);
  let x_106 : f32 = u_xlat49;
  let x_110 : f32 = x_39.x_NoiseStrength;
  let x_112 : f32 = u_xlat50;
  u_xlat49 = ((x_106 * x_110) + x_112);
  let x_114 : f32 = u_xlat49;
  u_xlat49 = (-(x_114) + 1.0f);
  let x_117 : f32 = u_xlat49;
  let x_120 : f32 = x_39.x_Cutoff;
  u_xlat49 = (x_117 + -(x_120));
  let x_125 : f32 = x_39.x_EdgeSize;
  u_xlat50 = (1.0f / -(x_125));
  let x_128 : f32 = u_xlat49;
  let x_129 : f32 = u_xlat50;
  u_xlat49 = (x_128 * x_129);
  let x_131 : f32 = u_xlat49;
  u_xlat49 = clamp(x_131, 0.0f, 1.0f);
  let x_134 : f32 = u_xlat49;
  u_xlat50 = ((x_134 * -2.0f) + 3.0f);
  let x_139 : f32 = u_xlat49;
  let x_140 : f32 = u_xlat49;
  u_xlat49 = (x_139 * x_140);
  let x_142 : f32 = u_xlat49;
  let x_143 : f32 = u_xlat50;
  u_xlat35 = (x_142 * x_143);
  let x_151 : vec4<f32> = vs_TEXCOORD0;
  let x_153 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_151.z, x_151.w));
  u_xlat4 = x_153;
  let x_155 : vec4<f32> = u_xlat4;
  let x_160 : vec4<f32> = x_39.x_Color;
  u_xlat5 = (vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_169 : vec4<f32> = vs_TEXCOORD0;
  let x_171 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_169.z, x_169.w));
  u_xlat51 = x_171.x;
  let x_174 : f32 = u_xlat35;
  let x_178 : vec4<f32> = x_39.x_EdgeColor1;
  u_xlat6 = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat4;
  let x_185 : vec4<f32> = x_39.x_Emission;
  let x_188 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_181.w, x_181.w, x_181.w) * vec3<f32>(x_185.x, x_185.y, x_185.z)) + x_188);
  let x_196 : vec4<f32> = vs_TEXCOORD0;
  let x_198 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_196.z, x_196.w));
  u_xlat7 = vec3<f32>(x_198.x, x_198.y, x_198.w);
  let x_201 : f32 = u_xlat7.z;
  let x_203 : f32 = u_xlat7.x;
  u_xlat7.x = (x_201 * x_203);
  let x_206 : vec3<f32> = u_xlat7;
  let x_213 : vec2<f32> = ((vec2<f32>(x_206.x, x_206.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_214 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_213.x, x_213.y, x_214.z);
  let x_216 : vec3<f32> = u_xlat7;
  let x_218 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec2<f32>(x_216.x, x_216.y), vec2<f32>(x_218.x, x_218.y));
  let x_221 : f32 = u_xlat35;
  u_xlat35 = min(x_221, 1.0f);
  let x_223 : f32 = u_xlat35;
  u_xlat35 = (-(x_223) + 1.0f);
  let x_226 : f32 = u_xlat35;
  u_xlat7.z = sqrt(x_226);
  let x_230 : f32 = u_xlat3.x;
  let x_233 : f32 = x_39.x_Metallic;
  u_xlat3.x = (x_230 * x_233);
  let x_236 : f32 = u_xlat50;
  let x_238 : f32 = u_xlat49;
  let x_241 : f32 = x_39.x_Cutoff;
  u_xlat49 = ((-(x_236) * x_238) + -(x_241));
  let x_244 : f32 = u_xlat49;
  u_xlat49 = (x_244 + 1.0f);
  let x_249 : f32 = u_xlat49;
  u_xlatb49 = (x_249 < 0.0f);
  let x_251 : bool = u_xlatb49;
  if (((select(0i, 1i, x_251) * -1i) != 0i)) {
    discard;
  }
  let x_262 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_262 == 1.0f);
  let x_264 : bool = u_xlatb49;
  if (x_264) {
    let x_268 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb49 = (x_268 == 1.0f);
    let x_271 : vec4<f32> = vs_TEXCOORD2;
    let x_275 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_277 : vec3<f32> = (vec3<f32>(x_271.w, x_271.w, x_271.w) * vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_281 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_283 : vec4<f32> = vs_TEXCOORD1;
    let x_286 : vec4<f32> = u_xlat8;
    let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.w, x_283.w, x_283.w)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_293 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_295 : vec4<f32> = vs_TEXCOORD3;
    let x_298 : vec4<f32> = u_xlat8;
    let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.w, x_295.w, x_295.w)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
    let x_301 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_303 : vec4<f32> = u_xlat8;
    let x_307 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_309 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + vec3<f32>(x_307.x, x_307.y, x_307.z));
    let x_310 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
    let x_312 : bool = u_xlatb49;
    if (x_312) {
      let x_317 : vec4<f32> = u_xlat8;
      x_314 = vec3<f32>(x_317.x, x_317.y, x_317.z);
    } else {
      let x_320 : vec4<f32> = u_xlat0;
      x_314 = vec3<f32>(x_320.x, x_320.y, x_320.z);
    }
    let x_322 : vec3<f32> = x_314;
    let x_323 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_325 : vec4<f32> = u_xlat8;
    let x_329 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_331 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) + -(x_329));
    let x_332 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
    let x_334 : vec4<f32> = u_xlat8;
    let x_338 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_339 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) * x_338);
    let x_340 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_340.x, x_339.x, x_339.y, x_339.z);
    let x_343 : f32 = u_xlat8.y;
    u_xlat49 = ((x_343 * 0.25f) + 0.75f);
    let x_349 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat50 = ((x_349 * 0.5f) + 0.75f);
    let x_353 : f32 = u_xlat49;
    let x_354 : f32 = u_xlat50;
    u_xlat8.x = max(x_353, x_354);
    let x_365 : vec4<f32> = u_xlat8;
    let x_367 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_365.x, x_365.z, x_365.w));
    u_xlat8 = x_367;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_373 : vec4<f32> = u_xlat8;
  let x_375 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat49 = dot(x_373, x_375);
  let x_377 : f32 = u_xlat49;
  u_xlat49 = clamp(x_377, 0.0f, 1.0f);
  let x_379 : vec4<f32> = vs_TEXCOORD1;
  let x_381 : vec3<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), x_381);
  let x_384 : vec4<f32> = vs_TEXCOORD2;
  let x_386 : vec3<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), x_386);
  let x_389 : vec4<f32> = vs_TEXCOORD3;
  let x_391 : vec3<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), x_391);
  let x_394 : vec4<f32> = u_xlat8;
  let x_396 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(vec3<f32>(x_394.x, x_394.y, x_394.z), vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_399);
  let x_401 : f32 = u_xlat50;
  let x_403 : vec4<f32> = u_xlat8;
  u_xlat7 = (vec3<f32>(x_401, x_401, x_401) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_407 : f32 = u_xlat3.y;
  let x_411 : f32 = x_39.x_Glossiness;
  u_xlat50 = ((-(x_407) * x_411) + 1.0f);
  let x_414 : vec4<f32> = u_xlat2;
  let x_417 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(-(vec3<f32>(x_414.x, x_414.y, x_414.z)), x_417);
  let x_419 : f32 = u_xlat35;
  let x_420 : f32 = u_xlat35;
  u_xlat35 = (x_419 + x_420);
  let x_422 : vec3<f32> = u_xlat7;
  let x_423 : f32 = u_xlat35;
  let x_427 : vec4<f32> = u_xlat2;
  let x_430 : vec3<f32> = ((x_422 * -(vec3<f32>(x_423, x_423, x_423))) + -(vec3<f32>(x_427.x, x_427.y, x_427.z)));
  let x_431 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = u_xlat49;
  let x_438 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_434, x_434, x_434) * vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_443 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_443);
  let x_445 : bool = u_xlatb49;
  if (x_445) {
    let x_448 : vec4<f32> = u_xlat8;
    let x_450 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_448.x, x_448.y, x_448.z), vec3<f32>(x_450.x, x_450.y, x_450.z));
    let x_453 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_453);
    let x_456 : f32 = u_xlat49;
    let x_458 : vec4<f32> = u_xlat8;
    let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
    let x_461 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
    let x_464 : vec4<f32> = u_xlat0;
    let x_468 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    u_xlat11 = (-(vec3<f32>(x_464.x, x_464.y, x_464.z)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
    let x_471 : vec3<f32> = u_xlat11;
    let x_472 : vec4<f32> = u_xlat10;
    u_xlat11 = (x_471 / vec3<f32>(x_472.x, x_472.y, x_472.z));
    let x_476 : vec4<f32> = u_xlat0;
    let x_481 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_476.x, x_476.y, x_476.z)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
    let x_484 : vec3<f32> = u_xlat12;
    let x_485 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_484 / vec3<f32>(x_485.x, x_485.y, x_485.z));
    let x_492 : vec4<f32> = u_xlat10;
    let x_495 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_492.x, x_492.y, x_492.z, x_492.x));
    u_xlatb13 = vec3<bool>(x_495.x, x_495.y, x_495.z);
    let x_498 : vec3<f32> = u_xlat11;
    hlslcc_movcTemp = x_498;
    let x_500 : bool = u_xlatb13.x;
    if (x_500) {
      let x_506 : f32 = u_xlat11.x;
      x_502 = x_506;
    } else {
      let x_509 : f32 = u_xlat12.x;
      x_502 = x_509;
    }
    let x_510 : f32 = x_502;
    hlslcc_movcTemp.x = x_510;
    let x_513 : bool = u_xlatb13.y;
    if (x_513) {
      let x_518 : f32 = u_xlat11.y;
      x_514 = x_518;
    } else {
      let x_521 : f32 = u_xlat12.y;
      x_514 = x_521;
    }
    let x_522 : f32 = x_514;
    hlslcc_movcTemp.y = x_522;
    let x_525 : bool = u_xlatb13.z;
    if (x_525) {
      let x_530 : f32 = u_xlat11.z;
      x_526 = x_530;
    } else {
      let x_533 : f32 = u_xlat12.z;
      x_526 = x_533;
    }
    let x_534 : f32 = x_526;
    hlslcc_movcTemp.z = x_534;
    let x_536 : vec3<f32> = hlslcc_movcTemp;
    u_xlat11 = x_536;
    let x_538 : f32 = u_xlat11.y;
    let x_540 : f32 = u_xlat11.x;
    u_xlat49 = min(x_538, x_540);
    let x_543 : f32 = u_xlat11.z;
    let x_544 : f32 = u_xlat49;
    u_xlat49 = min(x_543, x_544);
    let x_546 : vec4<f32> = u_xlat0;
    let x_549 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    u_xlat11 = (vec3<f32>(x_546.x, x_546.y, x_546.z) + -(vec3<f32>(x_549.x, x_549.y, x_549.z)));
    let x_553 : vec4<f32> = u_xlat10;
    let x_555 : f32 = u_xlat49;
    let x_558 : vec3<f32> = u_xlat11;
    let x_559 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(x_555, x_555, x_555)) + x_558);
    let x_560 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  } else {
    let x_563 : vec4<f32> = u_xlat8;
    let x_564 : vec3<f32> = vec3<f32>(x_563.x, x_563.y, x_563.z);
    let x_565 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  }
  let x_567 : f32 = u_xlat50;
  u_xlat49 = ((-(x_567) * 0.699999988f) + 1.700000048f);
  let x_573 : f32 = u_xlat49;
  let x_574 : f32 = u_xlat50;
  u_xlat49 = (x_573 * x_574);
  let x_576 : f32 = u_xlat49;
  u_xlat49 = (x_576 * 6.0f);
  let x_587 : vec4<f32> = u_xlat10;
  let x_589 : f32 = u_xlat49;
  let x_590 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_587.x, x_587.y, x_587.z), x_589);
  u_xlat10 = x_590;
  let x_592 : f32 = u_xlat10.w;
  u_xlat35 = (x_592 + -1.0f);
  let x_596 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_597 : f32 = u_xlat35;
  u_xlat35 = ((x_596 * x_597) + 1.0f);
  let x_600 : f32 = u_xlat35;
  u_xlat35 = log2(x_600);
  let x_602 : f32 = u_xlat35;
  let x_604 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_602 * x_604);
  let x_606 : f32 = u_xlat35;
  u_xlat35 = exp2(x_606);
  let x_608 : f32 = u_xlat35;
  let x_610 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_608 * x_610);
  let x_612 : vec4<f32> = u_xlat10;
  let x_614 : f32 = u_xlat35;
  u_xlat11 = (vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614, x_614, x_614));
  let x_619 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_619 < 0.999989986f);
  let x_622 : bool = u_xlatb52;
  if (x_622) {
    let x_627 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_627);
    let x_629 : bool = u_xlatb52;
    if (x_629) {
      let x_633 : vec4<f32> = u_xlat8;
      let x_635 : vec4<f32> = u_xlat8;
      u_xlat52 = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
      let x_638 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_638);
      let x_640 : f32 = u_xlat52;
      let x_642 : vec4<f32> = u_xlat8;
      u_xlat12 = (vec3<f32>(x_640, x_640, x_640) * vec3<f32>(x_642.x, x_642.y, x_642.z));
      let x_646 : vec4<f32> = u_xlat0;
      let x_651 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_646.x, x_646.y, x_646.z)) + vec3<f32>(x_651.x, x_651.y, x_651.z));
      let x_654 : vec3<f32> = u_xlat13;
      let x_655 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_654 / x_655);
      let x_658 : vec4<f32> = u_xlat0;
      let x_663 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_658.x, x_658.y, x_658.z)) + vec3<f32>(x_663.x, x_663.y, x_663.z));
      let x_666 : vec3<f32> = u_xlat14;
      let x_667 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_666 / x_667);
      let x_670 : vec3<f32> = u_xlat12;
      let x_672 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_670.x, x_670.y, x_670.z, x_670.x));
      u_xlatb15 = vec3<bool>(x_672.x, x_672.y, x_672.z);
      let x_675 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_675;
      let x_677 : bool = u_xlatb15.x;
      if (x_677) {
        let x_682 : f32 = u_xlat13.x;
        x_678 = x_682;
      } else {
        let x_685 : f32 = u_xlat14.x;
        x_678 = x_685;
      }
      let x_686 : f32 = x_678;
      hlslcc_movcTemp_1.x = x_686;
      let x_689 : bool = u_xlatb15.y;
      if (x_689) {
        let x_694 : f32 = u_xlat13.y;
        x_690 = x_694;
      } else {
        let x_697 : f32 = u_xlat14.y;
        x_690 = x_697;
      }
      let x_698 : f32 = x_690;
      hlslcc_movcTemp_1.y = x_698;
      let x_701 : bool = u_xlatb15.z;
      if (x_701) {
        let x_706 : f32 = u_xlat13.z;
        x_702 = x_706;
      } else {
        let x_709 : f32 = u_xlat14.z;
        x_702 = x_709;
      }
      let x_710 : f32 = x_702;
      hlslcc_movcTemp_1.z = x_710;
      let x_712 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_712;
      let x_714 : f32 = u_xlat13.y;
      let x_716 : f32 = u_xlat13.x;
      u_xlat52 = min(x_714, x_716);
      let x_719 : f32 = u_xlat13.z;
      let x_720 : f32 = u_xlat52;
      u_xlat52 = min(x_719, x_720);
      let x_722 : vec4<f32> = u_xlat0;
      let x_725 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_728 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) + -(vec3<f32>(x_725.x, x_725.y, x_725.z)));
      let x_729 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
      let x_731 : vec3<f32> = u_xlat12;
      let x_732 : f32 = u_xlat52;
      let x_735 : vec4<f32> = u_xlat0;
      let x_737 : vec3<f32> = ((x_731 * vec3<f32>(x_732, x_732, x_732)) + vec3<f32>(x_735.x, x_735.y, x_735.z));
      let x_738 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
    }
    let x_744 : vec4<f32> = u_xlat8;
    let x_746 : f32 = u_xlat49;
    let x_747 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_744.x, x_744.y, x_744.z), x_746);
    u_xlat8 = x_747;
    let x_749 : f32 = u_xlat8.w;
    u_xlat0.x = (x_749 + -1.0f);
    let x_754 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_756 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_754 * x_756) + 1.0f);
    let x_761 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_761);
    let x_765 : f32 = u_xlat0.x;
    let x_767 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_765 * x_767);
    let x_771 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_771);
    let x_775 : f32 = u_xlat0.x;
    let x_777 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_775 * x_777);
    let x_780 : vec4<f32> = u_xlat8;
    let x_782 : vec4<f32> = u_xlat0;
    let x_784 : vec3<f32> = (vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(x_782.x, x_782.x, x_782.x));
    let x_785 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
    let x_787 : f32 = u_xlat35;
    let x_789 : vec4<f32> = u_xlat10;
    let x_792 : vec4<f32> = u_xlat0;
    let x_795 : vec3<f32> = ((vec3<f32>(x_787, x_787, x_787) * vec3<f32>(x_789.x, x_789.y, x_789.z)) + -(vec3<f32>(x_792.x, x_792.y, x_792.z)));
    let x_796 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
    let x_799 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_801 : vec4<f32> = u_xlat8;
    let x_804 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_799.w, x_799.w, x_799.w) * vec3<f32>(x_801.x, x_801.y, x_801.z)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  }
  let x_807 : f32 = u_xlat51;
  let x_809 : vec3<f32> = u_xlat11;
  let x_810 : vec3<f32> = (vec3<f32>(x_807, x_807, x_807) * x_809);
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat4;
  let x_816 : vec4<f32> = x_39.x_Color;
  let x_821 : vec3<f32> = ((vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_816.x, x_816.y, x_816.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_822 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec4<f32> = u_xlat3;
  let x_826 : vec4<f32> = u_xlat4;
  let x_831 : vec3<f32> = ((vec3<f32>(x_824.x, x_824.x, x_824.x) * vec3<f32>(x_826.x, x_826.y, x_826.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_832 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : f32 = u_xlat3.x;
  u_xlat49 = ((-(x_835) * 0.959999979f) + 0.959999979f);
  let x_840 : f32 = u_xlat49;
  let x_842 : vec3<f32> = u_xlat5;
  let x_843 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * x_842);
  let x_844 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_843.x, x_844.y, x_843.y, x_843.z);
  let x_846 : vec3<f32> = u_xlat1;
  let x_847 : f32 = u_xlat48;
  let x_851 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_846 * vec3<f32>(x_847, x_847, x_847)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec3<f32> = u_xlat1;
  let x_855 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_854, x_855);
  let x_857 : f32 = u_xlat48;
  u_xlat48 = max(x_857, 0.001f);
  let x_860 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_860);
  let x_862 : f32 = u_xlat48;
  let x_864 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_862, x_862, x_862) * x_864);
  let x_866 : vec3<f32> = u_xlat7;
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(x_866, vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : vec3<f32> = u_xlat7;
  let x_872 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_870, vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_877 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_877, 0.0f, 1.0f);
  let x_881 : vec3<f32> = u_xlat7;
  let x_882 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_881, x_882);
  let x_884 : f32 = u_xlat18;
  u_xlat18 = clamp(x_884, 0.0f, 1.0f);
  let x_887 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_889 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_887.x, x_887.y, x_887.z), x_889);
  let x_893 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_893, 0.0f, 1.0f);
  let x_898 : f32 = u_xlat1.x;
  let x_900 : f32 = u_xlat1.x;
  u_xlat17 = (x_898 * x_900);
  let x_902 : f32 = u_xlat17;
  let x_904 : f32 = u_xlat50;
  u_xlat17 = dot(vec2<f32>(x_902, x_902), vec2<f32>(x_904, x_904));
  let x_907 : f32 = u_xlat17;
  u_xlat17 = (x_907 + -0.5f);
  let x_912 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_912) + 1.0f);
  let x_916 : f32 = u_xlat33;
  let x_917 : f32 = u_xlat33;
  u_xlat34 = (x_916 * x_917);
  let x_919 : f32 = u_xlat34;
  let x_920 : f32 = u_xlat34;
  u_xlat34 = (x_919 * x_920);
  let x_922 : f32 = u_xlat33;
  let x_923 : f32 = u_xlat34;
  u_xlat33 = (x_922 * x_923);
  let x_925 : f32 = u_xlat17;
  let x_926 : f32 = u_xlat33;
  u_xlat33 = ((x_925 * x_926) + 1.0f);
  let x_929 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_929)) + 1.0f);
  let x_933 : f32 = u_xlat34;
  let x_934 : f32 = u_xlat34;
  u_xlat52 = (x_933 * x_934);
  let x_936 : f32 = u_xlat52;
  let x_937 : f32 = u_xlat52;
  u_xlat52 = (x_936 * x_937);
  let x_939 : f32 = u_xlat34;
  let x_940 : f32 = u_xlat52;
  u_xlat34 = (x_939 * x_940);
  let x_942 : f32 = u_xlat17;
  let x_943 : f32 = u_xlat34;
  u_xlat17 = ((x_942 * x_943) + 1.0f);
  let x_946 : f32 = u_xlat17;
  let x_947 : f32 = u_xlat33;
  u_xlat17 = (x_946 * x_947);
  let x_950 : f32 = u_xlat2.x;
  let x_951 : f32 = u_xlat17;
  u_xlat17 = (x_950 * x_951);
  let x_953 : f32 = u_xlat50;
  let x_954 : f32 = u_xlat50;
  u_xlat33 = (x_953 * x_954);
  let x_956 : f32 = u_xlat33;
  u_xlat33 = max(x_956, 0.002f);
  let x_959 : f32 = u_xlat33;
  u_xlat50 = (-(x_959) + 1.0f);
  let x_962 : f32 = u_xlat48;
  let x_964 : f32 = u_xlat50;
  let x_966 : f32 = u_xlat33;
  u_xlat52 = ((abs(x_962) * x_964) + x_966);
  let x_969 : f32 = u_xlat2.x;
  let x_970 : f32 = u_xlat50;
  let x_972 : f32 = u_xlat33;
  u_xlat50 = ((x_969 * x_970) + x_972);
  let x_974 : f32 = u_xlat48;
  let x_976 : f32 = u_xlat50;
  u_xlat48 = (abs(x_974) * x_976);
  let x_979 : f32 = u_xlat2.x;
  let x_980 : f32 = u_xlat52;
  let x_982 : f32 = u_xlat48;
  u_xlat48 = ((x_979 * x_980) + x_982);
  let x_984 : f32 = u_xlat48;
  u_xlat48 = (x_984 + 0.00001f);
  let x_987 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_987);
  let x_989 : f32 = u_xlat33;
  let x_990 : f32 = u_xlat33;
  u_xlat50 = (x_989 * x_990);
  let x_992 : f32 = u_xlat18;
  let x_993 : f32 = u_xlat50;
  let x_995 : f32 = u_xlat18;
  u_xlat52 = ((x_992 * x_993) + -(x_995));
  let x_998 : f32 = u_xlat52;
  let x_999 : f32 = u_xlat18;
  u_xlat18 = ((x_998 * x_999) + 1.0f);
  let x_1002 : f32 = u_xlat50;
  u_xlat50 = (x_1002 * 0.318309873f);
  let x_1005 : f32 = u_xlat18;
  let x_1006 : f32 = u_xlat18;
  u_xlat18 = ((x_1005 * x_1006) + 0.0000001f);
  let x_1010 : f32 = u_xlat50;
  let x_1011 : f32 = u_xlat18;
  u_xlat18 = (x_1010 / x_1011);
  let x_1013 : f32 = u_xlat48;
  let x_1014 : f32 = u_xlat18;
  u_xlat48 = (x_1013 * x_1014);
  let x_1017 : f32 = u_xlat2.x;
  let x_1018 : f32 = u_xlat48;
  u_xlat48 = (x_1017 * x_1018);
  let x_1020 : f32 = u_xlat48;
  u_xlat48 = (x_1020 * 3.141592741f);
  let x_1023 : f32 = u_xlat48;
  u_xlat48 = max(x_1023, 0.0f);
  let x_1025 : f32 = u_xlat33;
  let x_1026 : f32 = u_xlat33;
  u_xlat33 = ((x_1025 * x_1026) + 1.0f);
  let x_1029 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1029);
  let x_1032 : vec4<f32> = u_xlat4;
  let x_1034 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1040 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1040 == 0.0f));
  let x_1042 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1042);
  let x_1045 : f32 = u_xlat48;
  let x_1047 : f32 = u_xlat2.x;
  u_xlat48 = (x_1045 * x_1047);
  let x_1050 : f32 = u_xlat3.y;
  let x_1052 : f32 = x_39.x_Glossiness;
  let x_1054 : f32 = u_xlat49;
  u_xlat49 = ((x_1050 * x_1052) + -(x_1054));
  let x_1057 : f32 = u_xlat49;
  u_xlat49 = (x_1057 + 1.0f);
  let x_1059 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1059, 0.0f, 1.0f);
  let x_1061 : f32 = u_xlat17;
  let x_1063 : vec3<f32> = u_xlat9;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1061, x_1061, x_1061) * x_1063);
  let x_1065 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1064.z);
  let x_1067 : vec3<f32> = u_xlat9;
  let x_1068 : f32 = u_xlat48;
  u_xlat5 = (x_1067 * vec3<f32>(x_1068, x_1068, x_1068));
  let x_1072 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1072) + 1.0f);
  let x_1077 : f32 = u_xlat0.w;
  let x_1079 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1077 * x_1079);
  let x_1083 : f32 = u_xlat1.x;
  let x_1085 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1083 * x_1085);
  let x_1088 : vec4<f32> = u_xlat0;
  let x_1089 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1088 * vec4<f32>(x_1089.z, x_1089.z, x_1089.z, x_1089.x));
  let x_1092 : vec4<f32> = u_xlat4;
  u_xlat7 = (-(vec3<f32>(x_1092.x, x_1092.y, x_1092.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1097 : vec3<f32> = u_xlat7;
  let x_1098 : vec4<f32> = u_xlat0;
  let x_1101 : vec4<f32> = u_xlat4;
  u_xlat7 = ((x_1097 * vec3<f32>(x_1098.w, x_1098.w, x_1098.w)) + vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1104 : vec3<f32> = u_xlat5;
  let x_1105 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_1104 * x_1105);
  let x_1107 : vec4<f32> = u_xlat3;
  let x_1109 : vec4<f32> = u_xlat2;
  let x_1112 : vec3<f32> = u_xlat5;
  let x_1113 : vec3<f32> = ((vec3<f32>(x_1107.x, x_1107.z, x_1107.w) * vec3<f32>(x_1109.x, x_1109.y, x_1109.w)) + x_1112);
  let x_1114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1113.z);
  let x_1116 : vec4<f32> = u_xlat4;
  let x_1119 : f32 = u_xlat49;
  u_xlat1 = (-(vec3<f32>(x_1116.x, x_1116.y, x_1116.z)) + vec3<f32>(x_1119, x_1119, x_1119));
  let x_1122 : f32 = u_xlat34;
  let x_1124 : vec3<f32> = u_xlat1;
  let x_1126 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1122, x_1122, x_1122) * x_1124) + vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1129 : vec4<f32> = u_xlat0;
  let x_1131 : vec3<f32> = u_xlat1;
  let x_1133 : vec4<f32> = u_xlat2;
  let x_1135 : vec3<f32> = ((vec3<f32>(x_1129.x, x_1129.y, x_1129.z) * x_1131) + vec3<f32>(x_1133.x, x_1133.y, x_1133.w));
  let x_1136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1140 : vec3<f32> = u_xlat6;
  let x_1141 : vec4<f32> = u_xlat0;
  let x_1143 : vec3<f32> = (x_1140 + vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
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

