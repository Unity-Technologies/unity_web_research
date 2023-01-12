struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlatb49 : bool;
  var u_xlatb5 : bool;
  var u_xlat20 : vec3<f32>;
  var x_245 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb48 : bool;
  var u_xlat8 : vec4<f32>;
  var x_453 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_637 : f32;
  var x_649 : f32;
  var x_661 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_815 : f32;
  var x_827 : f32;
  var x_839 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlat18 : f32;
  var u_xlat33 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat45 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat45;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_81 : vec4<f32> = vs_TEXCOORD4;
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  u_xlat46 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_86);
  let x_90 : f32 = u_xlat46;
  let x_92 : vec4<f32> = vs_TEXCOORD4;
  let x_94 : vec3<f32> = (vec3<f32>(x_90, x_90, x_90) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = vs_TEXCOORD1;
  let x_100 : vec4<f32> = vs_TEXCOORD1;
  u_xlat46 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_103);
  let x_106 : f32 = u_xlat46;
  let x_108 : vec4<f32> = vs_TEXCOORD1;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_119 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_119;
  let x_124 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_124;
  let x_128 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_128;
  let x_132 : vec4<f32> = u_xlat4;
  let x_138 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_139 : vec3<f32> = (-(vec3<f32>(x_132.x, x_132.y, x_132.z)) + x_138);
  let x_140 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_145 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_145;
  let x_149 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_149;
  let x_153 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_153;
  let x_156 : vec4<f32> = u_xlat5;
  let x_158 : vec3<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), x_158);
  let x_160 : vec4<f32> = u_xlat4;
  let x_164 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_167 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) + -(vec3<f32>(x_164.x, x_164.y, x_164.z)));
  let x_168 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec4<f32> = u_xlat5;
  let x_173 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : f32 = u_xlat49;
  u_xlat49 = sqrt(x_176);
  let x_178 : f32 = u_xlat48;
  let x_180 : f32 = u_xlat49;
  u_xlat49 = (-(x_178) + x_180);
  let x_183 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_184 : f32 = u_xlat49;
  let x_186 : f32 = u_xlat48;
  u_xlat48 = ((x_183 * x_184) + x_186);
  let x_188 : f32 = u_xlat48;
  let x_191 : f32 = x_33.x_LightShadowData.z;
  let x_194 : f32 = x_33.x_LightShadowData.w;
  u_xlat48 = ((x_188 * x_191) + x_194);
  let x_196 : f32 = u_xlat48;
  u_xlat48 = clamp(x_196, 0.0f, 1.0f);
  let x_205 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_205 == 1.0f);
  let x_207 : bool = u_xlatb49;
  if (x_207) {
    let x_212 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb5 = (x_212 == 1.0f);
    let x_215 : vec4<f32> = vs_TEXCOORD3;
    let x_219 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    u_xlat20 = (vec3<f32>(x_215.w, x_215.w, x_215.w) * vec3<f32>(x_219.x, x_219.y, x_219.z));
    let x_223 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_225 : vec4<f32> = vs_TEXCOORD2;
    let x_228 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.w, x_225.w)) + x_228);
    let x_231 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_233 : vec4<f32> = vs_TEXCOORD4;
    let x_236 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.w, x_233.w, x_233.w)) + x_236);
    let x_238 : vec3<f32> = u_xlat20;
    let x_241 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    u_xlat20 = (x_238 + vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : bool = u_xlatb5;
    if (x_244) {
      let x_248 : vec3<f32> = u_xlat20;
      x_245 = x_248;
    } else {
      let x_250 : vec4<f32> = u_xlat4;
      x_245 = vec3<f32>(x_250.x, x_250.y, x_250.z);
    }
    let x_252 : vec3<f32> = x_245;
    let x_253 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat5;
    let x_259 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_261 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + -(x_259));
    let x_262 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat5;
    let x_268 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_269 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) * x_268);
    let x_270 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
    let x_273 : f32 = u_xlat5.y;
    u_xlat20.x = ((x_273 * 0.25f) + 0.75f);
    let x_280 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat6.x = ((x_280 * 0.5f) + 0.75f);
    let x_286 : f32 = u_xlat20.x;
    let x_288 : f32 = u_xlat6.x;
    u_xlat5.x = max(x_286, x_288);
    let x_299 : vec4<f32> = u_xlat5;
    let x_301 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_299.x, x_299.z, x_299.w));
    u_xlat5 = x_301;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_307 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat5.x = dot(x_307, x_310);
  let x_314 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_314, 0.0f, 1.0f);
  let x_318 : vec4<f32> = vs_TEXCOORD7;
  let x_320 : vec4<f32> = vs_TEXCOORD7;
  let x_322 : vec2<f32> = (vec2<f32>(x_318.x, x_318.y) / vec2<f32>(x_320.w, x_320.w));
  let x_323 : vec3<f32> = u_xlat20;
  u_xlat20 = vec3<f32>(x_322.x, x_322.y, x_323.z);
  let x_330 : vec3<f32> = u_xlat20;
  let x_332 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_330.x, x_330.y));
  u_xlat20.x = x_332.x;
  let x_336 : f32 = u_xlat20.x;
  let x_339 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_336) + x_339);
  let x_342 : f32 = u_xlat48;
  let x_344 : f32 = u_xlat5.x;
  let x_347 : f32 = u_xlat20.x;
  u_xlat48 = ((x_342 * x_344) + x_347);
  let x_354 : vec4<f32> = vs_TEXCOORD0;
  let x_356 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_354.x, x_354.y));
  u_xlat5.x = x_356.y;
  let x_361 : f32 = x_33.x_OcclusionStrength;
  u_xlat20.x = (-(x_361) + 1.0f);
  let x_366 : f32 = u_xlat5.x;
  let x_368 : f32 = x_33.x_OcclusionStrength;
  let x_371 : f32 = u_xlat20.x;
  u_xlat5.x = ((x_366 * x_368) + x_371);
  let x_376 : f32 = x_33.x_Glossiness;
  u_xlat20.x = (-(x_376) + 1.0f);
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat35 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : f32 = u_xlat35;
  let x_387 : f32 = u_xlat35;
  u_xlat35 = (x_386 + x_387);
  let x_389 : vec4<f32> = u_xlat2;
  let x_391 : f32 = u_xlat35;
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_389.x, x_389.y, x_389.z) * -(vec3<f32>(x_391, x_391, x_391))) + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_399 : f32 = u_xlat48;
  let x_403 : vec4<f32> = x_33.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_399, x_399, x_399) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : bool = u_xlatb49;
  if (x_406) {
    let x_411 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_411 == 1.0f);
    let x_414 : vec4<f32> = vs_TEXCOORD3;
    let x_417 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_419 : vec3<f32> = (vec3<f32>(x_414.w, x_414.w, x_414.w) * vec3<f32>(x_417.x, x_417.y, x_417.z));
    let x_420 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
    let x_423 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_425 : vec4<f32> = vs_TEXCOORD2;
    let x_428 : vec4<f32> = u_xlat8;
    let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.w, x_425.w, x_425.w)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
    let x_434 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_436 : vec4<f32> = vs_TEXCOORD4;
    let x_439 : vec4<f32> = u_xlat8;
    let x_441 : vec3<f32> = ((vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(x_436.w, x_436.w, x_436.w)) + vec3<f32>(x_439.x, x_439.y, x_439.z));
    let x_442 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
    let x_444 : vec4<f32> = u_xlat8;
    let x_447 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_449 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + vec3<f32>(x_447.x, x_447.y, x_447.z));
    let x_450 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
    let x_452 : bool = u_xlatb48;
    if (x_452) {
      let x_456 : vec4<f32> = u_xlat8;
      x_453 = vec3<f32>(x_456.x, x_456.y, x_456.z);
    } else {
      let x_459 : vec4<f32> = u_xlat4;
      x_453 = vec3<f32>(x_459.x, x_459.y, x_459.z);
    }
    let x_461 : vec3<f32> = x_453;
    let x_462 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
    let x_464 : vec4<f32> = u_xlat8;
    let x_467 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_469 : vec3<f32> = (vec3<f32>(x_464.x, x_464.y, x_464.z) + -(x_467));
    let x_470 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
    let x_472 : vec4<f32> = u_xlat8;
    let x_475 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) * x_475);
    let x_477 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_477.x, x_476.x, x_476.y, x_476.z);
    let x_480 : f32 = u_xlat8.y;
    u_xlat48 = (x_480 * 0.25f);
    let x_483 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat49 = (x_483 * 0.5f);
    let x_486 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat35 = ((-(x_486) * 0.5f) + 0.25f);
    let x_490 : f32 = u_xlat48;
    let x_491 : f32 = u_xlat49;
    u_xlat48 = max(x_490, x_491);
    let x_493 : f32 = u_xlat35;
    let x_494 : f32 = u_xlat48;
    u_xlat8.x = min(x_493, x_494);
    let x_501 : vec4<f32> = u_xlat8;
    let x_503 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_501.x, x_501.z, x_501.w));
    u_xlat9 = x_503;
    let x_505 : vec4<f32> = u_xlat8;
    let x_508 : vec3<f32> = (vec3<f32>(x_505.x, x_505.z, x_505.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_509 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
    let x_514 : vec4<f32> = u_xlat10;
    let x_516 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_514.x, x_514.y, x_514.z));
    u_xlat10 = x_516;
    let x_517 : vec4<f32> = u_xlat8;
    let x_520 : vec3<f32> = (vec3<f32>(x_517.x, x_517.z, x_517.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_521 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
    let x_526 : vec4<f32> = u_xlat8;
    let x_528 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_526.x, x_526.y, x_526.z));
    u_xlat8 = x_528;
    u_xlat2.w = 1.0f;
    let x_530 : vec4<f32> = u_xlat9;
    let x_531 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_530, x_531);
    let x_534 : vec4<f32> = u_xlat10;
    let x_535 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_534, x_535);
    let x_538 : vec4<f32> = u_xlat8;
    let x_539 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_538, x_539);
  } else {
    u_xlat2.w = 1.0f;
    let x_545 : vec4<f32> = x_33.unity_SHAr;
    let x_546 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_545, x_546);
    let x_550 : vec4<f32> = x_33.unity_SHAg;
    let x_551 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_550, x_551);
    let x_556 : vec4<f32> = x_33.unity_SHAb;
    let x_557 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_556, x_557);
  }
  let x_560 : vec4<f32> = u_xlat9;
  let x_563 : vec4<f32> = vs_TEXCOORD5;
  let x_565 : vec3<f32> = (vec3<f32>(x_560.x, x_560.y, x_560.z) + vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat8;
  let x_571 : vec3<f32> = max(vec3<f32>(x_568.x, x_568.y, x_568.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_572 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_577 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_577);
  let x_579 : bool = u_xlatb47;
  if (x_579) {
    let x_583 : vec3<f32> = u_xlat6;
    let x_584 : vec3<f32> = u_xlat6;
    u_xlat47 = dot(x_583, x_584);
    let x_586 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_586);
    let x_588 : f32 = u_xlat47;
    let x_590 : vec3<f32> = u_xlat6;
    let x_591 : vec3<f32> = (vec3<f32>(x_588, x_588, x_588) * x_590);
    let x_592 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
    let x_594 : vec4<f32> = u_xlat4;
    let x_599 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_601 : vec3<f32> = (-(vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_599.x, x_599.y, x_599.z));
    let x_602 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
    let x_604 : vec4<f32> = u_xlat10;
    let x_606 : vec4<f32> = u_xlat9;
    let x_608 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) / vec3<f32>(x_606.x, x_606.y, x_606.z));
    let x_609 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
    let x_612 : vec4<f32> = u_xlat4;
    let x_617 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_612.x, x_612.y, x_612.z)) + vec3<f32>(x_617.x, x_617.y, x_617.z));
    let x_620 : vec3<f32> = u_xlat11;
    let x_621 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_620 / vec3<f32>(x_621.x, x_621.y, x_621.z));
    let x_628 : vec4<f32> = u_xlat9;
    let x_631 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_628.x, x_628.y, x_628.z, x_628.x));
    u_xlatb12 = vec3<bool>(x_631.x, x_631.y, x_631.z);
    let x_634 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_634;
    let x_636 : bool = u_xlatb12.x;
    if (x_636) {
      let x_641 : f32 = u_xlat10.x;
      x_637 = x_641;
    } else {
      let x_644 : f32 = u_xlat11.x;
      x_637 = x_644;
    }
    let x_645 : f32 = x_637;
    hlslcc_movcTemp.x = x_645;
    let x_648 : bool = u_xlatb12.y;
    if (x_648) {
      let x_653 : f32 = u_xlat10.y;
      x_649 = x_653;
    } else {
      let x_656 : f32 = u_xlat11.y;
      x_649 = x_656;
    }
    let x_657 : f32 = x_649;
    hlslcc_movcTemp.y = x_657;
    let x_660 : bool = u_xlatb12.z;
    if (x_660) {
      let x_665 : f32 = u_xlat10.z;
      x_661 = x_665;
    } else {
      let x_668 : f32 = u_xlat11.z;
      x_661 = x_668;
    }
    let x_669 : f32 = x_661;
    hlslcc_movcTemp.z = x_669;
    let x_671 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_671;
    let x_673 : f32 = u_xlat10.y;
    let x_675 : f32 = u_xlat10.x;
    u_xlat47 = min(x_673, x_675);
    let x_678 : f32 = u_xlat10.z;
    let x_679 : f32 = u_xlat47;
    u_xlat47 = min(x_678, x_679);
    let x_681 : vec4<f32> = u_xlat4;
    let x_684 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_687 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) + -(vec3<f32>(x_684.x, x_684.y, x_684.z)));
    let x_688 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
    let x_690 : vec4<f32> = u_xlat9;
    let x_692 : f32 = u_xlat47;
    let x_695 : vec4<f32> = u_xlat10;
    let x_697 : vec3<f32> = ((vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(x_692, x_692, x_692)) + vec3<f32>(x_695.x, x_695.y, x_695.z));
    let x_698 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  } else {
    let x_701 : vec3<f32> = u_xlat6;
    let x_702 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  }
  let x_705 : f32 = u_xlat20.x;
  u_xlat47 = ((-(x_705) * 0.699999988f) + 1.700000048f);
  let x_711 : f32 = u_xlat47;
  let x_713 : f32 = u_xlat20.x;
  u_xlat47 = (x_711 * x_713);
  let x_715 : f32 = u_xlat47;
  u_xlat47 = (x_715 * 6.0f);
  let x_726 : vec4<f32> = u_xlat9;
  let x_728 : f32 = u_xlat47;
  let x_729 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_726.x, x_726.y, x_726.z), x_728);
  u_xlat9 = x_729;
  let x_731 : f32 = u_xlat9.w;
  u_xlat48 = (x_731 + -1.0f);
  let x_736 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_737 : f32 = u_xlat48;
  u_xlat48 = ((x_736 * x_737) + 1.0f);
  let x_740 : f32 = u_xlat48;
  u_xlat48 = log2(x_740);
  let x_742 : f32 = u_xlat48;
  let x_744 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_742 * x_744);
  let x_746 : f32 = u_xlat48;
  u_xlat48 = exp2(x_746);
  let x_748 : f32 = u_xlat48;
  let x_750 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_748 * x_750);
  let x_752 : vec4<f32> = u_xlat9;
  let x_754 : f32 = u_xlat48;
  let x_756 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754, x_754, x_754));
  let x_757 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_760 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_760 < 0.999989986f);
  let x_763 : bool = u_xlatb49;
  if (x_763) {
    let x_768 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_768);
    let x_770 : bool = u_xlatb49;
    if (x_770) {
      let x_773 : vec3<f32> = u_xlat6;
      let x_774 : vec3<f32> = u_xlat6;
      u_xlat49 = dot(x_773, x_774);
      let x_776 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_776);
      let x_778 : f32 = u_xlat49;
      let x_780 : vec3<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_778, x_778, x_778) * x_780);
      let x_783 : vec4<f32> = u_xlat4;
      let x_788 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_783.x, x_783.y, x_783.z)) + vec3<f32>(x_788.x, x_788.y, x_788.z));
      let x_791 : vec3<f32> = u_xlat12;
      let x_792 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_791 / x_792);
      let x_795 : vec4<f32> = u_xlat4;
      let x_800 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_795.x, x_795.y, x_795.z)) + vec3<f32>(x_800.x, x_800.y, x_800.z));
      let x_803 : vec3<f32> = u_xlat13;
      let x_804 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_803 / x_804);
      let x_807 : vec3<f32> = u_xlat11;
      let x_809 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_807.x, x_807.y, x_807.z, x_807.x));
      u_xlatb14 = vec3<bool>(x_809.x, x_809.y, x_809.z);
      let x_812 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_812;
      let x_814 : bool = u_xlatb14.x;
      if (x_814) {
        let x_819 : f32 = u_xlat12.x;
        x_815 = x_819;
      } else {
        let x_822 : f32 = u_xlat13.x;
        x_815 = x_822;
      }
      let x_823 : f32 = x_815;
      hlslcc_movcTemp_1.x = x_823;
      let x_826 : bool = u_xlatb14.y;
      if (x_826) {
        let x_831 : f32 = u_xlat12.y;
        x_827 = x_831;
      } else {
        let x_834 : f32 = u_xlat13.y;
        x_827 = x_834;
      }
      let x_835 : f32 = x_827;
      hlslcc_movcTemp_1.y = x_835;
      let x_838 : bool = u_xlatb14.z;
      if (x_838) {
        let x_843 : f32 = u_xlat12.z;
        x_839 = x_843;
      } else {
        let x_846 : f32 = u_xlat13.z;
        x_839 = x_846;
      }
      let x_847 : f32 = x_839;
      hlslcc_movcTemp_1.z = x_847;
      let x_849 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_849;
      let x_851 : f32 = u_xlat12.y;
      let x_853 : f32 = u_xlat12.x;
      u_xlat49 = min(x_851, x_853);
      let x_856 : f32 = u_xlat12.z;
      let x_857 : f32 = u_xlat49;
      u_xlat49 = min(x_856, x_857);
      let x_859 : vec4<f32> = u_xlat4;
      let x_862 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      let x_865 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) + -(vec3<f32>(x_862.x, x_862.y, x_862.z)));
      let x_866 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
      let x_868 : vec3<f32> = u_xlat11;
      let x_869 : f32 = u_xlat49;
      let x_872 : vec4<f32> = u_xlat4;
      u_xlat6 = ((x_868 * vec3<f32>(x_869, x_869, x_869)) + vec3<f32>(x_872.x, x_872.y, x_872.z));
    }
    let x_879 : vec3<f32> = u_xlat6;
    let x_880 : f32 = u_xlat47;
    let x_881 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_879, x_880);
    u_xlat4 = x_881;
    let x_883 : f32 = u_xlat4.w;
    u_xlat47 = (x_883 + -1.0f);
    let x_887 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_888 : f32 = u_xlat47;
    u_xlat47 = ((x_887 * x_888) + 1.0f);
    let x_891 : f32 = u_xlat47;
    u_xlat47 = log2(x_891);
    let x_893 : f32 = u_xlat47;
    let x_895 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_893 * x_895);
    let x_897 : f32 = u_xlat47;
    u_xlat47 = exp2(x_897);
    let x_899 : f32 = u_xlat47;
    let x_901 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_899 * x_901);
    let x_903 : vec4<f32> = u_xlat4;
    let x_905 : f32 = u_xlat47;
    let x_907 : vec3<f32> = (vec3<f32>(x_903.x, x_903.y, x_903.z) * vec3<f32>(x_905, x_905, x_905));
    let x_908 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
    let x_910 : f32 = u_xlat48;
    let x_912 : vec4<f32> = u_xlat9;
    let x_915 : vec4<f32> = u_xlat4;
    u_xlat6 = ((vec3<f32>(x_910, x_910, x_910) * vec3<f32>(x_912.x, x_912.y, x_912.z)) + -(vec3<f32>(x_915.x, x_915.y, x_915.z)));
    let x_920 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_922 : vec3<f32> = u_xlat6;
    let x_924 : vec4<f32> = u_xlat4;
    let x_926 : vec3<f32> = ((vec3<f32>(x_920.w, x_920.w, x_920.w) * x_922) + vec3<f32>(x_924.x, x_924.y, x_924.z));
    let x_927 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  }
  let x_929 : vec4<f32> = u_xlat5;
  let x_931 : vec4<f32> = u_xlat10;
  let x_933 : vec3<f32> = (vec3<f32>(x_929.x, x_929.x, x_929.x) * vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec4<f32> = vs_TEXCOORD1;
  let x_939 : f32 = u_xlat46;
  let x_943 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6 = ((-(vec3<f32>(x_936.x, x_936.y, x_936.z)) * vec3<f32>(x_939, x_939, x_939)) + vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec3<f32> = u_xlat6;
  let x_947 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(x_946, x_947);
  let x_949 : f32 = u_xlat46;
  u_xlat46 = max(x_949, 0.001f);
  let x_952 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_952);
  let x_954 : f32 = u_xlat46;
  let x_956 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_954, x_954, x_954) * x_956);
  let x_958 : vec4<f32> = u_xlat2;
  let x_960 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_958.x, x_958.y, x_958.z), -(vec3<f32>(x_960.x, x_960.y, x_960.z)));
  let x_964 : vec4<f32> = u_xlat2;
  let x_967 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_964.x, x_964.y, x_964.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : f32 = u_xlat47;
  u_xlat47 = clamp(x_970, 0.0f, 1.0f);
  let x_972 : vec4<f32> = u_xlat2;
  let x_974 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_972.x, x_972.y, x_972.z), x_974);
  let x_978 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_978, 0.0f, 1.0f);
  let x_983 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_985 : vec3<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_983.x, x_983.y, x_983.z), x_985);
  let x_989 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_989, 0.0f, 1.0f);
  let x_994 : f32 = u_xlat17.x;
  let x_996 : f32 = u_xlat17.x;
  u_xlat32 = (x_994 * x_996);
  let x_998 : f32 = u_xlat32;
  let x_1000 : vec3<f32> = u_xlat20;
  u_xlat32 = dot(vec2<f32>(x_998, x_998), vec2<f32>(x_1000.x, x_1000.x));
  let x_1003 : f32 = u_xlat32;
  u_xlat32 = (x_1003 + -0.5f);
  let x_1006 : f32 = u_xlat47;
  u_xlat3.x = (-(x_1006) + 1.0f);
  let x_1012 : f32 = u_xlat3.x;
  let x_1014 : f32 = u_xlat3.x;
  u_xlat18 = (x_1012 * x_1014);
  let x_1016 : f32 = u_xlat18;
  let x_1017 : f32 = u_xlat18;
  u_xlat18 = (x_1016 * x_1017);
  let x_1020 : f32 = u_xlat3.x;
  let x_1021 : f32 = u_xlat18;
  u_xlat3.x = (x_1020 * x_1021);
  let x_1024 : f32 = u_xlat32;
  let x_1026 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1024 * x_1026) + 1.0f);
  let x_1030 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_1030)) + 1.0f);
  let x_1035 : f32 = u_xlat18;
  let x_1036 : f32 = u_xlat18;
  u_xlat33 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat33;
  let x_1039 : f32 = u_xlat33;
  u_xlat33 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat18;
  let x_1042 : f32 = u_xlat33;
  u_xlat18 = (x_1041 * x_1042);
  let x_1044 : f32 = u_xlat32;
  let x_1045 : f32 = u_xlat18;
  u_xlat32 = ((x_1044 * x_1045) + 1.0f);
  let x_1048 : f32 = u_xlat32;
  let x_1050 : f32 = u_xlat3.x;
  u_xlat32 = (x_1048 * x_1050);
  let x_1052 : f32 = u_xlat47;
  let x_1053 : f32 = u_xlat32;
  u_xlat32 = (x_1052 * x_1053);
  let x_1056 : f32 = u_xlat20.x;
  let x_1058 : f32 = u_xlat20.x;
  u_xlat3.x = (x_1056 * x_1058);
  let x_1062 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1062, 0.002f);
  let x_1067 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1067) + 1.0f);
  let x_1070 : f32 = u_xlat46;
  let x_1072 : f32 = u_xlat33;
  let x_1075 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1070) * x_1072) + x_1075);
  let x_1077 : f32 = u_xlat47;
  let x_1078 : f32 = u_xlat33;
  let x_1081 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1077 * x_1078) + x_1081);
  let x_1083 : f32 = u_xlat46;
  let x_1085 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1083) * x_1085);
  let x_1087 : f32 = u_xlat47;
  let x_1088 : f32 = u_xlat48;
  let x_1090 : f32 = u_xlat46;
  u_xlat46 = ((x_1087 * x_1088) + x_1090);
  let x_1092 : f32 = u_xlat46;
  u_xlat46 = (x_1092 + 0.00001f);
  let x_1095 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1095);
  let x_1098 : f32 = u_xlat3.x;
  let x_1100 : f32 = u_xlat3.x;
  u_xlat33 = (x_1098 * x_1100);
  let x_1103 : f32 = u_xlat2.x;
  let x_1104 : f32 = u_xlat33;
  let x_1107 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1103 * x_1104) + -(x_1107));
  let x_1110 : f32 = u_xlat48;
  let x_1112 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1110 * x_1112) + 1.0f);
  let x_1116 : f32 = u_xlat33;
  u_xlat33 = (x_1116 * 0.318309873f);
  let x_1120 : f32 = u_xlat2.x;
  let x_1122 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1120 * x_1122) + 0.0000001f);
  let x_1127 : f32 = u_xlat33;
  let x_1129 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1127 / x_1129);
  let x_1132 : f32 = u_xlat46;
  let x_1134 : f32 = u_xlat2.x;
  u_xlat46 = (x_1132 * x_1134);
  let x_1136 : f32 = u_xlat47;
  let x_1137 : f32 = u_xlat46;
  u_xlat46 = (x_1136 * x_1137);
  let x_1139 : f32 = u_xlat46;
  u_xlat46 = (x_1139 * 3.141592741f);
  let x_1142 : f32 = u_xlat46;
  u_xlat46 = max(x_1142, 0.0f);
  let x_1145 : f32 = u_xlat3.x;
  let x_1147 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1145 * x_1147) + 1.0f);
  let x_1152 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1152);
  let x_1155 : vec3<f32> = u_xlat0;
  let x_1156 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1155, x_1156);
  let x_1158 : f32 = u_xlat47;
  u_xlatb47 = !((x_1158 == 0.0f));
  let x_1160 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1160);
  let x_1162 : f32 = u_xlat46;
  let x_1163 : f32 = u_xlat47;
  u_xlat46 = (x_1162 * x_1163);
  let x_1165 : f32 = u_xlat45;
  let x_1168 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1165) + x_1168);
  let x_1170 : f32 = u_xlat45;
  u_xlat45 = (x_1170 + 1.0f);
  let x_1172 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1172, 0.0f, 1.0f);
  let x_1174 : f32 = u_xlat32;
  let x_1176 : vec3<f32> = u_xlat7;
  let x_1177 : vec3<f32> = (vec3<f32>(x_1174, x_1174, x_1174) * x_1176);
  let x_1178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1177.x, x_1178.y, x_1177.y, x_1177.z);
  let x_1180 : vec4<f32> = u_xlat8;
  let x_1182 : vec4<f32> = u_xlat5;
  let x_1185 : vec4<f32> = u_xlat3;
  let x_1187 : vec3<f32> = ((vec3<f32>(x_1180.x, x_1180.y, x_1180.z) * vec3<f32>(x_1182.x, x_1182.x, x_1182.x)) + vec3<f32>(x_1185.x, x_1185.z, x_1185.w));
  let x_1188 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1187.x, x_1188.y, x_1187.y, x_1187.z);
  let x_1190 : vec3<f32> = u_xlat7;
  let x_1191 : f32 = u_xlat46;
  let x_1193 : vec3<f32> = (x_1190 * vec3<f32>(x_1191, x_1191, x_1191));
  let x_1194 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1197 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1197) + 1.0f);
  let x_1200 : f32 = u_xlat46;
  let x_1201 : f32 = u_xlat46;
  u_xlat17.x = (x_1200 * x_1201);
  let x_1205 : f32 = u_xlat17.x;
  let x_1207 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1205 * x_1207);
  let x_1210 : f32 = u_xlat46;
  let x_1212 : f32 = u_xlat17.x;
  u_xlat46 = (x_1210 * x_1212);
  let x_1214 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1214) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1218 : vec3<f32> = u_xlat17;
  let x_1219 : f32 = u_xlat46;
  let x_1222 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1218 * vec3<f32>(x_1219, x_1219, x_1219)) + x_1222);
  let x_1224 : vec3<f32> = u_xlat17;
  let x_1225 : vec4<f32> = u_xlat5;
  u_xlat17 = (x_1224 * vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : vec3<f32> = u_xlat1;
  let x_1229 : vec4<f32> = u_xlat3;
  let x_1232 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1228 * vec3<f32>(x_1229.x, x_1229.z, x_1229.w)) + x_1232);
  let x_1234 : vec4<f32> = u_xlat4;
  let x_1236 : vec4<f32> = u_xlat2;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * vec3<f32>(x_1236.x, x_1236.x, x_1236.x));
  let x_1239 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  let x_1241 : vec3<f32> = u_xlat0;
  let x_1243 : f32 = u_xlat45;
  let x_1245 : vec3<f32> = (-(x_1241) + vec3<f32>(x_1243, x_1243, x_1243));
  let x_1246 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1245.x, x_1246.y, x_1245.y, x_1245.z);
  let x_1248 : f32 = u_xlat18;
  let x_1250 : vec4<f32> = u_xlat3;
  let x_1253 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1248, x_1248, x_1248) * vec3<f32>(x_1250.x, x_1250.z, x_1250.w)) + x_1253);
  let x_1257 : vec4<f32> = u_xlat2;
  let x_1259 : vec3<f32> = u_xlat0;
  let x_1261 : vec3<f32> = u_xlat1;
  let x_1262 : vec3<f32> = ((vec3<f32>(x_1257.x, x_1257.y, x_1257.z) * x_1259) + x_1261);
  let x_1263 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

