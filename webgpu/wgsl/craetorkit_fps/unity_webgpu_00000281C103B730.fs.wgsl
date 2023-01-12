struct PGlobals {
  x_Time : vec4<f32>,
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
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_AmbientColor : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlat6 : vec4<f32>;
  var u_xlat47 : f32;
  var u_xlatb47 : bool;
  var u_xlatb48 : bool;
  var x_297 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var x_502 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_686 : f32;
  var x_698 : f32;
  var x_710 : f32;
  var u_xlatb49 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_863 : f32;
  var x_875 : f32;
  var x_887 : f32;
  var u_xlat17 : f32;
  var u_xlat16 : f32;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat45;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_71 : vec4<f32> = vs_TEXCOORD0;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_79 : vec4<f32> = x_37.x_Color;
  let x_81 : vec3<f32> = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec4<f32> = u_xlat3;
  let x_88 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_85.x, x_85.y, x_85.z) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_95 : f32 = x_37.x_Time.x;
  let x_98 : f32 = x_37.x_MovementSpeed;
  let x_101 : f32 = vs_TEXCOORD0.z;
  u_xlat5.x = ((x_95 * x_98) + x_101);
  let x_105 : f32 = x_37.x_Time.x;
  let x_108 : f32 = x_37.x_MovementSpeed;
  let x_111 : f32 = vs_TEXCOORD0.w;
  u_xlat5.y = ((-(x_105) * x_108) + x_111);
  let x_119 : vec4<f32> = u_xlat5;
  let x_121 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_119.x, x_119.y));
  let x_122 : vec3<f32> = vec3<f32>(x_121.x, x_121.y, x_121.w);
  let x_123 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_126 : f32 = u_xlat5.z;
  let x_128 : f32 = u_xlat5.x;
  u_xlat5.x = (x_126 * x_128);
  let x_131 : vec4<f32> = u_xlat5;
  let x_138 : vec2<f32> = ((vec2<f32>(x_131.x, x_131.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_139 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_141 : vec4<f32> = u_xlat5;
  let x_145 : f32 = x_37.x_NormalSacle;
  let x_147 : vec2<f32> = (vec2<f32>(x_141.x, x_141.y) * vec2<f32>(x_145, x_145));
  let x_148 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_147.x, x_147.y, x_148.z, x_148.w);
  let x_151 : vec4<f32> = u_xlat5;
  let x_153 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec2<f32>(x_151.x, x_151.y), vec2<f32>(x_153.x, x_153.y));
  let x_156 : f32 = u_xlat46;
  u_xlat46 = min(x_156, 1.0f);
  let x_159 : f32 = u_xlat46;
  u_xlat46 = (-(x_159) + 1.0f);
  let x_162 : f32 = u_xlat46;
  u_xlat5.z = sqrt(x_162);
  let x_166 : f32 = vs_COLOR0.w;
  u_xlat46 = (-(x_166) + 1.0f);
  let x_170 : f32 = u_xlat3.w;
  let x_172 : f32 = x_37.x_Color.w;
  let x_174 : f32 = u_xlat46;
  u_xlat46 = ((x_170 * x_172) + -(x_174));
  let x_180 : f32 = u_xlat46;
  u_xlatb46 = (x_180 < 0.0f);
  let x_183 : bool = u_xlatb46;
  if (((select(0i, 1i, x_183) * -1i) != 0i)) {
    discard;
  }
  let x_194 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_194;
  let x_197 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_197;
  let x_201 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_201;
  let x_203 : vec3<f32> = u_xlat1;
  let x_204 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(x_203, vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec3<f32> = u_xlat0;
  let x_210 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_213 : vec3<f32> = (x_207 + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : vec4<f32> = u_xlat6;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : f32 = u_xlat47;
  u_xlat47 = sqrt(x_222);
  let x_224 : f32 = u_xlat46;
  let x_226 : f32 = u_xlat47;
  u_xlat47 = (-(x_224) + x_226);
  let x_229 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_230 : f32 = u_xlat47;
  let x_232 : f32 = u_xlat46;
  u_xlat46 = ((x_229 * x_230) + x_232);
  let x_234 : f32 = u_xlat46;
  let x_237 : f32 = x_37.x_LightShadowData.z;
  let x_240 : f32 = x_37.x_LightShadowData.w;
  u_xlat46 = ((x_234 * x_237) + x_240);
  let x_242 : f32 = u_xlat46;
  u_xlat46 = clamp(x_242, 0.0f, 1.0f);
  let x_247 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb47 = (x_247 == 1.0f);
  let x_249 : bool = u_xlatb47;
  if (x_249) {
    let x_254 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_254 == 1.0f);
    let x_256 : vec4<f32> = vs_TEXCOORD2;
    let x_260 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_262 : vec3<f32> = (vec3<f32>(x_256.w, x_256.w, x_256.w) * vec3<f32>(x_260.x, x_260.y, x_260.z));
    let x_263 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_266 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_268 : vec4<f32> = vs_TEXCOORD1;
    let x_271 : vec4<f32> = u_xlat6;
    let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.w, x_268.w, x_268.w)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
    let x_274 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_277 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_279 : vec4<f32> = vs_TEXCOORD3;
    let x_282 : vec4<f32> = u_xlat6;
    let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279.w, x_279.w, x_279.w)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : vec4<f32> = u_xlat6;
    let x_291 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_293 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + vec3<f32>(x_291.x, x_291.y, x_291.z));
    let x_294 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_296 : bool = u_xlatb48;
    if (x_296) {
      let x_300 : vec4<f32> = u_xlat6;
      x_297 = vec3<f32>(x_300.x, x_300.y, x_300.z);
    } else {
      let x_303 : vec3<f32> = u_xlat0;
      x_297 = x_303;
    }
    let x_304 : vec3<f32> = x_297;
    let x_305 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat6;
    let x_311 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_313 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + -(x_311));
    let x_314 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat6;
    let x_320 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_321 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * x_320);
    let x_322 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_322.x, x_321.x, x_321.y, x_321.z);
    let x_326 : f32 = u_xlat6.y;
    u_xlat48 = ((x_326 * 0.25f) + 0.75f);
    let x_333 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat49 = ((x_333 * 0.5f) + 0.75f);
    let x_337 : f32 = u_xlat48;
    let x_338 : f32 = u_xlat49;
    u_xlat6.x = max(x_337, x_338);
    let x_349 : vec4<f32> = u_xlat6;
    let x_351 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_349.x, x_349.z, x_349.w));
    u_xlat6 = x_351;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat48 = dot(x_357, x_360);
  let x_362 : f32 = u_xlat48;
  u_xlat48 = clamp(x_362, 0.0f, 1.0f);
  let x_365 : vec4<f32> = vs_TEXCOORD7;
  let x_367 : vec4<f32> = vs_TEXCOORD7;
  let x_369 : vec2<f32> = (vec2<f32>(x_365.x, x_365.y) / vec2<f32>(x_367.w, x_367.w));
  let x_370 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
  let x_377 : vec4<f32> = u_xlat6;
  let x_379 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_377.x, x_377.y));
  u_xlat49 = x_379.x;
  let x_381 : f32 = u_xlat48;
  let x_382 : f32 = u_xlat49;
  u_xlat48 = (x_381 + -(x_382));
  let x_385 : f32 = u_xlat46;
  let x_386 : f32 = u_xlat48;
  let x_388 : f32 = u_xlat49;
  u_xlat46 = ((x_385 * x_386) + x_388);
  let x_390 : vec4<f32> = vs_TEXCOORD1;
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_390.x, x_390.y, x_390.z), vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_396 : vec4<f32> = vs_TEXCOORD2;
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_402 : vec4<f32> = vs_TEXCOORD3;
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_408 : vec4<f32> = u_xlat6;
  let x_410 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_413);
  let x_415 : f32 = u_xlat48;
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec3<f32> = (vec3<f32>(x_415, x_415, x_415) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_424 : f32 = x_37.x_Glossiness;
  u_xlat48 = (-(x_424) + 1.0f);
  let x_427 : vec4<f32> = u_xlat2;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(-(vec3<f32>(x_427.x, x_427.y, x_427.z)), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : f32 = u_xlat49;
  let x_434 : f32 = u_xlat49;
  u_xlat49 = (x_433 + x_434);
  let x_436 : vec4<f32> = u_xlat5;
  let x_438 : f32 = u_xlat49;
  let x_442 : vec4<f32> = u_xlat2;
  let x_445 : vec3<f32> = ((vec3<f32>(x_436.x, x_436.y, x_436.z) * -(vec3<f32>(x_438, x_438, x_438))) + -(vec3<f32>(x_442.x, x_442.y, x_442.z)));
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : f32 = u_xlat46;
  let x_453 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_449, x_449, x_449) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : bool = u_xlatb47;
  if (x_456) {
    let x_460 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_460 == 1.0f);
    let x_463 : vec4<f32> = vs_TEXCOORD2;
    let x_466 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_468 : vec3<f32> = (vec3<f32>(x_463.w, x_463.w, x_463.w) * vec3<f32>(x_466.x, x_466.y, x_466.z));
    let x_469 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
    let x_472 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_474 : vec4<f32> = vs_TEXCOORD1;
    let x_477 : vec4<f32> = u_xlat8;
    let x_479 : vec3<f32> = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_474.w, x_474.w, x_474.w)) + vec3<f32>(x_477.x, x_477.y, x_477.z));
    let x_480 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
    let x_483 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_485 : vec4<f32> = vs_TEXCOORD3;
    let x_488 : vec4<f32> = u_xlat8;
    let x_490 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_485.w, x_485.w, x_485.w)) + vec3<f32>(x_488.x, x_488.y, x_488.z));
    let x_491 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
    let x_493 : vec4<f32> = u_xlat8;
    let x_496 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_498 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) + vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_501 : bool = u_xlatb46;
    if (x_501) {
      let x_505 : vec4<f32> = u_xlat8;
      x_502 = vec3<f32>(x_505.x, x_505.y, x_505.z);
    } else {
      let x_508 : vec3<f32> = u_xlat0;
      x_502 = x_508;
    }
    let x_509 : vec3<f32> = x_502;
    let x_510 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_512 : vec4<f32> = u_xlat8;
    let x_515 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_517 : vec3<f32> = (vec3<f32>(x_512.x, x_512.y, x_512.z) + -(x_515));
    let x_518 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
    let x_520 : vec4<f32> = u_xlat8;
    let x_523 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_524 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) * x_523);
    let x_525 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_525.x, x_524.x, x_524.y, x_524.z);
    let x_528 : f32 = u_xlat8.y;
    u_xlat46 = (x_528 * 0.25f);
    let x_531 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat47 = (x_531 * 0.5f);
    let x_534 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat49 = ((-(x_534) * 0.5f) + 0.25f);
    let x_538 : f32 = u_xlat46;
    let x_539 : f32 = u_xlat47;
    u_xlat46 = max(x_538, x_539);
    let x_541 : f32 = u_xlat49;
    let x_542 : f32 = u_xlat46;
    u_xlat8.x = min(x_541, x_542);
    let x_549 : vec4<f32> = u_xlat8;
    let x_551 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_549.x, x_549.z, x_549.w));
    u_xlat9 = x_551;
    let x_553 : vec4<f32> = u_xlat8;
    let x_556 : vec3<f32> = (vec3<f32>(x_553.x, x_553.z, x_553.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_557 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
    let x_562 : vec4<f32> = u_xlat10;
    let x_564 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_562.x, x_562.y, x_562.z));
    u_xlat10 = x_564;
    let x_565 : vec4<f32> = u_xlat8;
    let x_568 : vec3<f32> = (vec3<f32>(x_565.x, x_565.z, x_565.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_569 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
    let x_574 : vec4<f32> = u_xlat8;
    let x_576 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_574.x, x_574.y, x_574.z));
    u_xlat8 = x_576;
    u_xlat5.w = 1.0f;
    let x_578 : vec4<f32> = u_xlat9;
    let x_579 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_578, x_579);
    let x_582 : vec4<f32> = u_xlat10;
    let x_583 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_582, x_583);
    let x_586 : vec4<f32> = u_xlat8;
    let x_587 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_586, x_587);
  } else {
    u_xlat5.w = 1.0f;
    let x_594 : vec4<f32> = x_37.unity_SHAr;
    let x_595 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_594, x_595);
    let x_600 : vec4<f32> = x_37.unity_SHAg;
    let x_601 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_600, x_601);
    let x_606 : vec4<f32> = x_37.unity_SHAb;
    let x_607 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_606, x_607);
  }
  let x_610 : vec4<f32> = u_xlat9;
  let x_614 : vec3<f32> = vs_TEXCOORD5;
  let x_615 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) + x_614);
  let x_616 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat8;
  let x_621 : vec3<f32> = max(vec3<f32>(x_618.x, x_618.y, x_618.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_622 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_626 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb46 = (0.0f < x_626);
  let x_628 : bool = u_xlatb46;
  if (x_628) {
    let x_631 : vec4<f32> = u_xlat6;
    let x_633 : vec4<f32> = u_xlat6;
    u_xlat46 = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_633.x, x_633.y, x_633.z));
    let x_636 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_636);
    let x_638 : f32 = u_xlat46;
    let x_640 : vec4<f32> = u_xlat6;
    let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.z));
    let x_643 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
    let x_645 : vec3<f32> = u_xlat0;
    let x_649 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_651 : vec3<f32> = (-(x_645) + vec3<f32>(x_649.x, x_649.y, x_649.z));
    let x_652 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
    let x_654 : vec4<f32> = u_xlat10;
    let x_656 : vec4<f32> = u_xlat9;
    let x_658 : vec3<f32> = (vec3<f32>(x_654.x, x_654.y, x_654.z) / vec3<f32>(x_656.x, x_656.y, x_656.z));
    let x_659 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
    let x_662 : vec3<f32> = u_xlat0;
    let x_666 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_662) + vec3<f32>(x_666.x, x_666.y, x_666.z));
    let x_669 : vec3<f32> = u_xlat11;
    let x_670 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_669 / vec3<f32>(x_670.x, x_670.y, x_670.z));
    let x_677 : vec4<f32> = u_xlat9;
    let x_680 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_677.x, x_677.y, x_677.z, x_677.x));
    u_xlatb12 = vec3<bool>(x_680.x, x_680.y, x_680.z);
    let x_683 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_683;
    let x_685 : bool = u_xlatb12.x;
    if (x_685) {
      let x_690 : f32 = u_xlat10.x;
      x_686 = x_690;
    } else {
      let x_693 : f32 = u_xlat11.x;
      x_686 = x_693;
    }
    let x_694 : f32 = x_686;
    hlslcc_movcTemp.x = x_694;
    let x_697 : bool = u_xlatb12.y;
    if (x_697) {
      let x_702 : f32 = u_xlat10.y;
      x_698 = x_702;
    } else {
      let x_705 : f32 = u_xlat11.y;
      x_698 = x_705;
    }
    let x_706 : f32 = x_698;
    hlslcc_movcTemp.y = x_706;
    let x_709 : bool = u_xlatb12.z;
    if (x_709) {
      let x_714 : f32 = u_xlat10.z;
      x_710 = x_714;
    } else {
      let x_717 : f32 = u_xlat11.z;
      x_710 = x_717;
    }
    let x_718 : f32 = x_710;
    hlslcc_movcTemp.z = x_718;
    let x_720 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_720;
    let x_722 : f32 = u_xlat10.y;
    let x_724 : f32 = u_xlat10.x;
    u_xlat46 = min(x_722, x_724);
    let x_727 : f32 = u_xlat10.z;
    let x_728 : f32 = u_xlat46;
    u_xlat46 = min(x_727, x_728);
    let x_730 : vec3<f32> = u_xlat0;
    let x_732 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_735 : vec3<f32> = (x_730 + -(vec3<f32>(x_732.x, x_732.y, x_732.z)));
    let x_736 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
    let x_738 : vec4<f32> = u_xlat9;
    let x_740 : f32 = u_xlat46;
    let x_743 : vec4<f32> = u_xlat10;
    let x_745 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_740, x_740, x_740)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
    let x_746 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  } else {
    let x_749 : vec4<f32> = u_xlat6;
    let x_750 : vec3<f32> = vec3<f32>(x_749.x, x_749.y, x_749.z);
    let x_751 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  }
  let x_753 : f32 = u_xlat48;
  u_xlat46 = ((-(x_753) * 0.699999988f) + 1.700000048f);
  let x_759 : f32 = u_xlat46;
  let x_760 : f32 = u_xlat48;
  u_xlat46 = (x_759 * x_760);
  let x_762 : f32 = u_xlat46;
  u_xlat46 = (x_762 * 6.0f);
  let x_773 : vec4<f32> = u_xlat9;
  let x_775 : f32 = u_xlat46;
  let x_776 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_773.x, x_773.y, x_773.z), x_775);
  u_xlat9 = x_776;
  let x_778 : f32 = u_xlat9.w;
  u_xlat47 = (x_778 + -1.0f);
  let x_782 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_783 : f32 = u_xlat47;
  u_xlat47 = ((x_782 * x_783) + 1.0f);
  let x_786 : f32 = u_xlat47;
  u_xlat47 = log2(x_786);
  let x_788 : f32 = u_xlat47;
  let x_790 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_788 * x_790);
  let x_792 : f32 = u_xlat47;
  u_xlat47 = exp2(x_792);
  let x_794 : f32 = u_xlat47;
  let x_796 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_794 * x_796);
  let x_798 : vec4<f32> = u_xlat9;
  let x_800 : f32 = u_xlat47;
  let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_800, x_800, x_800));
  let x_803 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_807 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_807 < 0.999989986f);
  let x_810 : bool = u_xlatb49;
  if (x_810) {
    let x_815 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_815);
    let x_817 : bool = u_xlatb49;
    if (x_817) {
      let x_820 : vec4<f32> = u_xlat6;
      let x_822 : vec4<f32> = u_xlat6;
      u_xlat49 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
      let x_825 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_825);
      let x_827 : f32 = u_xlat49;
      let x_829 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
      let x_833 : vec3<f32> = u_xlat0;
      let x_837 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_833) + vec3<f32>(x_837.x, x_837.y, x_837.z));
      let x_840 : vec3<f32> = u_xlat12;
      let x_841 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_840 / x_841);
      let x_844 : vec3<f32> = u_xlat0;
      let x_848 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_844) + vec3<f32>(x_848.x, x_848.y, x_848.z));
      let x_851 : vec3<f32> = u_xlat13;
      let x_852 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_851 / x_852);
      let x_855 : vec3<f32> = u_xlat11;
      let x_857 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_855.x, x_855.y, x_855.z, x_855.x));
      u_xlatb14 = vec3<bool>(x_857.x, x_857.y, x_857.z);
      let x_860 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_860;
      let x_862 : bool = u_xlatb14.x;
      if (x_862) {
        let x_867 : f32 = u_xlat12.x;
        x_863 = x_867;
      } else {
        let x_870 : f32 = u_xlat13.x;
        x_863 = x_870;
      }
      let x_871 : f32 = x_863;
      hlslcc_movcTemp_1.x = x_871;
      let x_874 : bool = u_xlatb14.y;
      if (x_874) {
        let x_879 : f32 = u_xlat12.y;
        x_875 = x_879;
      } else {
        let x_882 : f32 = u_xlat13.y;
        x_875 = x_882;
      }
      let x_883 : f32 = x_875;
      hlslcc_movcTemp_1.y = x_883;
      let x_886 : bool = u_xlatb14.z;
      if (x_886) {
        let x_891 : f32 = u_xlat12.z;
        x_887 = x_891;
      } else {
        let x_894 : f32 = u_xlat13.z;
        x_887 = x_894;
      }
      let x_895 : f32 = x_887;
      hlslcc_movcTemp_1.z = x_895;
      let x_897 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_897;
      let x_899 : f32 = u_xlat12.y;
      let x_901 : f32 = u_xlat12.x;
      u_xlat49 = min(x_899, x_901);
      let x_904 : f32 = u_xlat12.z;
      let x_905 : f32 = u_xlat49;
      u_xlat49 = min(x_904, x_905);
      let x_907 : vec3<f32> = u_xlat0;
      let x_909 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_907 + -(vec3<f32>(x_909.x, x_909.y, x_909.z)));
      let x_913 : vec3<f32> = u_xlat11;
      let x_914 : f32 = u_xlat49;
      let x_917 : vec3<f32> = u_xlat0;
      let x_918 : vec3<f32> = ((x_913 * vec3<f32>(x_914, x_914, x_914)) + x_917);
      let x_919 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
    }
    let x_925 : vec4<f32> = u_xlat6;
    let x_927 : f32 = u_xlat46;
    let x_928 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_925.x, x_925.y, x_925.z), x_927);
    u_xlat6 = x_928;
    let x_930 : f32 = u_xlat6.w;
    u_xlat0.x = (x_930 + -1.0f);
    let x_935 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_937 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_935 * x_937) + 1.0f);
    let x_942 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_942);
    let x_946 : f32 = u_xlat0.x;
    let x_948 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_946 * x_948);
    let x_952 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_952);
    let x_956 : f32 = u_xlat0.x;
    let x_958 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_956 * x_958);
    let x_961 : vec4<f32> = u_xlat6;
    let x_963 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_961.x, x_961.y, x_961.z) * vec3<f32>(x_963.x, x_963.x, x_963.x));
    let x_966 : f32 = u_xlat47;
    let x_968 : vec4<f32> = u_xlat9;
    let x_971 : vec3<f32> = u_xlat0;
    let x_973 : vec3<f32> = ((vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z)) + -(x_971));
    let x_974 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
    let x_977 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_979 : vec4<f32> = u_xlat6;
    let x_982 : vec3<f32> = u_xlat0;
    let x_983 : vec3<f32> = ((vec3<f32>(x_977.w, x_977.w, x_977.w) * vec3<f32>(x_979.x, x_979.y, x_979.z)) + x_982);
    let x_984 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  }
  let x_986 : vec4<f32> = u_xlat3;
  let x_988 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_986.x, x_986.y, x_986.z) * vec3<f32>(x_988.x, x_988.y, x_988.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_996 : f32 = x_37.x_Metallic;
  let x_998 : f32 = x_37.x_Metallic;
  let x_1000 : f32 = x_37.x_Metallic;
  let x_1001 : vec3<f32> = vec3<f32>(x_996, x_998, x_1000);
  let x_1006 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * x_1006) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1012 : f32 = x_37.x_Metallic;
  u_xlat46 = ((-(x_1012) * 0.959999979f) + 0.959999979f);
  let x_1017 : f32 = u_xlat46;
  let x_1019 : vec3<f32> = u_xlat4;
  let x_1020 : vec3<f32> = (vec3<f32>(x_1017, x_1017, x_1017) * x_1019);
  let x_1021 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec3<f32> = u_xlat1;
  let x_1024 : f32 = u_xlat45;
  let x_1028 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1023 * vec3<f32>(x_1024, x_1024, x_1024)) + vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
  let x_1031 : vec3<f32> = u_xlat1;
  let x_1032 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_1031, x_1032);
  let x_1034 : f32 = u_xlat45;
  u_xlat45 = max(x_1034, 0.001f);
  let x_1037 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_1037);
  let x_1039 : f32 = u_xlat45;
  let x_1041 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1039, x_1039, x_1039) * x_1041);
  let x_1043 : vec4<f32> = u_xlat5;
  let x_1045 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : vec4<f32> = u_xlat5;
  let x_1051 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1048.x, x_1048.y, x_1048.z), vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1056 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1056, 0.0f, 1.0f);
  let x_1060 : vec4<f32> = u_xlat5;
  let x_1062 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(vec3<f32>(x_1060.x, x_1060.y, x_1060.z), x_1062);
  let x_1064 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1064, 0.0f, 1.0f);
  let x_1067 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1069 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1067.x, x_1067.y, x_1067.z), x_1069);
  let x_1073 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1073, 0.0f, 1.0f);
  let x_1078 : f32 = u_xlat1.x;
  let x_1080 : f32 = u_xlat1.x;
  u_xlat16 = (x_1078 * x_1080);
  let x_1082 : f32 = u_xlat16;
  let x_1084 : f32 = u_xlat48;
  u_xlat16 = dot(vec2<f32>(x_1082, x_1082), vec2<f32>(x_1084, x_1084));
  let x_1087 : f32 = u_xlat16;
  u_xlat16 = (x_1087 + -0.5f);
  let x_1092 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_1092) + 1.0f);
  let x_1096 : f32 = u_xlat31;
  let x_1097 : f32 = u_xlat31;
  u_xlat32 = (x_1096 * x_1097);
  let x_1099 : f32 = u_xlat32;
  let x_1100 : f32 = u_xlat32;
  u_xlat32 = (x_1099 * x_1100);
  let x_1102 : f32 = u_xlat31;
  let x_1103 : f32 = u_xlat32;
  u_xlat31 = (x_1102 * x_1103);
  let x_1105 : f32 = u_xlat16;
  let x_1106 : f32 = u_xlat31;
  u_xlat31 = ((x_1105 * x_1106) + 1.0f);
  let x_1109 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_1109)) + 1.0f);
  let x_1113 : f32 = u_xlat32;
  let x_1114 : f32 = u_xlat32;
  u_xlat47 = (x_1113 * x_1114);
  let x_1116 : f32 = u_xlat47;
  let x_1117 : f32 = u_xlat47;
  u_xlat47 = (x_1116 * x_1117);
  let x_1119 : f32 = u_xlat32;
  let x_1120 : f32 = u_xlat47;
  u_xlat32 = (x_1119 * x_1120);
  let x_1122 : f32 = u_xlat16;
  let x_1123 : f32 = u_xlat32;
  u_xlat16 = ((x_1122 * x_1123) + 1.0f);
  let x_1126 : f32 = u_xlat16;
  let x_1127 : f32 = u_xlat31;
  u_xlat16 = (x_1126 * x_1127);
  let x_1130 : f32 = u_xlat2.x;
  let x_1131 : f32 = u_xlat16;
  u_xlat16 = (x_1130 * x_1131);
  let x_1133 : f32 = u_xlat48;
  let x_1134 : f32 = u_xlat48;
  u_xlat31 = (x_1133 * x_1134);
  let x_1136 : f32 = u_xlat31;
  u_xlat31 = max(x_1136, 0.002f);
  let x_1139 : f32 = u_xlat31;
  u_xlat47 = (-(x_1139) + 1.0f);
  let x_1142 : f32 = u_xlat45;
  let x_1144 : f32 = u_xlat47;
  let x_1146 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_1142) * x_1144) + x_1146);
  let x_1149 : f32 = u_xlat2.x;
  let x_1150 : f32 = u_xlat47;
  let x_1152 : f32 = u_xlat31;
  u_xlat47 = ((x_1149 * x_1150) + x_1152);
  let x_1154 : f32 = u_xlat45;
  let x_1156 : f32 = u_xlat47;
  u_xlat45 = (abs(x_1154) * x_1156);
  let x_1159 : f32 = u_xlat2.x;
  let x_1160 : f32 = u_xlat48;
  let x_1162 : f32 = u_xlat45;
  u_xlat45 = ((x_1159 * x_1160) + x_1162);
  let x_1164 : f32 = u_xlat45;
  u_xlat45 = (x_1164 + 0.00001f);
  let x_1167 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1167);
  let x_1169 : f32 = u_xlat31;
  let x_1170 : f32 = u_xlat31;
  u_xlat47 = (x_1169 * x_1170);
  let x_1172 : f32 = u_xlat17;
  let x_1173 : f32 = u_xlat47;
  let x_1175 : f32 = u_xlat17;
  u_xlat48 = ((x_1172 * x_1173) + -(x_1175));
  let x_1178 : f32 = u_xlat48;
  let x_1179 : f32 = u_xlat17;
  u_xlat17 = ((x_1178 * x_1179) + 1.0f);
  let x_1182 : f32 = u_xlat47;
  u_xlat47 = (x_1182 * 0.318309873f);
  let x_1185 : f32 = u_xlat17;
  let x_1186 : f32 = u_xlat17;
  u_xlat17 = ((x_1185 * x_1186) + 0.0000001f);
  let x_1190 : f32 = u_xlat47;
  let x_1191 : f32 = u_xlat17;
  u_xlat17 = (x_1190 / x_1191);
  let x_1193 : f32 = u_xlat45;
  let x_1194 : f32 = u_xlat17;
  u_xlat45 = (x_1193 * x_1194);
  let x_1197 : f32 = u_xlat2.x;
  let x_1198 : f32 = u_xlat45;
  u_xlat45 = (x_1197 * x_1198);
  let x_1200 : f32 = u_xlat45;
  u_xlat45 = (x_1200 * 3.141592741f);
  let x_1203 : f32 = u_xlat45;
  u_xlat45 = max(x_1203, 0.0f);
  let x_1205 : f32 = u_xlat31;
  let x_1206 : f32 = u_xlat31;
  u_xlat31 = ((x_1205 * x_1206) + 1.0f);
  let x_1209 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_1209);
  let x_1211 : vec3<f32> = u_xlat0;
  let x_1212 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1211, x_1212);
  let x_1217 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1217 == 0.0f));
  let x_1219 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1219);
  let x_1222 : f32 = u_xlat45;
  let x_1224 : f32 = u_xlat2.x;
  u_xlat45 = (x_1222 * x_1224);
  let x_1226 : f32 = u_xlat46;
  let x_1229 : f32 = x_37.x_Glossiness;
  u_xlat46 = (-(x_1226) + x_1229);
  let x_1231 : f32 = u_xlat46;
  u_xlat46 = (x_1231 + 1.0f);
  let x_1233 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1233, 0.0f, 1.0f);
  let x_1235 : vec3<f32> = u_xlat7;
  let x_1236 : f32 = u_xlat16;
  let x_1239 : vec4<f32> = u_xlat8;
  let x_1241 : vec3<f32> = ((x_1235 * vec3<f32>(x_1236, x_1236, x_1236)) + vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1241.z);
  let x_1244 : vec3<f32> = u_xlat7;
  let x_1245 : f32 = u_xlat45;
  u_xlat4 = (x_1244 * vec3<f32>(x_1245, x_1245, x_1245));
  let x_1249 : f32 = u_xlat1.x;
  u_xlat45 = (-(x_1249) + 1.0f);
  let x_1252 : f32 = u_xlat45;
  let x_1253 : f32 = u_xlat45;
  u_xlat1.x = (x_1252 * x_1253);
  let x_1257 : f32 = u_xlat1.x;
  let x_1259 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1257 * x_1259);
  let x_1262 : f32 = u_xlat45;
  let x_1264 : f32 = u_xlat1.x;
  u_xlat45 = (x_1262 * x_1264);
  let x_1266 : vec3<f32> = u_xlat0;
  let x_1269 : vec3<f32> = (-(x_1266) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1270 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
  let x_1272 : vec4<f32> = u_xlat5;
  let x_1274 : f32 = u_xlat45;
  let x_1277 : vec3<f32> = u_xlat0;
  let x_1278 : vec3<f32> = ((vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * vec3<f32>(x_1274, x_1274, x_1274)) + x_1277);
  let x_1279 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : vec3<f32> = u_xlat4;
  let x_1282 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1281 * vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1285 : vec4<f32> = u_xlat3;
  let x_1287 : vec4<f32> = u_xlat2;
  let x_1290 : vec3<f32> = u_xlat4;
  let x_1291 : vec3<f32> = ((vec3<f32>(x_1285.x, x_1285.y, x_1285.z) * vec3<f32>(x_1287.x, x_1287.y, x_1287.w)) + x_1290);
  let x_1292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1291.z);
  let x_1294 : vec4<f32> = u_xlat10;
  let x_1296 : f32 = u_xlat31;
  u_xlat1 = (vec3<f32>(x_1294.x, x_1294.y, x_1294.z) * vec3<f32>(x_1296, x_1296, x_1296));
  let x_1299 : vec3<f32> = u_xlat0;
  let x_1301 : f32 = u_xlat46;
  let x_1303 : vec3<f32> = (-(x_1299) + vec3<f32>(x_1301, x_1301, x_1301));
  let x_1304 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1306 : f32 = u_xlat32;
  let x_1308 : vec4<f32> = u_xlat3;
  let x_1311 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1306, x_1306, x_1306) * vec3<f32>(x_1308.x, x_1308.y, x_1308.z)) + x_1311);
  let x_1313 : vec3<f32> = u_xlat1;
  let x_1314 : vec3<f32> = u_xlat0;
  let x_1316 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1313 * x_1314) + vec3<f32>(x_1316.x, x_1316.y, x_1316.w));
  let x_1319 : vec3<f32> = u_xlat0;
  let x_1322 : vec4<f32> = x_37.x_AmbientColor;
  u_xlat0 = (x_1319 + vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1326 : f32 = vs_TEXCOORD6;
  let x_1328 : f32 = x_37.x_ProjectionParams.y;
  u_xlat45 = (x_1326 / x_1328);
  let x_1330 : f32 = u_xlat45;
  u_xlat45 = (-(x_1330) + 1.0f);
  let x_1333 : f32 = u_xlat45;
  let x_1335 : f32 = x_37.x_ProjectionParams.z;
  u_xlat45 = (x_1333 * x_1335);
  let x_1337 : f32 = u_xlat45;
  u_xlat45 = max(x_1337, 0.0f);
  let x_1339 : f32 = u_xlat45;
  let x_1342 : f32 = x_37.unity_FogParams.x;
  u_xlat45 = (x_1339 * x_1342);
  let x_1344 : f32 = u_xlat45;
  let x_1345 : f32 = u_xlat45;
  u_xlat45 = (x_1344 * -(x_1345));
  let x_1348 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1348);
  let x_1350 : vec3<f32> = u_xlat0;
  let x_1353 : vec4<f32> = x_37.unity_FogColor;
  u_xlat0 = (x_1350 + -(vec3<f32>(x_1353.x, x_1353.y, x_1353.z)));
  let x_1359 : f32 = u_xlat45;
  let x_1361 : vec3<f32> = u_xlat0;
  let x_1364 : vec4<f32> = x_37.unity_FogColor;
  let x_1366 : vec3<f32> = ((vec3<f32>(x_1359, x_1359, x_1359) * x_1361) + vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
  let x_1367 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(7) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

