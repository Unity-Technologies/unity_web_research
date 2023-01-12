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
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlatb49 : bool;
  var u_xlatb5 : bool;
  var u_xlat20 : vec3<f32>;
  var x_318 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb48 : bool;
  var u_xlat8 : vec4<f32>;
  var x_526 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_711 : f32;
  var x_723 : f32;
  var x_735 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_888 : f32;
  var x_900 : f32;
  var x_912 : f32;
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
  let x_86 : vec4<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_95 : f32 = u_xlat2.z;
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = (x_95 * x_98);
  let x_101 : vec4<f32> = u_xlat2;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_33.x_BumpScale;
  let x_117 : vec2<f32> = (vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115, x_115));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_121 : vec4<f32> = u_xlat2;
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(vec2<f32>(x_121.x, x_121.y), vec2<f32>(x_123.x, x_123.y));
  let x_126 : f32 = u_xlat46;
  u_xlat46 = min(x_126, 1.0f);
  let x_129 : f32 = u_xlat46;
  u_xlat46 = (-(x_129) + 1.0f);
  let x_132 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_132);
  let x_135 : vec4<f32> = u_xlat2;
  let x_138 : vec4<f32> = vs_TEXCOORD3;
  u_xlat17 = (vec3<f32>(x_135.y, x_135.y, x_135.y) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_142 : vec4<f32> = vs_TEXCOORD2;
  let x_144 : vec4<f32> = u_xlat2;
  let x_147 : vec3<f32> = u_xlat17;
  let x_148 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + x_147);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_152 : vec4<f32> = vs_TEXCOORD4;
  let x_154 : f32 = u_xlat46;
  let x_157 : vec4<f32> = u_xlat2;
  let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154, x_154, x_154)) + vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_162 : vec4<f32> = u_xlat2;
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(vec3<f32>(x_162.x, x_162.y, x_162.z), vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_167);
  let x_169 : f32 = u_xlat46;
  let x_171 : vec4<f32> = u_xlat2;
  let x_173 : vec3<f32> = (vec3<f32>(x_169, x_169, x_169) * vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec4<f32> = vs_TEXCOORD1;
  let x_179 : vec4<f32> = vs_TEXCOORD1;
  u_xlat46 = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_182);
  let x_185 : f32 = u_xlat46;
  let x_187 : vec4<f32> = vs_TEXCOORD1;
  let x_189 : vec3<f32> = (vec3<f32>(x_185, x_185, x_185) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_196 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_196;
  let x_199 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_199;
  let x_203 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_203;
  let x_206 : vec4<f32> = u_xlat4;
  let x_212 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_213 : vec3<f32> = (-(vec3<f32>(x_206.x, x_206.y, x_206.z)) + x_212);
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_219 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_219;
  let x_223 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_223;
  let x_227 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_227;
  let x_230 : vec4<f32> = u_xlat5;
  let x_232 : vec3<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), x_232);
  let x_234 : vec4<f32> = u_xlat4;
  let x_238 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_241 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : vec4<f32> = u_xlat5;
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : f32 = u_xlat49;
  u_xlat49 = sqrt(x_250);
  let x_252 : f32 = u_xlat48;
  let x_254 : f32 = u_xlat49;
  u_xlat49 = (-(x_252) + x_254);
  let x_257 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_258 : f32 = u_xlat49;
  let x_260 : f32 = u_xlat48;
  u_xlat48 = ((x_257 * x_258) + x_260);
  let x_262 : f32 = u_xlat48;
  let x_265 : f32 = x_33.x_LightShadowData.z;
  let x_268 : f32 = x_33.x_LightShadowData.w;
  u_xlat48 = ((x_262 * x_265) + x_268);
  let x_270 : f32 = u_xlat48;
  u_xlat48 = clamp(x_270, 0.0f, 1.0f);
  let x_278 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_278 == 1.0f);
  let x_280 : bool = u_xlatb49;
  if (x_280) {
    let x_285 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb5 = (x_285 == 1.0f);
    let x_288 : vec4<f32> = vs_TEXCOORD3;
    let x_292 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    u_xlat20 = (vec3<f32>(x_288.w, x_288.w, x_288.w) * vec3<f32>(x_292.x, x_292.y, x_292.z));
    let x_296 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_298 : vec4<f32> = vs_TEXCOORD2;
    let x_301 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.w, x_298.w, x_298.w)) + x_301);
    let x_304 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_306 : vec4<f32> = vs_TEXCOORD4;
    let x_309 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.w, x_306.w, x_306.w)) + x_309);
    let x_311 : vec3<f32> = u_xlat20;
    let x_314 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    u_xlat20 = (x_311 + vec3<f32>(x_314.x, x_314.y, x_314.z));
    let x_317 : bool = u_xlatb5;
    if (x_317) {
      let x_321 : vec3<f32> = u_xlat20;
      x_318 = x_321;
    } else {
      let x_323 : vec4<f32> = u_xlat4;
      x_318 = vec3<f32>(x_323.x, x_323.y, x_323.z);
    }
    let x_325 : vec3<f32> = x_318;
    let x_326 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_328 : vec4<f32> = u_xlat5;
    let x_332 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_334 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + -(x_332));
    let x_335 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_337 : vec4<f32> = u_xlat5;
    let x_341 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_342 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * x_341);
    let x_343 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_343.x, x_342.x, x_342.y, x_342.z);
    let x_346 : f32 = u_xlat5.y;
    u_xlat20.x = ((x_346 * 0.25f) + 0.75f);
    let x_353 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat6.x = ((x_353 * 0.5f) + 0.75f);
    let x_359 : f32 = u_xlat20.x;
    let x_361 : f32 = u_xlat6.x;
    u_xlat5.x = max(x_359, x_361);
    let x_372 : vec4<f32> = u_xlat5;
    let x_374 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_372.x, x_372.z, x_372.w));
    u_xlat5 = x_374;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_380 : vec4<f32> = u_xlat5;
  let x_383 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat5.x = dot(x_380, x_383);
  let x_387 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_387, 0.0f, 1.0f);
  let x_391 : vec4<f32> = vs_TEXCOORD7;
  let x_393 : vec4<f32> = vs_TEXCOORD7;
  let x_395 : vec2<f32> = (vec2<f32>(x_391.x, x_391.y) / vec2<f32>(x_393.w, x_393.w));
  let x_396 : vec3<f32> = u_xlat20;
  u_xlat20 = vec3<f32>(x_395.x, x_395.y, x_396.z);
  let x_403 : vec3<f32> = u_xlat20;
  let x_405 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_403.x, x_403.y));
  u_xlat20.x = x_405.x;
  let x_409 : f32 = u_xlat20.x;
  let x_412 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_409) + x_412);
  let x_415 : f32 = u_xlat48;
  let x_417 : f32 = u_xlat5.x;
  let x_420 : f32 = u_xlat20.x;
  u_xlat48 = ((x_415 * x_417) + x_420);
  let x_427 : vec4<f32> = vs_TEXCOORD0;
  let x_429 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_427.x, x_427.y));
  u_xlat5.x = x_429.y;
  let x_434 : f32 = x_33.x_OcclusionStrength;
  u_xlat20.x = (-(x_434) + 1.0f);
  let x_439 : f32 = u_xlat5.x;
  let x_441 : f32 = x_33.x_OcclusionStrength;
  let x_444 : f32 = u_xlat20.x;
  u_xlat5.x = ((x_439 * x_441) + x_444);
  let x_449 : f32 = x_33.x_Glossiness;
  u_xlat20.x = (-(x_449) + 1.0f);
  let x_454 : vec4<f32> = u_xlat3;
  let x_456 : vec4<f32> = u_xlat2;
  u_xlat35 = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : f32 = u_xlat35;
  let x_460 : f32 = u_xlat35;
  u_xlat35 = (x_459 + x_460);
  let x_462 : vec4<f32> = u_xlat2;
  let x_464 : f32 = u_xlat35;
  let x_468 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * -(vec3<f32>(x_464, x_464, x_464))) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_472 : f32 = u_xlat48;
  let x_476 : vec4<f32> = x_33.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : bool = u_xlatb49;
  if (x_479) {
    let x_484 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_484 == 1.0f);
    let x_487 : vec4<f32> = vs_TEXCOORD3;
    let x_490 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_492 : vec3<f32> = (vec3<f32>(x_487.w, x_487.w, x_487.w) * vec3<f32>(x_490.x, x_490.y, x_490.z));
    let x_493 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
    let x_496 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_498 : vec4<f32> = vs_TEXCOORD2;
    let x_501 : vec4<f32> = u_xlat8;
    let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_498.w, x_498.w, x_498.w)) + vec3<f32>(x_501.x, x_501.y, x_501.z));
    let x_504 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_507 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_509 : vec4<f32> = vs_TEXCOORD4;
    let x_512 : vec4<f32> = u_xlat8;
    let x_514 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(x_509.w, x_509.w, x_509.w)) + vec3<f32>(x_512.x, x_512.y, x_512.z));
    let x_515 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
    let x_517 : vec4<f32> = u_xlat8;
    let x_520 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_522 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) + vec3<f32>(x_520.x, x_520.y, x_520.z));
    let x_523 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
    let x_525 : bool = u_xlatb48;
    if (x_525) {
      let x_529 : vec4<f32> = u_xlat8;
      x_526 = vec3<f32>(x_529.x, x_529.y, x_529.z);
    } else {
      let x_532 : vec4<f32> = u_xlat4;
      x_526 = vec3<f32>(x_532.x, x_532.y, x_532.z);
    }
    let x_534 : vec3<f32> = x_526;
    let x_535 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
    let x_537 : vec4<f32> = u_xlat8;
    let x_540 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_542 : vec3<f32> = (vec3<f32>(x_537.x, x_537.y, x_537.z) + -(x_540));
    let x_543 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
    let x_545 : vec4<f32> = u_xlat8;
    let x_548 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_549 : vec3<f32> = (vec3<f32>(x_545.x, x_545.y, x_545.z) * x_548);
    let x_550 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_550.x, x_549.x, x_549.y, x_549.z);
    let x_553 : f32 = u_xlat8.y;
    u_xlat48 = (x_553 * 0.25f);
    let x_556 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat49 = (x_556 * 0.5f);
    let x_559 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat35 = ((-(x_559) * 0.5f) + 0.25f);
    let x_563 : f32 = u_xlat48;
    let x_564 : f32 = u_xlat49;
    u_xlat48 = max(x_563, x_564);
    let x_566 : f32 = u_xlat35;
    let x_567 : f32 = u_xlat48;
    u_xlat8.x = min(x_566, x_567);
    let x_574 : vec4<f32> = u_xlat8;
    let x_576 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_574.x, x_574.z, x_574.w));
    u_xlat9 = x_576;
    let x_578 : vec4<f32> = u_xlat8;
    let x_581 : vec3<f32> = (vec3<f32>(x_578.x, x_578.z, x_578.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_582 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
    let x_587 : vec4<f32> = u_xlat10;
    let x_589 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_587.x, x_587.y, x_587.z));
    u_xlat10 = x_589;
    let x_590 : vec4<f32> = u_xlat8;
    let x_593 : vec3<f32> = (vec3<f32>(x_590.x, x_590.z, x_590.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_594 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
    let x_599 : vec4<f32> = u_xlat8;
    let x_601 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_599.x, x_599.y, x_599.z));
    u_xlat8 = x_601;
    u_xlat2.w = 1.0f;
    let x_603 : vec4<f32> = u_xlat9;
    let x_604 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_603, x_604);
    let x_607 : vec4<f32> = u_xlat10;
    let x_608 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_607, x_608);
    let x_611 : vec4<f32> = u_xlat8;
    let x_612 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_611, x_612);
  } else {
    u_xlat2.w = 1.0f;
    let x_618 : vec4<f32> = x_33.unity_SHAr;
    let x_619 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_618, x_619);
    let x_624 : vec4<f32> = x_33.unity_SHAg;
    let x_625 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_624, x_625);
    let x_630 : vec4<f32> = x_33.unity_SHAb;
    let x_631 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_630, x_631);
  }
  let x_634 : vec4<f32> = u_xlat9;
  let x_637 : vec4<f32> = vs_TEXCOORD5;
  let x_639 : vec3<f32> = (vec3<f32>(x_634.x, x_634.y, x_634.z) + vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_640 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat8;
  let x_645 : vec3<f32> = max(vec3<f32>(x_642.x, x_642.y, x_642.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_646 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_651 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_651);
  let x_653 : bool = u_xlatb47;
  if (x_653) {
    let x_657 : vec3<f32> = u_xlat6;
    let x_658 : vec3<f32> = u_xlat6;
    u_xlat47 = dot(x_657, x_658);
    let x_660 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_660);
    let x_662 : f32 = u_xlat47;
    let x_664 : vec3<f32> = u_xlat6;
    let x_665 : vec3<f32> = (vec3<f32>(x_662, x_662, x_662) * x_664);
    let x_666 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
    let x_668 : vec4<f32> = u_xlat4;
    let x_673 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_675 : vec3<f32> = (-(vec3<f32>(x_668.x, x_668.y, x_668.z)) + vec3<f32>(x_673.x, x_673.y, x_673.z));
    let x_676 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_678 : vec4<f32> = u_xlat10;
    let x_680 : vec4<f32> = u_xlat9;
    let x_682 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) / vec3<f32>(x_680.x, x_680.y, x_680.z));
    let x_683 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
    let x_686 : vec4<f32> = u_xlat4;
    let x_691 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_686.x, x_686.y, x_686.z)) + vec3<f32>(x_691.x, x_691.y, x_691.z));
    let x_694 : vec3<f32> = u_xlat11;
    let x_695 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_694 / vec3<f32>(x_695.x, x_695.y, x_695.z));
    let x_702 : vec4<f32> = u_xlat9;
    let x_705 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_702.x, x_702.y, x_702.z, x_702.x));
    u_xlatb12 = vec3<bool>(x_705.x, x_705.y, x_705.z);
    let x_708 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_708;
    let x_710 : bool = u_xlatb12.x;
    if (x_710) {
      let x_715 : f32 = u_xlat10.x;
      x_711 = x_715;
    } else {
      let x_718 : f32 = u_xlat11.x;
      x_711 = x_718;
    }
    let x_719 : f32 = x_711;
    hlslcc_movcTemp.x = x_719;
    let x_722 : bool = u_xlatb12.y;
    if (x_722) {
      let x_727 : f32 = u_xlat10.y;
      x_723 = x_727;
    } else {
      let x_730 : f32 = u_xlat11.y;
      x_723 = x_730;
    }
    let x_731 : f32 = x_723;
    hlslcc_movcTemp.y = x_731;
    let x_734 : bool = u_xlatb12.z;
    if (x_734) {
      let x_739 : f32 = u_xlat10.z;
      x_735 = x_739;
    } else {
      let x_742 : f32 = u_xlat11.z;
      x_735 = x_742;
    }
    let x_743 : f32 = x_735;
    hlslcc_movcTemp.z = x_743;
    let x_745 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_745;
    let x_747 : f32 = u_xlat10.y;
    let x_749 : f32 = u_xlat10.x;
    u_xlat47 = min(x_747, x_749);
    let x_752 : f32 = u_xlat10.z;
    let x_753 : f32 = u_xlat47;
    u_xlat47 = min(x_752, x_753);
    let x_755 : vec4<f32> = u_xlat4;
    let x_758 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_761 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) + -(vec3<f32>(x_758.x, x_758.y, x_758.z)));
    let x_762 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
    let x_764 : vec4<f32> = u_xlat9;
    let x_766 : f32 = u_xlat47;
    let x_769 : vec4<f32> = u_xlat10;
    let x_771 : vec3<f32> = ((vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(x_766, x_766, x_766)) + vec3<f32>(x_769.x, x_769.y, x_769.z));
    let x_772 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  } else {
    let x_775 : vec3<f32> = u_xlat6;
    let x_776 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  }
  let x_779 : f32 = u_xlat20.x;
  u_xlat47 = ((-(x_779) * 0.699999988f) + 1.700000048f);
  let x_785 : f32 = u_xlat47;
  let x_787 : f32 = u_xlat20.x;
  u_xlat47 = (x_785 * x_787);
  let x_789 : f32 = u_xlat47;
  u_xlat47 = (x_789 * 6.0f);
  let x_800 : vec4<f32> = u_xlat9;
  let x_802 : f32 = u_xlat47;
  let x_803 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_800.x, x_800.y, x_800.z), x_802);
  u_xlat9 = x_803;
  let x_805 : f32 = u_xlat9.w;
  u_xlat48 = (x_805 + -1.0f);
  let x_809 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_810 : f32 = u_xlat48;
  u_xlat48 = ((x_809 * x_810) + 1.0f);
  let x_813 : f32 = u_xlat48;
  u_xlat48 = log2(x_813);
  let x_815 : f32 = u_xlat48;
  let x_817 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_815 * x_817);
  let x_819 : f32 = u_xlat48;
  u_xlat48 = exp2(x_819);
  let x_821 : f32 = u_xlat48;
  let x_823 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_821 * x_823);
  let x_825 : vec4<f32> = u_xlat9;
  let x_827 : f32 = u_xlat48;
  let x_829 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) * vec3<f32>(x_827, x_827, x_827));
  let x_830 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_833 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_833 < 0.999989986f);
  let x_836 : bool = u_xlatb49;
  if (x_836) {
    let x_841 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_841);
    let x_843 : bool = u_xlatb49;
    if (x_843) {
      let x_846 : vec3<f32> = u_xlat6;
      let x_847 : vec3<f32> = u_xlat6;
      u_xlat49 = dot(x_846, x_847);
      let x_849 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_849);
      let x_851 : f32 = u_xlat49;
      let x_853 : vec3<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_851, x_851, x_851) * x_853);
      let x_856 : vec4<f32> = u_xlat4;
      let x_861 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_856.x, x_856.y, x_856.z)) + vec3<f32>(x_861.x, x_861.y, x_861.z));
      let x_864 : vec3<f32> = u_xlat12;
      let x_865 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_864 / x_865);
      let x_868 : vec4<f32> = u_xlat4;
      let x_873 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_868.x, x_868.y, x_868.z)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
      let x_876 : vec3<f32> = u_xlat13;
      let x_877 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_876 / x_877);
      let x_880 : vec3<f32> = u_xlat11;
      let x_882 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_880.x, x_880.y, x_880.z, x_880.x));
      u_xlatb14 = vec3<bool>(x_882.x, x_882.y, x_882.z);
      let x_885 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_885;
      let x_887 : bool = u_xlatb14.x;
      if (x_887) {
        let x_892 : f32 = u_xlat12.x;
        x_888 = x_892;
      } else {
        let x_895 : f32 = u_xlat13.x;
        x_888 = x_895;
      }
      let x_896 : f32 = x_888;
      hlslcc_movcTemp_1.x = x_896;
      let x_899 : bool = u_xlatb14.y;
      if (x_899) {
        let x_904 : f32 = u_xlat12.y;
        x_900 = x_904;
      } else {
        let x_907 : f32 = u_xlat13.y;
        x_900 = x_907;
      }
      let x_908 : f32 = x_900;
      hlslcc_movcTemp_1.y = x_908;
      let x_911 : bool = u_xlatb14.z;
      if (x_911) {
        let x_916 : f32 = u_xlat12.z;
        x_912 = x_916;
      } else {
        let x_919 : f32 = u_xlat13.z;
        x_912 = x_919;
      }
      let x_920 : f32 = x_912;
      hlslcc_movcTemp_1.z = x_920;
      let x_922 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_922;
      let x_924 : f32 = u_xlat12.y;
      let x_926 : f32 = u_xlat12.x;
      u_xlat49 = min(x_924, x_926);
      let x_929 : f32 = u_xlat12.z;
      let x_930 : f32 = u_xlat49;
      u_xlat49 = min(x_929, x_930);
      let x_932 : vec4<f32> = u_xlat4;
      let x_935 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      let x_938 : vec3<f32> = (vec3<f32>(x_932.x, x_932.y, x_932.z) + -(vec3<f32>(x_935.x, x_935.y, x_935.z)));
      let x_939 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
      let x_941 : vec3<f32> = u_xlat11;
      let x_942 : f32 = u_xlat49;
      let x_945 : vec4<f32> = u_xlat4;
      u_xlat6 = ((x_941 * vec3<f32>(x_942, x_942, x_942)) + vec3<f32>(x_945.x, x_945.y, x_945.z));
    }
    let x_952 : vec3<f32> = u_xlat6;
    let x_953 : f32 = u_xlat47;
    let x_954 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_952, x_953);
    u_xlat4 = x_954;
    let x_956 : f32 = u_xlat4.w;
    u_xlat47 = (x_956 + -1.0f);
    let x_960 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_961 : f32 = u_xlat47;
    u_xlat47 = ((x_960 * x_961) + 1.0f);
    let x_964 : f32 = u_xlat47;
    u_xlat47 = log2(x_964);
    let x_966 : f32 = u_xlat47;
    let x_968 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_966 * x_968);
    let x_970 : f32 = u_xlat47;
    u_xlat47 = exp2(x_970);
    let x_972 : f32 = u_xlat47;
    let x_974 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_972 * x_974);
    let x_976 : vec4<f32> = u_xlat4;
    let x_978 : f32 = u_xlat47;
    let x_980 : vec3<f32> = (vec3<f32>(x_976.x, x_976.y, x_976.z) * vec3<f32>(x_978, x_978, x_978));
    let x_981 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
    let x_983 : f32 = u_xlat48;
    let x_985 : vec4<f32> = u_xlat9;
    let x_988 : vec4<f32> = u_xlat4;
    u_xlat6 = ((vec3<f32>(x_983, x_983, x_983) * vec3<f32>(x_985.x, x_985.y, x_985.z)) + -(vec3<f32>(x_988.x, x_988.y, x_988.z)));
    let x_993 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_995 : vec3<f32> = u_xlat6;
    let x_997 : vec4<f32> = u_xlat4;
    let x_999 : vec3<f32> = ((vec3<f32>(x_993.w, x_993.w, x_993.w) * x_995) + vec3<f32>(x_997.x, x_997.y, x_997.z));
    let x_1000 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  }
  let x_1002 : vec4<f32> = u_xlat5;
  let x_1004 : vec4<f32> = u_xlat10;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1002.x, x_1002.x, x_1002.x) * vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = vs_TEXCOORD1;
  let x_1012 : f32 = u_xlat46;
  let x_1016 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6 = ((-(vec3<f32>(x_1009.x, x_1009.y, x_1009.z)) * vec3<f32>(x_1012, x_1012, x_1012)) + vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : vec3<f32> = u_xlat6;
  let x_1020 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(x_1019, x_1020);
  let x_1022 : f32 = u_xlat46;
  u_xlat46 = max(x_1022, 0.001f);
  let x_1025 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_1025);
  let x_1027 : f32 = u_xlat46;
  let x_1029 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_1027, x_1027, x_1027) * x_1029);
  let x_1031 : vec4<f32> = u_xlat2;
  let x_1033 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.z), -(vec3<f32>(x_1033.x, x_1033.y, x_1033.z)));
  let x_1037 : vec4<f32> = u_xlat2;
  let x_1040 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_1037.x, x_1037.y, x_1037.z), vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1043 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1043, 0.0f, 1.0f);
  let x_1045 : vec4<f32> = u_xlat2;
  let x_1047 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), x_1047);
  let x_1051 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1051, 0.0f, 1.0f);
  let x_1055 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_1057 : vec3<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_1055.x, x_1055.y, x_1055.z), x_1057);
  let x_1061 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1061, 0.0f, 1.0f);
  let x_1066 : f32 = u_xlat17.x;
  let x_1068 : f32 = u_xlat17.x;
  u_xlat32 = (x_1066 * x_1068);
  let x_1070 : f32 = u_xlat32;
  let x_1072 : vec3<f32> = u_xlat20;
  u_xlat32 = dot(vec2<f32>(x_1070, x_1070), vec2<f32>(x_1072.x, x_1072.x));
  let x_1075 : f32 = u_xlat32;
  u_xlat32 = (x_1075 + -0.5f);
  let x_1078 : f32 = u_xlat47;
  u_xlat3.x = (-(x_1078) + 1.0f);
  let x_1084 : f32 = u_xlat3.x;
  let x_1086 : f32 = u_xlat3.x;
  u_xlat18 = (x_1084 * x_1086);
  let x_1088 : f32 = u_xlat18;
  let x_1089 : f32 = u_xlat18;
  u_xlat18 = (x_1088 * x_1089);
  let x_1092 : f32 = u_xlat3.x;
  let x_1093 : f32 = u_xlat18;
  u_xlat3.x = (x_1092 * x_1093);
  let x_1096 : f32 = u_xlat32;
  let x_1098 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1096 * x_1098) + 1.0f);
  let x_1102 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_1102)) + 1.0f);
  let x_1107 : f32 = u_xlat18;
  let x_1108 : f32 = u_xlat18;
  u_xlat33 = (x_1107 * x_1108);
  let x_1110 : f32 = u_xlat33;
  let x_1111 : f32 = u_xlat33;
  u_xlat33 = (x_1110 * x_1111);
  let x_1113 : f32 = u_xlat18;
  let x_1114 : f32 = u_xlat33;
  u_xlat18 = (x_1113 * x_1114);
  let x_1116 : f32 = u_xlat32;
  let x_1117 : f32 = u_xlat18;
  u_xlat32 = ((x_1116 * x_1117) + 1.0f);
  let x_1120 : f32 = u_xlat32;
  let x_1122 : f32 = u_xlat3.x;
  u_xlat32 = (x_1120 * x_1122);
  let x_1124 : f32 = u_xlat47;
  let x_1125 : f32 = u_xlat32;
  u_xlat32 = (x_1124 * x_1125);
  let x_1128 : f32 = u_xlat20.x;
  let x_1130 : f32 = u_xlat20.x;
  u_xlat3.x = (x_1128 * x_1130);
  let x_1134 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1134, 0.002f);
  let x_1139 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1139) + 1.0f);
  let x_1142 : f32 = u_xlat46;
  let x_1144 : f32 = u_xlat33;
  let x_1147 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1142) * x_1144) + x_1147);
  let x_1149 : f32 = u_xlat47;
  let x_1150 : f32 = u_xlat33;
  let x_1153 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1149 * x_1150) + x_1153);
  let x_1155 : f32 = u_xlat46;
  let x_1157 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1155) * x_1157);
  let x_1159 : f32 = u_xlat47;
  let x_1160 : f32 = u_xlat48;
  let x_1162 : f32 = u_xlat46;
  u_xlat46 = ((x_1159 * x_1160) + x_1162);
  let x_1164 : f32 = u_xlat46;
  u_xlat46 = (x_1164 + 0.00001f);
  let x_1167 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1167);
  let x_1170 : f32 = u_xlat3.x;
  let x_1172 : f32 = u_xlat3.x;
  u_xlat33 = (x_1170 * x_1172);
  let x_1175 : f32 = u_xlat2.x;
  let x_1176 : f32 = u_xlat33;
  let x_1179 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1175 * x_1176) + -(x_1179));
  let x_1182 : f32 = u_xlat48;
  let x_1184 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1182 * x_1184) + 1.0f);
  let x_1188 : f32 = u_xlat33;
  u_xlat33 = (x_1188 * 0.318309873f);
  let x_1192 : f32 = u_xlat2.x;
  let x_1194 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1192 * x_1194) + 0.0000001f);
  let x_1199 : f32 = u_xlat33;
  let x_1201 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1199 / x_1201);
  let x_1204 : f32 = u_xlat46;
  let x_1206 : f32 = u_xlat2.x;
  u_xlat46 = (x_1204 * x_1206);
  let x_1208 : f32 = u_xlat47;
  let x_1209 : f32 = u_xlat46;
  u_xlat46 = (x_1208 * x_1209);
  let x_1211 : f32 = u_xlat46;
  u_xlat46 = (x_1211 * 3.141592741f);
  let x_1214 : f32 = u_xlat46;
  u_xlat46 = max(x_1214, 0.0f);
  let x_1217 : f32 = u_xlat3.x;
  let x_1219 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1217 * x_1219) + 1.0f);
  let x_1224 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1224);
  let x_1227 : vec3<f32> = u_xlat0;
  let x_1228 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1227, x_1228);
  let x_1230 : f32 = u_xlat47;
  u_xlatb47 = !((x_1230 == 0.0f));
  let x_1232 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1232);
  let x_1234 : f32 = u_xlat46;
  let x_1235 : f32 = u_xlat47;
  u_xlat46 = (x_1234 * x_1235);
  let x_1237 : f32 = u_xlat45;
  let x_1240 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1237) + x_1240);
  let x_1242 : f32 = u_xlat45;
  u_xlat45 = (x_1242 + 1.0f);
  let x_1244 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1244, 0.0f, 1.0f);
  let x_1246 : f32 = u_xlat32;
  let x_1248 : vec3<f32> = u_xlat7;
  let x_1249 : vec3<f32> = (vec3<f32>(x_1246, x_1246, x_1246) * x_1248);
  let x_1250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1249.x, x_1250.y, x_1249.y, x_1249.z);
  let x_1252 : vec4<f32> = u_xlat8;
  let x_1254 : vec4<f32> = u_xlat5;
  let x_1257 : vec4<f32> = u_xlat3;
  let x_1259 : vec3<f32> = ((vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(x_1254.x, x_1254.x, x_1254.x)) + vec3<f32>(x_1257.x, x_1257.z, x_1257.w));
  let x_1260 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1259.x, x_1260.y, x_1259.y, x_1259.z);
  let x_1262 : vec3<f32> = u_xlat7;
  let x_1263 : f32 = u_xlat46;
  let x_1265 : vec3<f32> = (x_1262 * vec3<f32>(x_1263, x_1263, x_1263));
  let x_1266 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  let x_1269 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1269) + 1.0f);
  let x_1272 : f32 = u_xlat46;
  let x_1273 : f32 = u_xlat46;
  u_xlat17.x = (x_1272 * x_1273);
  let x_1277 : f32 = u_xlat17.x;
  let x_1279 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1277 * x_1279);
  let x_1282 : f32 = u_xlat46;
  let x_1284 : f32 = u_xlat17.x;
  u_xlat46 = (x_1282 * x_1284);
  let x_1286 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1286) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1290 : vec3<f32> = u_xlat17;
  let x_1291 : f32 = u_xlat46;
  let x_1294 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1290 * vec3<f32>(x_1291, x_1291, x_1291)) + x_1294);
  let x_1296 : vec3<f32> = u_xlat17;
  let x_1297 : vec4<f32> = u_xlat5;
  u_xlat17 = (x_1296 * vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1300 : vec3<f32> = u_xlat1;
  let x_1301 : vec4<f32> = u_xlat3;
  let x_1304 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1300 * vec3<f32>(x_1301.x, x_1301.z, x_1301.w)) + x_1304);
  let x_1306 : vec4<f32> = u_xlat4;
  let x_1308 : vec4<f32> = u_xlat2;
  let x_1310 : vec3<f32> = (vec3<f32>(x_1306.x, x_1306.y, x_1306.z) * vec3<f32>(x_1308.x, x_1308.x, x_1308.x));
  let x_1311 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
  let x_1313 : vec3<f32> = u_xlat0;
  let x_1315 : f32 = u_xlat45;
  let x_1317 : vec3<f32> = (-(x_1313) + vec3<f32>(x_1315, x_1315, x_1315));
  let x_1318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1317.z);
  let x_1320 : f32 = u_xlat18;
  let x_1322 : vec4<f32> = u_xlat3;
  let x_1325 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1320, x_1320, x_1320) * vec3<f32>(x_1322.x, x_1322.z, x_1322.w)) + x_1325);
  let x_1327 : vec4<f32> = u_xlat2;
  let x_1329 : vec3<f32> = u_xlat0;
  let x_1331 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1327.x, x_1327.y, x_1327.z) * x_1329) + x_1331);
  let x_1334 : f32 = vs_TEXCOORD1.w;
  let x_1336 : f32 = x_33.x_ProjectionParams.y;
  u_xlat45 = (x_1334 / x_1336);
  let x_1338 : f32 = u_xlat45;
  u_xlat45 = (-(x_1338) + 1.0f);
  let x_1341 : f32 = u_xlat45;
  let x_1343 : f32 = x_33.x_ProjectionParams.z;
  u_xlat45 = (x_1341 * x_1343);
  let x_1345 : f32 = u_xlat45;
  u_xlat45 = max(x_1345, 0.0f);
  let x_1347 : f32 = u_xlat45;
  let x_1350 : f32 = x_33.unity_FogParams.x;
  u_xlat45 = (x_1347 * x_1350);
  let x_1352 : f32 = u_xlat45;
  let x_1353 : f32 = u_xlat45;
  u_xlat45 = (x_1352 * -(x_1353));
  let x_1356 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1356);
  let x_1358 : vec3<f32> = u_xlat0;
  let x_1361 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_1358 + -(vec3<f32>(x_1361.x, x_1361.y, x_1361.z)));
  let x_1367 : f32 = u_xlat45;
  let x_1369 : vec3<f32> = u_xlat0;
  let x_1372 : vec4<f32> = x_33.unity_FogColor;
  let x_1374 : vec3<f32> = ((vec3<f32>(x_1367, x_1367, x_1367) * x_1369) + vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

