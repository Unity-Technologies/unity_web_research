struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  var x_638 : f32;
  var x_650 : f32;
  var x_662 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_816 : f32;
  var x_828 : f32;
  var x_840 : f32;
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
    let x_551 : vec4<f32> = x_33.unity_SHAg;
    let x_552 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_551, x_552);
    let x_557 : vec4<f32> = x_33.unity_SHAb;
    let x_558 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_557, x_558);
  }
  let x_561 : vec4<f32> = u_xlat9;
  let x_564 : vec4<f32> = vs_TEXCOORD5;
  let x_566 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) + vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_569 : vec4<f32> = u_xlat8;
  let x_572 : vec3<f32> = max(vec3<f32>(x_569.x, x_569.y, x_569.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_573 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_578 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_578);
  let x_580 : bool = u_xlatb47;
  if (x_580) {
    let x_584 : vec3<f32> = u_xlat6;
    let x_585 : vec3<f32> = u_xlat6;
    u_xlat47 = dot(x_584, x_585);
    let x_587 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_587);
    let x_589 : f32 = u_xlat47;
    let x_591 : vec3<f32> = u_xlat6;
    let x_592 : vec3<f32> = (vec3<f32>(x_589, x_589, x_589) * x_591);
    let x_593 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
    let x_595 : vec4<f32> = u_xlat4;
    let x_600 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_602 : vec3<f32> = (-(vec3<f32>(x_595.x, x_595.y, x_595.z)) + vec3<f32>(x_600.x, x_600.y, x_600.z));
    let x_603 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
    let x_605 : vec4<f32> = u_xlat10;
    let x_607 : vec4<f32> = u_xlat9;
    let x_609 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) / vec3<f32>(x_607.x, x_607.y, x_607.z));
    let x_610 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
    let x_613 : vec4<f32> = u_xlat4;
    let x_618 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_613.x, x_613.y, x_613.z)) + vec3<f32>(x_618.x, x_618.y, x_618.z));
    let x_621 : vec3<f32> = u_xlat11;
    let x_622 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_621 / vec3<f32>(x_622.x, x_622.y, x_622.z));
    let x_629 : vec4<f32> = u_xlat9;
    let x_632 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_629.x, x_629.y, x_629.z, x_629.x));
    u_xlatb12 = vec3<bool>(x_632.x, x_632.y, x_632.z);
    let x_635 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_635;
    let x_637 : bool = u_xlatb12.x;
    if (x_637) {
      let x_642 : f32 = u_xlat10.x;
      x_638 = x_642;
    } else {
      let x_645 : f32 = u_xlat11.x;
      x_638 = x_645;
    }
    let x_646 : f32 = x_638;
    hlslcc_movcTemp.x = x_646;
    let x_649 : bool = u_xlatb12.y;
    if (x_649) {
      let x_654 : f32 = u_xlat10.y;
      x_650 = x_654;
    } else {
      let x_657 : f32 = u_xlat11.y;
      x_650 = x_657;
    }
    let x_658 : f32 = x_650;
    hlslcc_movcTemp.y = x_658;
    let x_661 : bool = u_xlatb12.z;
    if (x_661) {
      let x_666 : f32 = u_xlat10.z;
      x_662 = x_666;
    } else {
      let x_669 : f32 = u_xlat11.z;
      x_662 = x_669;
    }
    let x_670 : f32 = x_662;
    hlslcc_movcTemp.z = x_670;
    let x_672 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_672;
    let x_674 : f32 = u_xlat10.y;
    let x_676 : f32 = u_xlat10.x;
    u_xlat47 = min(x_674, x_676);
    let x_679 : f32 = u_xlat10.z;
    let x_680 : f32 = u_xlat47;
    u_xlat47 = min(x_679, x_680);
    let x_682 : vec4<f32> = u_xlat4;
    let x_685 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_688 : vec3<f32> = (vec3<f32>(x_682.x, x_682.y, x_682.z) + -(vec3<f32>(x_685.x, x_685.y, x_685.z)));
    let x_689 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
    let x_691 : vec4<f32> = u_xlat9;
    let x_693 : f32 = u_xlat47;
    let x_696 : vec4<f32> = u_xlat10;
    let x_698 : vec3<f32> = ((vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(x_693, x_693, x_693)) + vec3<f32>(x_696.x, x_696.y, x_696.z));
    let x_699 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  } else {
    let x_702 : vec3<f32> = u_xlat6;
    let x_703 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  }
  let x_706 : f32 = u_xlat20.x;
  u_xlat47 = ((-(x_706) * 0.699999988f) + 1.700000048f);
  let x_712 : f32 = u_xlat47;
  let x_714 : f32 = u_xlat20.x;
  u_xlat47 = (x_712 * x_714);
  let x_716 : f32 = u_xlat47;
  u_xlat47 = (x_716 * 6.0f);
  let x_727 : vec4<f32> = u_xlat9;
  let x_729 : f32 = u_xlat47;
  let x_730 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_727.x, x_727.y, x_727.z), x_729);
  u_xlat9 = x_730;
  let x_732 : f32 = u_xlat9.w;
  u_xlat48 = (x_732 + -1.0f);
  let x_737 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_738 : f32 = u_xlat48;
  u_xlat48 = ((x_737 * x_738) + 1.0f);
  let x_741 : f32 = u_xlat48;
  u_xlat48 = log2(x_741);
  let x_743 : f32 = u_xlat48;
  let x_745 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_743 * x_745);
  let x_747 : f32 = u_xlat48;
  u_xlat48 = exp2(x_747);
  let x_749 : f32 = u_xlat48;
  let x_751 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_749 * x_751);
  let x_753 : vec4<f32> = u_xlat9;
  let x_755 : f32 = u_xlat48;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755, x_755, x_755));
  let x_758 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_761 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_761 < 0.999989986f);
  let x_764 : bool = u_xlatb49;
  if (x_764) {
    let x_769 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_769);
    let x_771 : bool = u_xlatb49;
    if (x_771) {
      let x_774 : vec3<f32> = u_xlat6;
      let x_775 : vec3<f32> = u_xlat6;
      u_xlat49 = dot(x_774, x_775);
      let x_777 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_777);
      let x_779 : f32 = u_xlat49;
      let x_781 : vec3<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_779, x_779, x_779) * x_781);
      let x_784 : vec4<f32> = u_xlat4;
      let x_789 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_784.x, x_784.y, x_784.z)) + vec3<f32>(x_789.x, x_789.y, x_789.z));
      let x_792 : vec3<f32> = u_xlat12;
      let x_793 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_792 / x_793);
      let x_796 : vec4<f32> = u_xlat4;
      let x_801 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_796.x, x_796.y, x_796.z)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
      let x_804 : vec3<f32> = u_xlat13;
      let x_805 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_804 / x_805);
      let x_808 : vec3<f32> = u_xlat11;
      let x_810 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_808.x, x_808.y, x_808.z, x_808.x));
      u_xlatb14 = vec3<bool>(x_810.x, x_810.y, x_810.z);
      let x_813 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_813;
      let x_815 : bool = u_xlatb14.x;
      if (x_815) {
        let x_820 : f32 = u_xlat12.x;
        x_816 = x_820;
      } else {
        let x_823 : f32 = u_xlat13.x;
        x_816 = x_823;
      }
      let x_824 : f32 = x_816;
      hlslcc_movcTemp_1.x = x_824;
      let x_827 : bool = u_xlatb14.y;
      if (x_827) {
        let x_832 : f32 = u_xlat12.y;
        x_828 = x_832;
      } else {
        let x_835 : f32 = u_xlat13.y;
        x_828 = x_835;
      }
      let x_836 : f32 = x_828;
      hlslcc_movcTemp_1.y = x_836;
      let x_839 : bool = u_xlatb14.z;
      if (x_839) {
        let x_844 : f32 = u_xlat12.z;
        x_840 = x_844;
      } else {
        let x_847 : f32 = u_xlat13.z;
        x_840 = x_847;
      }
      let x_848 : f32 = x_840;
      hlslcc_movcTemp_1.z = x_848;
      let x_850 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_850;
      let x_852 : f32 = u_xlat12.y;
      let x_854 : f32 = u_xlat12.x;
      u_xlat49 = min(x_852, x_854);
      let x_857 : f32 = u_xlat12.z;
      let x_858 : f32 = u_xlat49;
      u_xlat49 = min(x_857, x_858);
      let x_860 : vec4<f32> = u_xlat4;
      let x_863 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      let x_866 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
      let x_867 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
      let x_869 : vec3<f32> = u_xlat11;
      let x_870 : f32 = u_xlat49;
      let x_873 : vec4<f32> = u_xlat4;
      u_xlat6 = ((x_869 * vec3<f32>(x_870, x_870, x_870)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
    }
    let x_880 : vec3<f32> = u_xlat6;
    let x_881 : f32 = u_xlat47;
    let x_882 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_880, x_881);
    u_xlat4 = x_882;
    let x_884 : f32 = u_xlat4.w;
    u_xlat47 = (x_884 + -1.0f);
    let x_888 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_889 : f32 = u_xlat47;
    u_xlat47 = ((x_888 * x_889) + 1.0f);
    let x_892 : f32 = u_xlat47;
    u_xlat47 = log2(x_892);
    let x_894 : f32 = u_xlat47;
    let x_896 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_894 * x_896);
    let x_898 : f32 = u_xlat47;
    u_xlat47 = exp2(x_898);
    let x_900 : f32 = u_xlat47;
    let x_902 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_900 * x_902);
    let x_904 : vec4<f32> = u_xlat4;
    let x_906 : f32 = u_xlat47;
    let x_908 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(x_906, x_906, x_906));
    let x_909 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
    let x_911 : f32 = u_xlat48;
    let x_913 : vec4<f32> = u_xlat9;
    let x_916 : vec4<f32> = u_xlat4;
    u_xlat6 = ((vec3<f32>(x_911, x_911, x_911) * vec3<f32>(x_913.x, x_913.y, x_913.z)) + -(vec3<f32>(x_916.x, x_916.y, x_916.z)));
    let x_921 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_923 : vec3<f32> = u_xlat6;
    let x_925 : vec4<f32> = u_xlat4;
    let x_927 : vec3<f32> = ((vec3<f32>(x_921.w, x_921.w, x_921.w) * x_923) + vec3<f32>(x_925.x, x_925.y, x_925.z));
    let x_928 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  }
  let x_930 : vec4<f32> = u_xlat5;
  let x_932 : vec4<f32> = u_xlat10;
  let x_934 : vec3<f32> = (vec3<f32>(x_930.x, x_930.x, x_930.x) * vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = vs_TEXCOORD1;
  let x_940 : f32 = u_xlat46;
  let x_944 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6 = ((-(vec3<f32>(x_937.x, x_937.y, x_937.z)) * vec3<f32>(x_940, x_940, x_940)) + vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec3<f32> = u_xlat6;
  let x_948 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(x_947, x_948);
  let x_950 : f32 = u_xlat46;
  u_xlat46 = max(x_950, 0.001f);
  let x_953 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_953);
  let x_955 : f32 = u_xlat46;
  let x_957 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_955, x_955, x_955) * x_957);
  let x_959 : vec4<f32> = u_xlat2;
  let x_961 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), -(vec3<f32>(x_961.x, x_961.y, x_961.z)));
  let x_965 : vec4<f32> = u_xlat2;
  let x_968 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : f32 = u_xlat47;
  u_xlat47 = clamp(x_971, 0.0f, 1.0f);
  let x_973 : vec4<f32> = u_xlat2;
  let x_975 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_973.x, x_973.y, x_973.z), x_975);
  let x_979 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_979, 0.0f, 1.0f);
  let x_984 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_986 : vec3<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), x_986);
  let x_990 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_990, 0.0f, 1.0f);
  let x_995 : f32 = u_xlat17.x;
  let x_997 : f32 = u_xlat17.x;
  u_xlat32 = (x_995 * x_997);
  let x_999 : f32 = u_xlat32;
  let x_1001 : vec3<f32> = u_xlat20;
  u_xlat32 = dot(vec2<f32>(x_999, x_999), vec2<f32>(x_1001.x, x_1001.x));
  let x_1004 : f32 = u_xlat32;
  u_xlat32 = (x_1004 + -0.5f);
  let x_1007 : f32 = u_xlat47;
  u_xlat3.x = (-(x_1007) + 1.0f);
  let x_1013 : f32 = u_xlat3.x;
  let x_1015 : f32 = u_xlat3.x;
  u_xlat18 = (x_1013 * x_1015);
  let x_1017 : f32 = u_xlat18;
  let x_1018 : f32 = u_xlat18;
  u_xlat18 = (x_1017 * x_1018);
  let x_1021 : f32 = u_xlat3.x;
  let x_1022 : f32 = u_xlat18;
  u_xlat3.x = (x_1021 * x_1022);
  let x_1025 : f32 = u_xlat32;
  let x_1027 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1025 * x_1027) + 1.0f);
  let x_1031 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_1031)) + 1.0f);
  let x_1036 : f32 = u_xlat18;
  let x_1037 : f32 = u_xlat18;
  u_xlat33 = (x_1036 * x_1037);
  let x_1039 : f32 = u_xlat33;
  let x_1040 : f32 = u_xlat33;
  u_xlat33 = (x_1039 * x_1040);
  let x_1042 : f32 = u_xlat18;
  let x_1043 : f32 = u_xlat33;
  u_xlat18 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat32;
  let x_1046 : f32 = u_xlat18;
  u_xlat32 = ((x_1045 * x_1046) + 1.0f);
  let x_1049 : f32 = u_xlat32;
  let x_1051 : f32 = u_xlat3.x;
  u_xlat32 = (x_1049 * x_1051);
  let x_1053 : f32 = u_xlat47;
  let x_1054 : f32 = u_xlat32;
  u_xlat32 = (x_1053 * x_1054);
  let x_1057 : f32 = u_xlat20.x;
  let x_1059 : f32 = u_xlat20.x;
  u_xlat3.x = (x_1057 * x_1059);
  let x_1063 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1063, 0.002f);
  let x_1068 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1068) + 1.0f);
  let x_1071 : f32 = u_xlat46;
  let x_1073 : f32 = u_xlat33;
  let x_1076 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1071) * x_1073) + x_1076);
  let x_1078 : f32 = u_xlat47;
  let x_1079 : f32 = u_xlat33;
  let x_1082 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1078 * x_1079) + x_1082);
  let x_1084 : f32 = u_xlat46;
  let x_1086 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1084) * x_1086);
  let x_1088 : f32 = u_xlat47;
  let x_1089 : f32 = u_xlat48;
  let x_1091 : f32 = u_xlat46;
  u_xlat46 = ((x_1088 * x_1089) + x_1091);
  let x_1093 : f32 = u_xlat46;
  u_xlat46 = (x_1093 + 0.00001f);
  let x_1096 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1096);
  let x_1099 : f32 = u_xlat3.x;
  let x_1101 : f32 = u_xlat3.x;
  u_xlat33 = (x_1099 * x_1101);
  let x_1104 : f32 = u_xlat2.x;
  let x_1105 : f32 = u_xlat33;
  let x_1108 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1104 * x_1105) + -(x_1108));
  let x_1111 : f32 = u_xlat48;
  let x_1113 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1111 * x_1113) + 1.0f);
  let x_1117 : f32 = u_xlat33;
  u_xlat33 = (x_1117 * 0.318309873f);
  let x_1121 : f32 = u_xlat2.x;
  let x_1123 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1121 * x_1123) + 0.0000001f);
  let x_1128 : f32 = u_xlat33;
  let x_1130 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1128 / x_1130);
  let x_1133 : f32 = u_xlat46;
  let x_1135 : f32 = u_xlat2.x;
  u_xlat46 = (x_1133 * x_1135);
  let x_1137 : f32 = u_xlat47;
  let x_1138 : f32 = u_xlat46;
  u_xlat46 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat46;
  u_xlat46 = (x_1140 * 3.141592741f);
  let x_1143 : f32 = u_xlat46;
  u_xlat46 = max(x_1143, 0.0f);
  let x_1146 : f32 = u_xlat3.x;
  let x_1148 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1146 * x_1148) + 1.0f);
  let x_1153 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1153);
  let x_1156 : vec3<f32> = u_xlat0;
  let x_1157 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1156, x_1157);
  let x_1159 : f32 = u_xlat47;
  u_xlatb47 = !((x_1159 == 0.0f));
  let x_1161 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1161);
  let x_1163 : f32 = u_xlat46;
  let x_1164 : f32 = u_xlat47;
  u_xlat46 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat45;
  let x_1169 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1166) + x_1169);
  let x_1171 : f32 = u_xlat45;
  u_xlat45 = (x_1171 + 1.0f);
  let x_1173 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1173, 0.0f, 1.0f);
  let x_1175 : f32 = u_xlat32;
  let x_1177 : vec3<f32> = u_xlat7;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1175, x_1175, x_1175) * x_1177);
  let x_1179 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1178.z);
  let x_1181 : vec4<f32> = u_xlat8;
  let x_1183 : vec4<f32> = u_xlat5;
  let x_1186 : vec4<f32> = u_xlat3;
  let x_1188 : vec3<f32> = ((vec3<f32>(x_1181.x, x_1181.y, x_1181.z) * vec3<f32>(x_1183.x, x_1183.x, x_1183.x)) + vec3<f32>(x_1186.x, x_1186.z, x_1186.w));
  let x_1189 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1188.x, x_1189.y, x_1188.y, x_1188.z);
  let x_1191 : vec3<f32> = u_xlat7;
  let x_1192 : f32 = u_xlat46;
  let x_1194 : vec3<f32> = (x_1191 * vec3<f32>(x_1192, x_1192, x_1192));
  let x_1195 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1198 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1198) + 1.0f);
  let x_1201 : f32 = u_xlat46;
  let x_1202 : f32 = u_xlat46;
  u_xlat17.x = (x_1201 * x_1202);
  let x_1206 : f32 = u_xlat17.x;
  let x_1208 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1206 * x_1208);
  let x_1211 : f32 = u_xlat46;
  let x_1213 : f32 = u_xlat17.x;
  u_xlat46 = (x_1211 * x_1213);
  let x_1215 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1215) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1219 : vec3<f32> = u_xlat17;
  let x_1220 : f32 = u_xlat46;
  let x_1223 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1219 * vec3<f32>(x_1220, x_1220, x_1220)) + x_1223);
  let x_1225 : vec3<f32> = u_xlat17;
  let x_1226 : vec4<f32> = u_xlat5;
  u_xlat17 = (x_1225 * vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1229 : vec3<f32> = u_xlat1;
  let x_1230 : vec4<f32> = u_xlat3;
  let x_1233 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1229 * vec3<f32>(x_1230.x, x_1230.z, x_1230.w)) + x_1233);
  let x_1235 : vec4<f32> = u_xlat4;
  let x_1237 : vec4<f32> = u_xlat2;
  let x_1239 : vec3<f32> = (vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(x_1237.x, x_1237.x, x_1237.x));
  let x_1240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec3<f32> = u_xlat0;
  let x_1244 : f32 = u_xlat45;
  let x_1246 : vec3<f32> = (-(x_1242) + vec3<f32>(x_1244, x_1244, x_1244));
  let x_1247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1246.x, x_1247.y, x_1246.y, x_1246.z);
  let x_1249 : f32 = u_xlat18;
  let x_1251 : vec4<f32> = u_xlat3;
  let x_1254 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1249, x_1249, x_1249) * vec3<f32>(x_1251.x, x_1251.z, x_1251.w)) + x_1254);
  let x_1256 : vec4<f32> = u_xlat2;
  let x_1258 : vec3<f32> = u_xlat0;
  let x_1260 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1256.x, x_1256.y, x_1256.z) * x_1258) + x_1260);
  let x_1263 : f32 = vs_TEXCOORD1.w;
  let x_1265 : f32 = x_33.x_ProjectionParams.y;
  u_xlat45 = (x_1263 / x_1265);
  let x_1267 : f32 = u_xlat45;
  u_xlat45 = (-(x_1267) + 1.0f);
  let x_1270 : f32 = u_xlat45;
  let x_1272 : f32 = x_33.x_ProjectionParams.z;
  u_xlat45 = (x_1270 * x_1272);
  let x_1274 : f32 = u_xlat45;
  u_xlat45 = max(x_1274, 0.0f);
  let x_1276 : f32 = u_xlat45;
  let x_1279 : f32 = x_33.unity_FogParams.x;
  u_xlat45 = (x_1276 * x_1279);
  let x_1281 : f32 = u_xlat45;
  let x_1282 : f32 = u_xlat45;
  u_xlat45 = (x_1281 * -(x_1282));
  let x_1285 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1285);
  let x_1287 : vec3<f32> = u_xlat0;
  let x_1290 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_1287 + -(vec3<f32>(x_1290.x, x_1290.y, x_1290.z)));
  let x_1296 : f32 = u_xlat45;
  let x_1298 : vec3<f32> = u_xlat0;
  let x_1301 : vec4<f32> = x_33.unity_FogColor;
  let x_1303 : vec3<f32> = ((vec3<f32>(x_1296, x_1296, x_1296) * x_1298) + vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1304 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
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

