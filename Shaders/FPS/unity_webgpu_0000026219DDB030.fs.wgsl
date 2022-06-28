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
  x_BumpScale : f32,
  @size(12)
  padding_3 : u32,
  x_EmissionColor : vec3<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_Cutoff : f32,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat48 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_EmissionMap : sampler;

var<private> u_xlatb49 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb51 : bool;

var<private> u_xlat51 : f32;

var<private> u_xlat52 : f32;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_297 : vec3<f32>;
  var x_502 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_686 : f32;
  var x_698 : f32;
  var x_710 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_863 : f32;
  var x_875 : f32;
  var x_887 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD0.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD1.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD2.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat48;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_72 : vec2<f32> = vs_TEXCOORD3;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_72);
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_78 : vec4<f32> = x_37.x_Color;
  u_xlat3 = (x_74 * x_78);
  let x_81 : vec4<f32> = u_xlat3;
  let x_84 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_93 : vec2<f32> = vs_TEXCOORD3;
  let x_94 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_93);
  let x_95 : vec3<f32> = vec3<f32>(x_94.x, x_94.y, x_94.w);
  let x_96 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : f32 = u_xlat5.z;
  let x_101 : f32 = u_xlat5.x;
  u_xlat5.x = (x_99 * x_101);
  let x_104 : vec4<f32> = u_xlat5;
  let x_111 : vec2<f32> = ((vec2<f32>(x_104.x, x_104.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_112 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat5;
  let x_119 : f32 = x_37.x_BumpScale;
  let x_121 : vec2<f32> = (vec2<f32>(x_114.x, x_114.y) * vec2<f32>(x_119, x_119));
  let x_122 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_125 : vec4<f32> = u_xlat5;
  let x_127 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec2<f32>(x_125.x, x_125.y), vec2<f32>(x_127.x, x_127.y));
  let x_130 : f32 = u_xlat49;
  u_xlat49 = min(x_130, 1.0f);
  let x_133 : f32 = u_xlat49;
  u_xlat49 = (-(x_133) + 1.0f);
  let x_136 : f32 = u_xlat49;
  u_xlat5.z = sqrt(x_136);
  let x_139 : vec4<f32> = u_xlat5;
  let x_141 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : f32 = u_xlat49;
  u_xlat49 = inverseSqrt(x_144);
  let x_146 : f32 = u_xlat49;
  let x_148 : vec4<f32> = u_xlat5;
  let x_150 : vec3<f32> = (vec3<f32>(x_146, x_146, x_146) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_159 : vec2<f32> = vs_TEXCOORD3;
  let x_160 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_159);
  u_xlat6 = vec3<f32>(x_160.x, x_160.y, x_160.z);
  let x_163 : f32 = u_xlat3.w;
  let x_165 : f32 = vs_COLOR0.w;
  let x_169 : f32 = x_37.x_Cutoff;
  u_xlat49 = ((x_163 * x_165) + -(x_169));
  let x_172 : f32 = u_xlat49;
  u_xlat49 = (x_172 + 0.0001f);
  let x_178 : f32 = u_xlat49;
  u_xlatb49 = (x_178 < 0.0f);
  let x_181 : bool = u_xlatb49;
  if (((select(0i, 1i, x_181) * -1i) != 0i)) {
    discard;
  }
  let x_193 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat7.x = x_193;
  let x_196 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat7.y = x_196;
  let x_200 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat7.z = x_200;
  let x_202 : vec3<f32> = u_xlat1;
  let x_203 : vec4<f32> = u_xlat7;
  u_xlat49 = dot(x_202, vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec3<f32> = u_xlat0;
  let x_209 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_212 : vec3<f32> = (x_206 + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec4<f32> = u_xlat7;
  let x_218 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : f32 = u_xlat50;
  u_xlat50 = sqrt(x_221);
  let x_223 : f32 = u_xlat49;
  let x_225 : f32 = u_xlat50;
  u_xlat50 = (-(x_223) + x_225);
  let x_228 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_229 : f32 = u_xlat50;
  let x_231 : f32 = u_xlat49;
  u_xlat49 = ((x_228 * x_229) + x_231);
  let x_233 : f32 = u_xlat49;
  let x_236 : f32 = x_37.x_LightShadowData.z;
  let x_239 : f32 = x_37.x_LightShadowData.w;
  u_xlat49 = ((x_233 * x_236) + x_239);
  let x_241 : f32 = u_xlat49;
  u_xlat49 = clamp(x_241, 0.0f, 1.0f);
  let x_246 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb50 = (x_246 == 1.0f);
  let x_248 : bool = u_xlatb50;
  if (x_248) {
    let x_253 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb51 = (x_253 == 1.0f);
    let x_255 : vec4<f32> = vs_TEXCOORD1;
    let x_259 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_261 : vec3<f32> = (vec3<f32>(x_255.w, x_255.w, x_255.w) * vec3<f32>(x_259.x, x_259.y, x_259.z));
    let x_262 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_265 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_267 : vec4<f32> = vs_TEXCOORD0;
    let x_270 : vec4<f32> = u_xlat7;
    let x_272 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_267.w, x_267.w, x_267.w)) + vec3<f32>(x_270.x, x_270.y, x_270.z));
    let x_273 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_276 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_278 : vec4<f32> = vs_TEXCOORD2;
    let x_281 : vec4<f32> = u_xlat7;
    let x_283 : vec3<f32> = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_278.w, x_278.w, x_278.w)) + vec3<f32>(x_281.x, x_281.y, x_281.z));
    let x_284 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat7;
    let x_290 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_292 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) + vec3<f32>(x_290.x, x_290.y, x_290.z));
    let x_293 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
    let x_295 : bool = u_xlatb51;
    if (x_295) {
      let x_300 : vec4<f32> = u_xlat7;
      x_297 = vec3<f32>(x_300.x, x_300.y, x_300.z);
    } else {
      let x_303 : vec3<f32> = u_xlat0;
      x_297 = x_303;
    }
    let x_304 : vec3<f32> = x_297;
    let x_305 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat7;
    let x_311 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_313 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + -(x_311));
    let x_314 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat7;
    let x_320 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_321 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * x_320);
    let x_322 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_322.x, x_321.x, x_321.y, x_321.z);
    let x_326 : f32 = u_xlat7.y;
    u_xlat51 = ((x_326 * 0.25f) + 0.75f);
    let x_333 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat52 = ((x_333 * 0.5f) + 0.75f);
    let x_337 : f32 = u_xlat51;
    let x_338 : f32 = u_xlat52;
    u_xlat7.x = max(x_337, x_338);
    let x_349 : vec4<f32> = u_xlat7;
    let x_351 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_349.x, x_349.z, x_349.w));
    u_xlat7 = x_351;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_357 : vec4<f32> = u_xlat7;
  let x_360 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat51 = dot(x_357, x_360);
  let x_362 : f32 = u_xlat51;
  u_xlat51 = clamp(x_362, 0.0f, 1.0f);
  let x_365 : vec4<f32> = vs_TEXCOORD6;
  let x_367 : vec4<f32> = vs_TEXCOORD6;
  let x_369 : vec2<f32> = (vec2<f32>(x_365.x, x_365.y) / vec2<f32>(x_367.w, x_367.w));
  let x_370 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
  let x_377 : vec4<f32> = u_xlat7;
  let x_379 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_377.x, x_377.y));
  u_xlat52 = x_379.x;
  let x_381 : f32 = u_xlat51;
  let x_382 : f32 = u_xlat52;
  u_xlat51 = (x_381 + -(x_382));
  let x_385 : f32 = u_xlat49;
  let x_386 : f32 = u_xlat51;
  let x_388 : f32 = u_xlat52;
  u_xlat49 = ((x_385 * x_386) + x_388);
  let x_390 : vec4<f32> = vs_TEXCOORD0;
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_390.x, x_390.y, x_390.z), vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_396 : vec4<f32> = vs_TEXCOORD1;
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat7.y = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_402 : vec4<f32> = vs_TEXCOORD2;
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_408 : vec4<f32> = u_xlat7;
  let x_410 : vec4<f32> = u_xlat7;
  u_xlat51 = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_413);
  let x_415 : f32 = u_xlat51;
  let x_417 : vec4<f32> = u_xlat7;
  let x_419 : vec3<f32> = (vec3<f32>(x_415, x_415, x_415) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_424 : f32 = x_37.x_Glossiness;
  u_xlat51 = (-(x_424) + 1.0f);
  let x_427 : vec4<f32> = u_xlat2;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat52 = dot(-(vec3<f32>(x_427.x, x_427.y, x_427.z)), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : f32 = u_xlat52;
  let x_434 : f32 = u_xlat52;
  u_xlat52 = (x_433 + x_434);
  let x_436 : vec4<f32> = u_xlat5;
  let x_438 : f32 = u_xlat52;
  let x_442 : vec4<f32> = u_xlat2;
  let x_445 : vec3<f32> = ((vec3<f32>(x_436.x, x_436.y, x_436.z) * -(vec3<f32>(x_438, x_438, x_438))) + -(vec3<f32>(x_442.x, x_442.y, x_442.z)));
  let x_446 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : f32 = u_xlat49;
  let x_453 : vec4<f32> = x_37.x_LightColor0;
  u_xlat8 = (vec3<f32>(x_449, x_449, x_449) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : bool = u_xlatb50;
  if (x_456) {
    let x_460 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb49 = (x_460 == 1.0f);
    let x_463 : vec4<f32> = vs_TEXCOORD1;
    let x_466 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_468 : vec3<f32> = (vec3<f32>(x_463.w, x_463.w, x_463.w) * vec3<f32>(x_466.x, x_466.y, x_466.z));
    let x_469 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
    let x_472 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_474 : vec4<f32> = vs_TEXCOORD0;
    let x_477 : vec4<f32> = u_xlat9;
    let x_479 : vec3<f32> = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_474.w, x_474.w, x_474.w)) + vec3<f32>(x_477.x, x_477.y, x_477.z));
    let x_480 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
    let x_483 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_485 : vec4<f32> = vs_TEXCOORD2;
    let x_488 : vec4<f32> = u_xlat9;
    let x_490 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_485.w, x_485.w, x_485.w)) + vec3<f32>(x_488.x, x_488.y, x_488.z));
    let x_491 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
    let x_493 : vec4<f32> = u_xlat9;
    let x_496 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_498 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) + vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_501 : bool = u_xlatb49;
    if (x_501) {
      let x_505 : vec4<f32> = u_xlat9;
      x_502 = vec3<f32>(x_505.x, x_505.y, x_505.z);
    } else {
      let x_508 : vec3<f32> = u_xlat0;
      x_502 = x_508;
    }
    let x_509 : vec3<f32> = x_502;
    let x_510 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_512 : vec4<f32> = u_xlat9;
    let x_515 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_517 : vec3<f32> = (vec3<f32>(x_512.x, x_512.y, x_512.z) + -(x_515));
    let x_518 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
    let x_520 : vec4<f32> = u_xlat9;
    let x_523 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_524 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) * x_523);
    let x_525 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_525.x, x_524.x, x_524.y, x_524.z);
    let x_528 : f32 = u_xlat9.y;
    u_xlat49 = (x_528 * 0.25f);
    let x_531 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat50 = (x_531 * 0.5f);
    let x_534 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat52 = ((-(x_534) * 0.5f) + 0.25f);
    let x_538 : f32 = u_xlat49;
    let x_539 : f32 = u_xlat50;
    u_xlat49 = max(x_538, x_539);
    let x_541 : f32 = u_xlat52;
    let x_542 : f32 = u_xlat49;
    u_xlat9.x = min(x_541, x_542);
    let x_549 : vec4<f32> = u_xlat9;
    let x_551 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_549.x, x_549.z, x_549.w));
    u_xlat10 = x_551;
    let x_553 : vec4<f32> = u_xlat9;
    let x_556 : vec3<f32> = (vec3<f32>(x_553.x, x_553.z, x_553.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_557 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
    let x_562 : vec4<f32> = u_xlat11;
    let x_564 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_562.x, x_562.y, x_562.z));
    u_xlat11 = x_564;
    let x_565 : vec4<f32> = u_xlat9;
    let x_568 : vec3<f32> = (vec3<f32>(x_565.x, x_565.z, x_565.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_569 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
    let x_574 : vec4<f32> = u_xlat9;
    let x_576 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_574.x, x_574.y, x_574.z));
    u_xlat9 = x_576;
    u_xlat5.w = 1.0f;
    let x_578 : vec4<f32> = u_xlat10;
    let x_579 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_578, x_579);
    let x_582 : vec4<f32> = u_xlat11;
    let x_583 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_582, x_583);
    let x_586 : vec4<f32> = u_xlat9;
    let x_587 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_586, x_587);
  } else {
    u_xlat5.w = 1.0f;
    let x_593 : vec4<f32> = x_37.unity_SHAr;
    let x_594 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_593, x_594);
    let x_598 : vec4<f32> = x_37.unity_SHAg;
    let x_599 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_598, x_599);
    let x_604 : vec4<f32> = x_37.unity_SHAb;
    let x_605 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_604, x_605);
  }
  let x_608 : vec4<f32> = u_xlat10;
  let x_612 : vec3<f32> = vs_TEXCOORD4;
  let x_613 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) + x_612);
  let x_614 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat9;
  let x_619 : vec3<f32> = max(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_620 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_624 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_624);
  let x_626 : bool = u_xlatb49;
  if (x_626) {
    let x_629 : vec4<f32> = u_xlat7;
    let x_631 : vec4<f32> = u_xlat7;
    u_xlat49 = dot(vec3<f32>(x_629.x, x_629.y, x_629.z), vec3<f32>(x_631.x, x_631.y, x_631.z));
    let x_634 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_634);
    let x_636 : f32 = u_xlat49;
    let x_638 : vec4<f32> = u_xlat7;
    let x_640 : vec3<f32> = (vec3<f32>(x_636, x_636, x_636) * vec3<f32>(x_638.x, x_638.y, x_638.z));
    let x_641 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
    let x_643 : vec3<f32> = u_xlat0;
    let x_647 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_649 : vec3<f32> = (-(x_643) + vec3<f32>(x_647.x, x_647.y, x_647.z));
    let x_650 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
    let x_652 : vec4<f32> = u_xlat11;
    let x_654 : vec4<f32> = u_xlat10;
    let x_656 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) / vec3<f32>(x_654.x, x_654.y, x_654.z));
    let x_657 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
    let x_660 : vec3<f32> = u_xlat0;
    let x_664 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(x_660) + vec3<f32>(x_664.x, x_664.y, x_664.z));
    let x_667 : vec3<f32> = u_xlat12;
    let x_668 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_667 / vec3<f32>(x_668.x, x_668.y, x_668.z));
    let x_675 : vec4<f32> = u_xlat10;
    let x_678 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_675.x, x_675.y, x_675.z, x_675.x));
    u_xlatb13 = vec3<bool>(x_678.x, x_678.y, x_678.z);
    let x_682 : vec4<f32> = u_xlat11;
    hlslcc_movcTemp = x_682;
    let x_684 : bool = u_xlatb13.x;
    if (x_684) {
      let x_690 : f32 = u_xlat11.x;
      x_686 = x_690;
    } else {
      let x_693 : f32 = u_xlat12.x;
      x_686 = x_693;
    }
    let x_694 : f32 = x_686;
    hlslcc_movcTemp.x = x_694;
    let x_697 : bool = u_xlatb13.y;
    if (x_697) {
      let x_702 : f32 = u_xlat11.y;
      x_698 = x_702;
    } else {
      let x_705 : f32 = u_xlat12.y;
      x_698 = x_705;
    }
    let x_706 : f32 = x_698;
    hlslcc_movcTemp.y = x_706;
    let x_709 : bool = u_xlatb13.z;
    if (x_709) {
      let x_714 : f32 = u_xlat11.z;
      x_710 = x_714;
    } else {
      let x_717 : f32 = u_xlat12.z;
      x_710 = x_717;
    }
    let x_718 : f32 = x_710;
    hlslcc_movcTemp.z = x_718;
    let x_720 : vec4<f32> = hlslcc_movcTemp;
    u_xlat11 = x_720;
    let x_722 : f32 = u_xlat11.y;
    let x_724 : f32 = u_xlat11.x;
    u_xlat49 = min(x_722, x_724);
    let x_727 : f32 = u_xlat11.z;
    let x_728 : f32 = u_xlat49;
    u_xlat49 = min(x_727, x_728);
    let x_730 : vec3<f32> = u_xlat0;
    let x_732 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_735 : vec3<f32> = (x_730 + -(vec3<f32>(x_732.x, x_732.y, x_732.z)));
    let x_736 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
    let x_738 : vec4<f32> = u_xlat10;
    let x_740 : f32 = u_xlat49;
    let x_743 : vec4<f32> = u_xlat11;
    let x_745 : vec3<f32> = ((vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_740, x_740, x_740)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
    let x_746 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  } else {
    let x_749 : vec4<f32> = u_xlat7;
    let x_750 : vec3<f32> = vec3<f32>(x_749.x, x_749.y, x_749.z);
    let x_751 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  }
  let x_753 : f32 = u_xlat51;
  u_xlat49 = ((-(x_753) * 0.699999988f) + 1.700000048f);
  let x_759 : f32 = u_xlat49;
  let x_760 : f32 = u_xlat51;
  u_xlat49 = (x_759 * x_760);
  let x_762 : f32 = u_xlat49;
  u_xlat49 = (x_762 * 6.0f);
  let x_773 : vec4<f32> = u_xlat10;
  let x_775 : f32 = u_xlat49;
  let x_776 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_773.x, x_773.y, x_773.z), x_775);
  u_xlat10 = x_776;
  let x_778 : f32 = u_xlat10.w;
  u_xlat50 = (x_778 + -1.0f);
  let x_782 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_783 : f32 = u_xlat50;
  u_xlat50 = ((x_782 * x_783) + 1.0f);
  let x_786 : f32 = u_xlat50;
  u_xlat50 = log2(x_786);
  let x_788 : f32 = u_xlat50;
  let x_790 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat50 = (x_788 * x_790);
  let x_792 : f32 = u_xlat50;
  u_xlat50 = exp2(x_792);
  let x_794 : f32 = u_xlat50;
  let x_796 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat50 = (x_794 * x_796);
  let x_798 : vec4<f32> = u_xlat10;
  let x_800 : f32 = u_xlat50;
  let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_800, x_800, x_800));
  let x_803 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_807 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_807 < 0.999989986f);
  let x_810 : bool = u_xlatb52;
  if (x_810) {
    let x_815 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_815);
    let x_817 : bool = u_xlatb52;
    if (x_817) {
      let x_820 : vec4<f32> = u_xlat7;
      let x_822 : vec4<f32> = u_xlat7;
      u_xlat52 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
      let x_825 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_825);
      let x_827 : f32 = u_xlat52;
      let x_829 : vec4<f32> = u_xlat7;
      u_xlat12 = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
      let x_833 : vec3<f32> = u_xlat0;
      let x_837 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(x_833) + vec3<f32>(x_837.x, x_837.y, x_837.z));
      let x_840 : vec3<f32> = u_xlat13;
      let x_841 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_840 / x_841);
      let x_844 : vec3<f32> = u_xlat0;
      let x_848 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(x_844) + vec3<f32>(x_848.x, x_848.y, x_848.z));
      let x_851 : vec3<f32> = u_xlat14;
      let x_852 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_851 / x_852);
      let x_855 : vec3<f32> = u_xlat12;
      let x_857 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_855.x, x_855.y, x_855.z, x_855.x));
      u_xlatb15 = vec3<bool>(x_857.x, x_857.y, x_857.z);
      let x_860 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_860;
      let x_862 : bool = u_xlatb15.x;
      if (x_862) {
        let x_867 : f32 = u_xlat13.x;
        x_863 = x_867;
      } else {
        let x_870 : f32 = u_xlat14.x;
        x_863 = x_870;
      }
      let x_871 : f32 = x_863;
      hlslcc_movcTemp_1.x = x_871;
      let x_874 : bool = u_xlatb15.y;
      if (x_874) {
        let x_879 : f32 = u_xlat13.y;
        x_875 = x_879;
      } else {
        let x_882 : f32 = u_xlat14.y;
        x_875 = x_882;
      }
      let x_883 : f32 = x_875;
      hlslcc_movcTemp_1.y = x_883;
      let x_886 : bool = u_xlatb15.z;
      if (x_886) {
        let x_891 : f32 = u_xlat13.z;
        x_887 = x_891;
      } else {
        let x_894 : f32 = u_xlat14.z;
        x_887 = x_894;
      }
      let x_895 : f32 = x_887;
      hlslcc_movcTemp_1.z = x_895;
      let x_897 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_897;
      let x_899 : f32 = u_xlat13.y;
      let x_901 : f32 = u_xlat13.x;
      u_xlat52 = min(x_899, x_901);
      let x_904 : f32 = u_xlat13.z;
      let x_905 : f32 = u_xlat52;
      u_xlat52 = min(x_904, x_905);
      let x_907 : vec3<f32> = u_xlat0;
      let x_909 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_907 + -(vec3<f32>(x_909.x, x_909.y, x_909.z)));
      let x_913 : vec3<f32> = u_xlat12;
      let x_914 : f32 = u_xlat52;
      let x_917 : vec3<f32> = u_xlat0;
      let x_918 : vec3<f32> = ((x_913 * vec3<f32>(x_914, x_914, x_914)) + x_917);
      let x_919 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
    }
    let x_925 : vec4<f32> = u_xlat7;
    let x_927 : f32 = u_xlat49;
    let x_928 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_925.x, x_925.y, x_925.z), x_927);
    u_xlat7 = x_928;
    let x_930 : f32 = u_xlat7.w;
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
    let x_961 : vec4<f32> = u_xlat7;
    let x_963 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_961.x, x_961.y, x_961.z) * vec3<f32>(x_963.x, x_963.x, x_963.x));
    let x_966 : f32 = u_xlat50;
    let x_968 : vec4<f32> = u_xlat10;
    let x_971 : vec3<f32> = u_xlat0;
    let x_973 : vec3<f32> = ((vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z)) + -(x_971));
    let x_974 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
    let x_977 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_979 : vec4<f32> = u_xlat7;
    let x_982 : vec3<f32> = u_xlat0;
    let x_983 : vec3<f32> = ((vec3<f32>(x_977.w, x_977.w, x_977.w) * vec3<f32>(x_979.x, x_979.y, x_979.z)) + x_982);
    let x_984 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  }
  let x_986 : vec4<f32> = u_xlat3;
  let x_988 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_986.x, x_986.y, x_986.z) * vec3<f32>(x_988.x, x_988.y, x_988.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_996 : f32 = x_37.x_Metallic;
  let x_998 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_996, x_996, x_996) * x_998) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1004 : f32 = x_37.x_Metallic;
  u_xlat49 = ((-(x_1004) * 0.959999979f) + 0.959999979f);
  let x_1009 : f32 = u_xlat49;
  let x_1011 : vec3<f32> = u_xlat4;
  let x_1012 : vec3<f32> = (vec3<f32>(x_1009, x_1009, x_1009) * x_1011);
  let x_1013 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec3<f32> = u_xlat1;
  let x_1016 : f32 = u_xlat48;
  let x_1020 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1015 * vec3<f32>(x_1016, x_1016, x_1016)) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec3<f32> = u_xlat1;
  let x_1024 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_1023, x_1024);
  let x_1026 : f32 = u_xlat48;
  u_xlat48 = max(x_1026, 0.001f);
  let x_1029 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_1029);
  let x_1031 : f32 = u_xlat48;
  let x_1033 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1031, x_1031, x_1031) * x_1033);
  let x_1035 : vec4<f32> = u_xlat5;
  let x_1037 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_1035.x, x_1035.y, x_1035.z), vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : vec4<f32> = u_xlat5;
  let x_1043 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1040.x, x_1040.y, x_1040.z), vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1048 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1048, 0.0f, 1.0f);
  let x_1052 : vec4<f32> = u_xlat5;
  let x_1054 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_1052.x, x_1052.y, x_1052.z), x_1054);
  let x_1056 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1056, 0.0f, 1.0f);
  let x_1059 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1061 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), x_1061);
  let x_1065 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1065, 0.0f, 1.0f);
  let x_1070 : f32 = u_xlat1.x;
  let x_1072 : f32 = u_xlat1.x;
  u_xlat17 = (x_1070 * x_1072);
  let x_1074 : f32 = u_xlat17;
  let x_1076 : f32 = u_xlat51;
  u_xlat17 = dot(vec2<f32>(x_1074, x_1074), vec2<f32>(x_1076, x_1076));
  let x_1079 : f32 = u_xlat17;
  u_xlat17 = (x_1079 + -0.5f);
  let x_1084 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_1084) + 1.0f);
  let x_1088 : f32 = u_xlat33;
  let x_1089 : f32 = u_xlat33;
  u_xlat34 = (x_1088 * x_1089);
  let x_1091 : f32 = u_xlat34;
  let x_1092 : f32 = u_xlat34;
  u_xlat34 = (x_1091 * x_1092);
  let x_1094 : f32 = u_xlat33;
  let x_1095 : f32 = u_xlat34;
  u_xlat33 = (x_1094 * x_1095);
  let x_1097 : f32 = u_xlat17;
  let x_1098 : f32 = u_xlat33;
  u_xlat33 = ((x_1097 * x_1098) + 1.0f);
  let x_1101 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_1101)) + 1.0f);
  let x_1105 : f32 = u_xlat34;
  let x_1106 : f32 = u_xlat34;
  u_xlat50 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat50;
  let x_1109 : f32 = u_xlat50;
  u_xlat50 = (x_1108 * x_1109);
  let x_1111 : f32 = u_xlat34;
  let x_1112 : f32 = u_xlat50;
  u_xlat34 = (x_1111 * x_1112);
  let x_1114 : f32 = u_xlat17;
  let x_1115 : f32 = u_xlat34;
  u_xlat17 = ((x_1114 * x_1115) + 1.0f);
  let x_1118 : f32 = u_xlat17;
  let x_1119 : f32 = u_xlat33;
  u_xlat17 = (x_1118 * x_1119);
  let x_1122 : f32 = u_xlat2.x;
  let x_1123 : f32 = u_xlat17;
  u_xlat17 = (x_1122 * x_1123);
  let x_1125 : f32 = u_xlat51;
  let x_1126 : f32 = u_xlat51;
  u_xlat33 = (x_1125 * x_1126);
  let x_1128 : f32 = u_xlat33;
  u_xlat33 = max(x_1128, 0.002f);
  let x_1131 : f32 = u_xlat33;
  u_xlat50 = (-(x_1131) + 1.0f);
  let x_1134 : f32 = u_xlat48;
  let x_1136 : f32 = u_xlat50;
  let x_1138 : f32 = u_xlat33;
  u_xlat51 = ((abs(x_1134) * x_1136) + x_1138);
  let x_1141 : f32 = u_xlat2.x;
  let x_1142 : f32 = u_xlat50;
  let x_1144 : f32 = u_xlat33;
  u_xlat50 = ((x_1141 * x_1142) + x_1144);
  let x_1146 : f32 = u_xlat48;
  let x_1148 : f32 = u_xlat50;
  u_xlat48 = (abs(x_1146) * x_1148);
  let x_1151 : f32 = u_xlat2.x;
  let x_1152 : f32 = u_xlat51;
  let x_1154 : f32 = u_xlat48;
  u_xlat48 = ((x_1151 * x_1152) + x_1154);
  let x_1156 : f32 = u_xlat48;
  u_xlat48 = (x_1156 + 0.00001f);
  let x_1159 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1159);
  let x_1161 : f32 = u_xlat33;
  let x_1162 : f32 = u_xlat33;
  u_xlat50 = (x_1161 * x_1162);
  let x_1164 : f32 = u_xlat18;
  let x_1165 : f32 = u_xlat50;
  let x_1167 : f32 = u_xlat18;
  u_xlat51 = ((x_1164 * x_1165) + -(x_1167));
  let x_1170 : f32 = u_xlat51;
  let x_1171 : f32 = u_xlat18;
  u_xlat18 = ((x_1170 * x_1171) + 1.0f);
  let x_1174 : f32 = u_xlat50;
  u_xlat50 = (x_1174 * 0.318309873f);
  let x_1177 : f32 = u_xlat18;
  let x_1178 : f32 = u_xlat18;
  u_xlat18 = ((x_1177 * x_1178) + 0.0000001f);
  let x_1182 : f32 = u_xlat50;
  let x_1183 : f32 = u_xlat18;
  u_xlat18 = (x_1182 / x_1183);
  let x_1185 : f32 = u_xlat48;
  let x_1186 : f32 = u_xlat18;
  u_xlat48 = (x_1185 * x_1186);
  let x_1189 : f32 = u_xlat2.x;
  let x_1190 : f32 = u_xlat48;
  u_xlat48 = (x_1189 * x_1190);
  let x_1192 : f32 = u_xlat48;
  u_xlat48 = (x_1192 * 3.141592741f);
  let x_1195 : f32 = u_xlat48;
  u_xlat48 = max(x_1195, 0.0f);
  let x_1197 : f32 = u_xlat33;
  let x_1198 : f32 = u_xlat33;
  u_xlat33 = ((x_1197 * x_1198) + 1.0f);
  let x_1201 : f32 = u_xlat33;
  u_xlat33 = (1.0f / x_1201);
  let x_1203 : vec3<f32> = u_xlat0;
  let x_1204 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1203, x_1204);
  let x_1209 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1209 == 0.0f));
  let x_1211 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1211);
  let x_1214 : f32 = u_xlat48;
  let x_1216 : f32 = u_xlat2.x;
  u_xlat48 = (x_1214 * x_1216);
  let x_1218 : f32 = u_xlat49;
  let x_1221 : f32 = x_37.x_Glossiness;
  u_xlat49 = (-(x_1218) + x_1221);
  let x_1223 : f32 = u_xlat49;
  u_xlat49 = (x_1223 + 1.0f);
  let x_1225 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1225, 0.0f, 1.0f);
  let x_1227 : vec3<f32> = u_xlat8;
  let x_1228 : f32 = u_xlat17;
  let x_1231 : vec4<f32> = u_xlat9;
  let x_1233 : vec3<f32> = ((x_1227 * vec3<f32>(x_1228, x_1228, x_1228)) + vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1233.z);
  let x_1236 : vec3<f32> = u_xlat8;
  let x_1237 : f32 = u_xlat48;
  u_xlat4 = (x_1236 * vec3<f32>(x_1237, x_1237, x_1237));
  let x_1241 : f32 = u_xlat1.x;
  u_xlat48 = (-(x_1241) + 1.0f);
  let x_1244 : f32 = u_xlat48;
  let x_1245 : f32 = u_xlat48;
  u_xlat1.x = (x_1244 * x_1245);
  let x_1249 : f32 = u_xlat1.x;
  let x_1251 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1249 * x_1251);
  let x_1254 : f32 = u_xlat48;
  let x_1256 : f32 = u_xlat1.x;
  u_xlat48 = (x_1254 * x_1256);
  let x_1258 : vec3<f32> = u_xlat0;
  let x_1261 : vec3<f32> = (-(x_1258) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1262 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1264 : vec4<f32> = u_xlat5;
  let x_1266 : f32 = u_xlat48;
  let x_1269 : vec3<f32> = u_xlat0;
  let x_1270 : vec3<f32> = ((vec3<f32>(x_1264.x, x_1264.y, x_1264.z) * vec3<f32>(x_1266, x_1266, x_1266)) + x_1269);
  let x_1271 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
  let x_1273 : vec3<f32> = u_xlat4;
  let x_1274 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1273 * vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
  let x_1277 : vec4<f32> = u_xlat3;
  let x_1279 : vec4<f32> = u_xlat2;
  let x_1282 : vec3<f32> = u_xlat4;
  let x_1283 : vec3<f32> = ((vec3<f32>(x_1277.x, x_1277.y, x_1277.z) * vec3<f32>(x_1279.x, x_1279.y, x_1279.w)) + x_1282);
  let x_1284 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1283.x, x_1283.y, x_1284.z, x_1283.z);
  let x_1286 : vec4<f32> = u_xlat11;
  let x_1288 : f32 = u_xlat33;
  u_xlat1 = (vec3<f32>(x_1286.x, x_1286.y, x_1286.z) * vec3<f32>(x_1288, x_1288, x_1288));
  let x_1291 : vec3<f32> = u_xlat0;
  let x_1293 : f32 = u_xlat49;
  let x_1295 : vec3<f32> = (-(x_1291) + vec3<f32>(x_1293, x_1293, x_1293));
  let x_1296 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1298 : f32 = u_xlat34;
  let x_1300 : vec4<f32> = u_xlat3;
  let x_1303 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1298, x_1298, x_1298) * vec3<f32>(x_1300.x, x_1300.y, x_1300.z)) + x_1303);
  let x_1305 : vec3<f32> = u_xlat1;
  let x_1306 : vec3<f32> = u_xlat0;
  let x_1308 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1305 * x_1306) + vec3<f32>(x_1308.x, x_1308.y, x_1308.w));
  let x_1313 : vec3<f32> = u_xlat6;
  let x_1316 : f32 = x_37.x_EmissionColor.x;
  let x_1318 : f32 = x_37.x_EmissionColor.y;
  let x_1320 : f32 = x_37.x_EmissionColor.z;
  let x_1323 : vec3<f32> = u_xlat0;
  let x_1324 : vec3<f32> = ((x_1313 * vec3<f32>(x_1316, x_1318, x_1320)) + x_1323);
  let x_1325 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(6) vs_TEXCOORD6_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

