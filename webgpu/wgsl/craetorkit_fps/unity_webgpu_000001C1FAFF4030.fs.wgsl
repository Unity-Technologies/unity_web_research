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
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat47 : f32;
  var u_xlatb47 : bool;
  var u_xlatb48 : bool;
  var x_261 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat50 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb46 : bool;
  var u_xlat8 : vec4<f32>;
  var x_471 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_655 : f32;
  var x_667 : f32;
  var x_679 : f32;
  var u_xlatb50 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_832 : f32;
  var x_844 : f32;
  var x_856 : f32;
  var u_xlat17 : f32;
  var u_xlat16 : f32;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var u_xlatb2 : bool;
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
  u_xlat45 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat45;
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
  let x_83 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (x_81 * x_83);
  let x_91 : vec2<f32> = vs_TEXCOORD3;
  let x_92 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_91);
  let x_93 : vec3<f32> = vec3<f32>(x_92.x, x_92.y, x_92.w);
  let x_94 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : f32 = u_xlat5.z;
  let x_99 : f32 = u_xlat5.x;
  u_xlat5.x = (x_97 * x_99);
  let x_102 : vec4<f32> = u_xlat5;
  let x_109 : vec2<f32> = ((vec2<f32>(x_102.x, x_102.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_110 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat5;
  let x_117 : f32 = x_37.x_BumpScale;
  let x_119 : vec2<f32> = (vec2<f32>(x_112.x, x_112.y) * vec2<f32>(x_117, x_117));
  let x_120 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_123 : vec4<f32> = u_xlat5;
  let x_125 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec2<f32>(x_123.x, x_123.y), vec2<f32>(x_125.x, x_125.y));
  let x_128 : f32 = u_xlat46;
  u_xlat46 = min(x_128, 1.0f);
  let x_131 : f32 = u_xlat46;
  u_xlat46 = (-(x_131) + 1.0f);
  let x_134 : f32 = u_xlat46;
  u_xlat5.z = sqrt(x_134);
  let x_137 : vec4<f32> = u_xlat5;
  let x_139 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_142);
  let x_144 : f32 = u_xlat46;
  let x_146 : vec4<f32> = u_xlat5;
  let x_148 : vec3<f32> = (vec3<f32>(x_144, x_144, x_144) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_154 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_154;
  let x_158 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_158;
  let x_162 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_162;
  let x_164 : vec3<f32> = u_xlat1;
  let x_165 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(x_164, vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec3<f32> = u_xlat0;
  let x_171 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec4<f32> = u_xlat6;
  let x_180 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : f32 = u_xlat47;
  u_xlat47 = sqrt(x_183);
  let x_185 : f32 = u_xlat46;
  let x_187 : f32 = u_xlat47;
  u_xlat47 = (-(x_185) + x_187);
  let x_190 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_191 : f32 = u_xlat47;
  let x_193 : f32 = u_xlat46;
  u_xlat46 = ((x_190 * x_191) + x_193);
  let x_195 : f32 = u_xlat46;
  let x_198 : f32 = x_37.x_LightShadowData.z;
  let x_201 : f32 = x_37.x_LightShadowData.w;
  u_xlat46 = ((x_195 * x_198) + x_201);
  let x_203 : f32 = u_xlat46;
  u_xlat46 = clamp(x_203, 0.0f, 1.0f);
  let x_211 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb47 = (x_211 == 1.0f);
  let x_213 : bool = u_xlatb47;
  if (x_213) {
    let x_218 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_218 == 1.0f);
    let x_220 : vec4<f32> = vs_TEXCOORD1;
    let x_224 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_226 : vec3<f32> = (vec3<f32>(x_220.w, x_220.w, x_220.w) * vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_230 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_232 : vec4<f32> = vs_TEXCOORD0;
    let x_235 : vec4<f32> = u_xlat6;
    let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.w, x_232.w, x_232.w)) + vec3<f32>(x_235.x, x_235.y, x_235.z));
    let x_238 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_241 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_243 : vec4<f32> = vs_TEXCOORD2;
    let x_246 : vec4<f32> = u_xlat6;
    let x_248 : vec3<f32> = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(x_243.w, x_243.w, x_243.w)) + vec3<f32>(x_246.x, x_246.y, x_246.z));
    let x_249 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
    let x_251 : vec4<f32> = u_xlat6;
    let x_255 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_257 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_260 : bool = u_xlatb48;
    if (x_260) {
      let x_264 : vec4<f32> = u_xlat6;
      x_261 = vec3<f32>(x_264.x, x_264.y, x_264.z);
    } else {
      let x_267 : vec3<f32> = u_xlat0;
      x_261 = x_267;
    }
    let x_268 : vec3<f32> = x_261;
    let x_269 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat6;
    let x_275 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + -(x_275));
    let x_278 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat6;
    let x_284 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * x_284);
    let x_286 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_285.z);
    let x_290 : f32 = u_xlat6.y;
    u_xlat48 = ((x_290 * 0.25f) + 0.75f);
    let x_297 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat50 = ((x_297 * 0.5f) + 0.75f);
    let x_301 : f32 = u_xlat48;
    let x_302 : f32 = u_xlat50;
    u_xlat6.x = max(x_301, x_302);
    let x_313 : vec4<f32> = u_xlat6;
    let x_315 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_313.x, x_313.z, x_313.w));
    u_xlat6 = x_315;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_321 : vec4<f32> = u_xlat6;
  let x_324 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat48 = dot(x_321, x_324);
  let x_326 : f32 = u_xlat48;
  u_xlat48 = clamp(x_326, 0.0f, 1.0f);
  let x_329 : vec4<f32> = vs_TEXCOORD7;
  let x_331 : vec4<f32> = vs_TEXCOORD7;
  let x_333 : vec2<f32> = (vec2<f32>(x_329.x, x_329.y) / vec2<f32>(x_331.w, x_331.w));
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_333.y, x_334.z, x_334.w);
  let x_341 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_341.x, x_341.y));
  u_xlat50 = x_343.x;
  let x_345 : f32 = u_xlat48;
  let x_346 : f32 = u_xlat50;
  u_xlat48 = (x_345 + -(x_346));
  let x_349 : f32 = u_xlat46;
  let x_350 : f32 = u_xlat48;
  let x_352 : f32 = u_xlat50;
  u_xlat46 = ((x_349 * x_350) + x_352);
  let x_354 : vec4<f32> = vs_TEXCOORD0;
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_354.x, x_354.y, x_354.z), vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_360 : vec4<f32> = vs_TEXCOORD1;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_366 : vec4<f32> = vs_TEXCOORD2;
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_366.x, x_366.y, x_366.z), vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_372 : vec4<f32> = u_xlat6;
  let x_374 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_377);
  let x_379 : f32 = u_xlat48;
  let x_381 : vec4<f32> = u_xlat6;
  let x_383 : vec3<f32> = (vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_388 : f32 = x_37.x_Glossiness;
  u_xlat48 = (-(x_388) + 1.0f);
  let x_391 : vec4<f32> = u_xlat2;
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(-(vec3<f32>(x_391.x, x_391.y, x_391.z)), vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_399 : f32 = u_xlat6.x;
  let x_401 : f32 = u_xlat6.x;
  u_xlat6.x = (x_399 + x_401);
  let x_404 : vec4<f32> = u_xlat5;
  let x_406 : vec4<f32> = u_xlat6;
  let x_410 : vec4<f32> = u_xlat2;
  let x_413 : vec3<f32> = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * -(vec3<f32>(x_406.x, x_406.x, x_406.x))) + -(vec3<f32>(x_410.x, x_410.y, x_410.z)));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : f32 = u_xlat46;
  let x_421 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_417, x_417, x_417) * vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : bool = u_xlatb47;
  if (x_424) {
    let x_429 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_429 == 1.0f);
    let x_432 : vec4<f32> = vs_TEXCOORD1;
    let x_435 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_437 : vec3<f32> = (vec3<f32>(x_432.w, x_432.w, x_432.w) * vec3<f32>(x_435.x, x_435.y, x_435.z));
    let x_438 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
    let x_441 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_443 : vec4<f32> = vs_TEXCOORD0;
    let x_446 : vec4<f32> = u_xlat8;
    let x_448 : vec3<f32> = ((vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(x_443.w, x_443.w, x_443.w)) + vec3<f32>(x_446.x, x_446.y, x_446.z));
    let x_449 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_452 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_454 : vec4<f32> = vs_TEXCOORD2;
    let x_457 : vec4<f32> = u_xlat8;
    let x_459 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_454.w, x_454.w, x_454.w)) + vec3<f32>(x_457.x, x_457.y, x_457.z));
    let x_460 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : vec4<f32> = u_xlat8;
    let x_465 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_467 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + vec3<f32>(x_465.x, x_465.y, x_465.z));
    let x_468 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
    let x_470 : bool = u_xlatb46;
    if (x_470) {
      let x_474 : vec4<f32> = u_xlat8;
      x_471 = vec3<f32>(x_474.x, x_474.y, x_474.z);
    } else {
      let x_477 : vec3<f32> = u_xlat0;
      x_471 = x_477;
    }
    let x_478 : vec3<f32> = x_471;
    let x_479 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
    let x_481 : vec4<f32> = u_xlat8;
    let x_484 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_486 : vec3<f32> = (vec3<f32>(x_481.x, x_481.y, x_481.z) + -(x_484));
    let x_487 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
    let x_489 : vec4<f32> = u_xlat8;
    let x_492 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * x_492);
    let x_494 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_494.x, x_493.x, x_493.y, x_493.z);
    let x_497 : f32 = u_xlat8.y;
    u_xlat46 = (x_497 * 0.25f);
    let x_500 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat47 = (x_500 * 0.5f);
    let x_504 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat51 = ((-(x_504) * 0.5f) + 0.25f);
    let x_508 : f32 = u_xlat46;
    let x_509 : f32 = u_xlat47;
    u_xlat46 = max(x_508, x_509);
    let x_511 : f32 = u_xlat51;
    let x_512 : f32 = u_xlat46;
    u_xlat8.x = min(x_511, x_512);
    let x_519 : vec4<f32> = u_xlat8;
    let x_521 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_519.x, x_519.z, x_519.w));
    u_xlat9 = x_521;
    let x_523 : vec4<f32> = u_xlat8;
    let x_526 : vec3<f32> = (vec3<f32>(x_523.x, x_523.z, x_523.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_527 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
    let x_532 : vec4<f32> = u_xlat10;
    let x_534 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_532.x, x_532.y, x_532.z));
    u_xlat10 = x_534;
    let x_535 : vec4<f32> = u_xlat8;
    let x_538 : vec3<f32> = (vec3<f32>(x_535.x, x_535.z, x_535.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_539 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
    let x_544 : vec4<f32> = u_xlat8;
    let x_546 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_544.x, x_544.y, x_544.z));
    u_xlat8 = x_546;
    u_xlat5.w = 1.0f;
    let x_548 : vec4<f32> = u_xlat9;
    let x_549 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_548, x_549);
    let x_552 : vec4<f32> = u_xlat10;
    let x_553 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_552, x_553);
    let x_556 : vec4<f32> = u_xlat8;
    let x_557 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_556, x_557);
  } else {
    u_xlat5.w = 1.0f;
    let x_563 : vec4<f32> = x_37.unity_SHAr;
    let x_564 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_563, x_564);
    let x_569 : vec4<f32> = x_37.unity_SHAg;
    let x_570 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_569, x_570);
    let x_575 : vec4<f32> = x_37.unity_SHAb;
    let x_576 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_575, x_576);
  }
  let x_579 : vec4<f32> = u_xlat9;
  let x_583 : vec3<f32> = vs_TEXCOORD5;
  let x_584 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + x_583);
  let x_585 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat8;
  let x_590 : vec3<f32> = max(vec3<f32>(x_587.x, x_587.y, x_587.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_591 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_595 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb46 = (0.0f < x_595);
  let x_597 : bool = u_xlatb46;
  if (x_597) {
    let x_600 : vec4<f32> = u_xlat6;
    let x_602 : vec4<f32> = u_xlat6;
    u_xlat46 = dot(vec3<f32>(x_600.x, x_600.y, x_600.z), vec3<f32>(x_602.x, x_602.y, x_602.z));
    let x_605 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_605);
    let x_607 : f32 = u_xlat46;
    let x_609 : vec4<f32> = u_xlat6;
    let x_611 : vec3<f32> = (vec3<f32>(x_607, x_607, x_607) * vec3<f32>(x_609.x, x_609.y, x_609.z));
    let x_612 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
    let x_614 : vec3<f32> = u_xlat0;
    let x_618 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_620 : vec3<f32> = (-(x_614) + vec3<f32>(x_618.x, x_618.y, x_618.z));
    let x_621 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
    let x_623 : vec4<f32> = u_xlat10;
    let x_625 : vec4<f32> = u_xlat9;
    let x_627 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) / vec3<f32>(x_625.x, x_625.y, x_625.z));
    let x_628 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
    let x_631 : vec3<f32> = u_xlat0;
    let x_635 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_631) + vec3<f32>(x_635.x, x_635.y, x_635.z));
    let x_638 : vec3<f32> = u_xlat11;
    let x_639 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_638 / vec3<f32>(x_639.x, x_639.y, x_639.z));
    let x_646 : vec4<f32> = u_xlat9;
    let x_649 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_646.x, x_646.y, x_646.z, x_646.x));
    u_xlatb12 = vec3<bool>(x_649.x, x_649.y, x_649.z);
    let x_652 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_652;
    let x_654 : bool = u_xlatb12.x;
    if (x_654) {
      let x_659 : f32 = u_xlat10.x;
      x_655 = x_659;
    } else {
      let x_662 : f32 = u_xlat11.x;
      x_655 = x_662;
    }
    let x_663 : f32 = x_655;
    hlslcc_movcTemp.x = x_663;
    let x_666 : bool = u_xlatb12.y;
    if (x_666) {
      let x_671 : f32 = u_xlat10.y;
      x_667 = x_671;
    } else {
      let x_674 : f32 = u_xlat11.y;
      x_667 = x_674;
    }
    let x_675 : f32 = x_667;
    hlslcc_movcTemp.y = x_675;
    let x_678 : bool = u_xlatb12.z;
    if (x_678) {
      let x_683 : f32 = u_xlat10.z;
      x_679 = x_683;
    } else {
      let x_686 : f32 = u_xlat11.z;
      x_679 = x_686;
    }
    let x_687 : f32 = x_679;
    hlslcc_movcTemp.z = x_687;
    let x_689 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_689;
    let x_691 : f32 = u_xlat10.y;
    let x_693 : f32 = u_xlat10.x;
    u_xlat46 = min(x_691, x_693);
    let x_696 : f32 = u_xlat10.z;
    let x_697 : f32 = u_xlat46;
    u_xlat46 = min(x_696, x_697);
    let x_699 : vec3<f32> = u_xlat0;
    let x_701 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_704 : vec3<f32> = (x_699 + -(vec3<f32>(x_701.x, x_701.y, x_701.z)));
    let x_705 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
    let x_707 : vec4<f32> = u_xlat9;
    let x_709 : f32 = u_xlat46;
    let x_712 : vec4<f32> = u_xlat10;
    let x_714 : vec3<f32> = ((vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(x_709, x_709, x_709)) + vec3<f32>(x_712.x, x_712.y, x_712.z));
    let x_715 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  } else {
    let x_718 : vec4<f32> = u_xlat6;
    let x_719 : vec3<f32> = vec3<f32>(x_718.x, x_718.y, x_718.z);
    let x_720 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  }
  let x_722 : f32 = u_xlat48;
  u_xlat46 = ((-(x_722) * 0.699999988f) + 1.700000048f);
  let x_728 : f32 = u_xlat46;
  let x_729 : f32 = u_xlat48;
  u_xlat46 = (x_728 * x_729);
  let x_731 : f32 = u_xlat46;
  u_xlat46 = (x_731 * 6.0f);
  let x_742 : vec4<f32> = u_xlat9;
  let x_744 : f32 = u_xlat46;
  let x_745 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_742.x, x_742.y, x_742.z), x_744);
  u_xlat9 = x_745;
  let x_747 : f32 = u_xlat9.w;
  u_xlat47 = (x_747 + -1.0f);
  let x_751 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_752 : f32 = u_xlat47;
  u_xlat47 = ((x_751 * x_752) + 1.0f);
  let x_755 : f32 = u_xlat47;
  u_xlat47 = log2(x_755);
  let x_757 : f32 = u_xlat47;
  let x_759 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_757 * x_759);
  let x_761 : f32 = u_xlat47;
  u_xlat47 = exp2(x_761);
  let x_763 : f32 = u_xlat47;
  let x_765 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_763 * x_765);
  let x_767 : vec4<f32> = u_xlat9;
  let x_769 : f32 = u_xlat47;
  let x_771 : vec3<f32> = (vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_769, x_769, x_769));
  let x_772 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_776 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb50 = (x_776 < 0.999989986f);
  let x_779 : bool = u_xlatb50;
  if (x_779) {
    let x_784 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb50 = (0.0f < x_784);
    let x_786 : bool = u_xlatb50;
    if (x_786) {
      let x_789 : vec4<f32> = u_xlat6;
      let x_791 : vec4<f32> = u_xlat6;
      u_xlat50 = dot(vec3<f32>(x_789.x, x_789.y, x_789.z), vec3<f32>(x_791.x, x_791.y, x_791.z));
      let x_794 : f32 = u_xlat50;
      u_xlat50 = inverseSqrt(x_794);
      let x_796 : f32 = u_xlat50;
      let x_798 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_796, x_796, x_796) * vec3<f32>(x_798.x, x_798.y, x_798.z));
      let x_802 : vec3<f32> = u_xlat0;
      let x_806 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_802) + vec3<f32>(x_806.x, x_806.y, x_806.z));
      let x_809 : vec3<f32> = u_xlat12;
      let x_810 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_809 / x_810);
      let x_813 : vec3<f32> = u_xlat0;
      let x_817 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_813) + vec3<f32>(x_817.x, x_817.y, x_817.z));
      let x_820 : vec3<f32> = u_xlat13;
      let x_821 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_820 / x_821);
      let x_824 : vec3<f32> = u_xlat11;
      let x_826 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_824.x, x_824.y, x_824.z, x_824.x));
      u_xlatb14 = vec3<bool>(x_826.x, x_826.y, x_826.z);
      let x_829 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_829;
      let x_831 : bool = u_xlatb14.x;
      if (x_831) {
        let x_836 : f32 = u_xlat12.x;
        x_832 = x_836;
      } else {
        let x_839 : f32 = u_xlat13.x;
        x_832 = x_839;
      }
      let x_840 : f32 = x_832;
      hlslcc_movcTemp_1.x = x_840;
      let x_843 : bool = u_xlatb14.y;
      if (x_843) {
        let x_848 : f32 = u_xlat12.y;
        x_844 = x_848;
      } else {
        let x_851 : f32 = u_xlat13.y;
        x_844 = x_851;
      }
      let x_852 : f32 = x_844;
      hlslcc_movcTemp_1.y = x_852;
      let x_855 : bool = u_xlatb14.z;
      if (x_855) {
        let x_860 : f32 = u_xlat12.z;
        x_856 = x_860;
      } else {
        let x_863 : f32 = u_xlat13.z;
        x_856 = x_863;
      }
      let x_864 : f32 = x_856;
      hlslcc_movcTemp_1.z = x_864;
      let x_866 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_866;
      let x_868 : f32 = u_xlat12.y;
      let x_870 : f32 = u_xlat12.x;
      u_xlat50 = min(x_868, x_870);
      let x_873 : f32 = u_xlat12.z;
      let x_874 : f32 = u_xlat50;
      u_xlat50 = min(x_873, x_874);
      let x_876 : vec3<f32> = u_xlat0;
      let x_878 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_876 + -(vec3<f32>(x_878.x, x_878.y, x_878.z)));
      let x_882 : vec3<f32> = u_xlat11;
      let x_883 : f32 = u_xlat50;
      let x_886 : vec3<f32> = u_xlat0;
      let x_887 : vec3<f32> = ((x_882 * vec3<f32>(x_883, x_883, x_883)) + x_886);
      let x_888 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
    }
    let x_894 : vec4<f32> = u_xlat6;
    let x_896 : f32 = u_xlat46;
    let x_897 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_894.x, x_894.y, x_894.z), x_896);
    u_xlat6 = x_897;
    let x_899 : f32 = u_xlat6.w;
    u_xlat0.x = (x_899 + -1.0f);
    let x_904 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_906 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_904 * x_906) + 1.0f);
    let x_911 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_911);
    let x_915 : f32 = u_xlat0.x;
    let x_917 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_915 * x_917);
    let x_921 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_921);
    let x_925 : f32 = u_xlat0.x;
    let x_927 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_925 * x_927);
    let x_930 : vec4<f32> = u_xlat6;
    let x_932 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_930.x, x_930.y, x_930.z) * vec3<f32>(x_932.x, x_932.x, x_932.x));
    let x_935 : f32 = u_xlat47;
    let x_937 : vec4<f32> = u_xlat9;
    let x_940 : vec3<f32> = u_xlat0;
    let x_942 : vec3<f32> = ((vec3<f32>(x_935, x_935, x_935) * vec3<f32>(x_937.x, x_937.y, x_937.z)) + -(x_940));
    let x_943 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
    let x_946 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_948 : vec4<f32> = u_xlat6;
    let x_951 : vec3<f32> = u_xlat0;
    let x_952 : vec3<f32> = ((vec3<f32>(x_946.w, x_946.w, x_946.w) * vec3<f32>(x_948.x, x_948.y, x_948.z)) + x_951);
    let x_953 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  }
  let x_955 : vec4<f32> = u_xlat3;
  let x_957 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_955.x, x_955.y, x_955.z) * vec3<f32>(x_957.x, x_957.y, x_957.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_965 : f32 = x_37.x_Metallic;
  let x_967 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_965, x_965, x_965) * x_967) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_973 : f32 = x_37.x_Metallic;
  u_xlat46 = ((-(x_973) * 0.959999979f) + 0.959999979f);
  let x_978 : f32 = u_xlat46;
  let x_980 : vec4<f32> = u_xlat4;
  let x_982 : vec3<f32> = (vec3<f32>(x_978, x_978, x_978) * vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec3<f32> = u_xlat1;
  let x_986 : f32 = u_xlat45;
  let x_990 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_985 * vec3<f32>(x_986, x_986, x_986)) + vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_993 : vec3<f32> = u_xlat1;
  let x_994 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_993, x_994);
  let x_996 : f32 = u_xlat45;
  u_xlat45 = max(x_996, 0.001f);
  let x_999 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_999);
  let x_1001 : f32 = u_xlat45;
  let x_1003 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1001, x_1001, x_1001) * x_1003);
  let x_1005 : vec4<f32> = u_xlat5;
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(vec3<f32>(x_1005.x, x_1005.y, x_1005.z), vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : vec4<f32> = u_xlat5;
  let x_1013 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1018 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1018, 0.0f, 1.0f);
  let x_1022 : vec4<f32> = u_xlat5;
  let x_1024 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(vec3<f32>(x_1022.x, x_1022.y, x_1022.z), x_1024);
  let x_1026 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1026, 0.0f, 1.0f);
  let x_1029 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1031 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), x_1031);
  let x_1035 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1035, 0.0f, 1.0f);
  let x_1040 : f32 = u_xlat1.x;
  let x_1042 : f32 = u_xlat1.x;
  u_xlat16 = (x_1040 * x_1042);
  let x_1044 : f32 = u_xlat16;
  let x_1046 : f32 = u_xlat48;
  u_xlat16 = dot(vec2<f32>(x_1044, x_1044), vec2<f32>(x_1046, x_1046));
  let x_1049 : f32 = u_xlat16;
  u_xlat16 = (x_1049 + -0.5f);
  let x_1054 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_1054) + 1.0f);
  let x_1058 : f32 = u_xlat31;
  let x_1059 : f32 = u_xlat31;
  u_xlat32 = (x_1058 * x_1059);
  let x_1061 : f32 = u_xlat32;
  let x_1062 : f32 = u_xlat32;
  u_xlat32 = (x_1061 * x_1062);
  let x_1064 : f32 = u_xlat31;
  let x_1065 : f32 = u_xlat32;
  u_xlat31 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat16;
  let x_1068 : f32 = u_xlat31;
  u_xlat31 = ((x_1067 * x_1068) + 1.0f);
  let x_1071 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_1071)) + 1.0f);
  let x_1075 : f32 = u_xlat32;
  let x_1076 : f32 = u_xlat32;
  u_xlat47 = (x_1075 * x_1076);
  let x_1078 : f32 = u_xlat47;
  let x_1079 : f32 = u_xlat47;
  u_xlat47 = (x_1078 * x_1079);
  let x_1081 : f32 = u_xlat32;
  let x_1082 : f32 = u_xlat47;
  u_xlat32 = (x_1081 * x_1082);
  let x_1084 : f32 = u_xlat16;
  let x_1085 : f32 = u_xlat32;
  u_xlat16 = ((x_1084 * x_1085) + 1.0f);
  let x_1088 : f32 = u_xlat16;
  let x_1089 : f32 = u_xlat31;
  u_xlat16 = (x_1088 * x_1089);
  let x_1092 : f32 = u_xlat2.x;
  let x_1093 : f32 = u_xlat16;
  u_xlat16 = (x_1092 * x_1093);
  let x_1095 : f32 = u_xlat48;
  let x_1096 : f32 = u_xlat48;
  u_xlat31 = (x_1095 * x_1096);
  let x_1098 : f32 = u_xlat31;
  u_xlat31 = max(x_1098, 0.002f);
  let x_1101 : f32 = u_xlat31;
  u_xlat47 = (-(x_1101) + 1.0f);
  let x_1104 : f32 = u_xlat45;
  let x_1106 : f32 = u_xlat47;
  let x_1108 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_1104) * x_1106) + x_1108);
  let x_1111 : f32 = u_xlat2.x;
  let x_1112 : f32 = u_xlat47;
  let x_1114 : f32 = u_xlat31;
  u_xlat47 = ((x_1111 * x_1112) + x_1114);
  let x_1116 : f32 = u_xlat45;
  let x_1118 : f32 = u_xlat47;
  u_xlat45 = (abs(x_1116) * x_1118);
  let x_1121 : f32 = u_xlat2.x;
  let x_1122 : f32 = u_xlat48;
  let x_1124 : f32 = u_xlat45;
  u_xlat45 = ((x_1121 * x_1122) + x_1124);
  let x_1126 : f32 = u_xlat45;
  u_xlat45 = (x_1126 + 0.00001f);
  let x_1129 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1129);
  let x_1131 : f32 = u_xlat31;
  let x_1132 : f32 = u_xlat31;
  u_xlat47 = (x_1131 * x_1132);
  let x_1134 : f32 = u_xlat17;
  let x_1135 : f32 = u_xlat47;
  let x_1137 : f32 = u_xlat17;
  u_xlat48 = ((x_1134 * x_1135) + -(x_1137));
  let x_1140 : f32 = u_xlat48;
  let x_1141 : f32 = u_xlat17;
  u_xlat17 = ((x_1140 * x_1141) + 1.0f);
  let x_1144 : f32 = u_xlat47;
  u_xlat47 = (x_1144 * 0.318309873f);
  let x_1147 : f32 = u_xlat17;
  let x_1148 : f32 = u_xlat17;
  u_xlat17 = ((x_1147 * x_1148) + 0.0000001f);
  let x_1152 : f32 = u_xlat47;
  let x_1153 : f32 = u_xlat17;
  u_xlat17 = (x_1152 / x_1153);
  let x_1155 : f32 = u_xlat45;
  let x_1156 : f32 = u_xlat17;
  u_xlat45 = (x_1155 * x_1156);
  let x_1159 : f32 = u_xlat2.x;
  let x_1160 : f32 = u_xlat45;
  u_xlat45 = (x_1159 * x_1160);
  let x_1162 : f32 = u_xlat45;
  u_xlat45 = (x_1162 * 3.141592741f);
  let x_1165 : f32 = u_xlat45;
  u_xlat45 = max(x_1165, 0.0f);
  let x_1167 : f32 = u_xlat31;
  let x_1168 : f32 = u_xlat31;
  u_xlat31 = ((x_1167 * x_1168) + 1.0f);
  let x_1171 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_1171);
  let x_1173 : vec3<f32> = u_xlat0;
  let x_1174 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1173, x_1174);
  let x_1179 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1179 == 0.0f));
  let x_1181 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1181);
  let x_1184 : f32 = u_xlat45;
  let x_1186 : f32 = u_xlat2.x;
  u_xlat45 = (x_1184 * x_1186);
  let x_1188 : f32 = u_xlat46;
  let x_1191 : f32 = x_37.x_Glossiness;
  u_xlat46 = (-(x_1188) + x_1191);
  let x_1193 : f32 = u_xlat46;
  u_xlat46 = (x_1193 + 1.0f);
  let x_1195 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1195, 0.0f, 1.0f);
  let x_1197 : vec3<f32> = u_xlat7;
  let x_1198 : f32 = u_xlat16;
  let x_1201 : vec4<f32> = u_xlat8;
  let x_1203 : vec3<f32> = ((x_1197 * vec3<f32>(x_1198, x_1198, x_1198)) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1203.z);
  let x_1206 : vec3<f32> = u_xlat7;
  let x_1207 : f32 = u_xlat45;
  let x_1209 : vec3<f32> = (x_1206 * vec3<f32>(x_1207, x_1207, x_1207));
  let x_1210 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1213 : f32 = u_xlat1.x;
  u_xlat45 = (-(x_1213) + 1.0f);
  let x_1216 : f32 = u_xlat45;
  let x_1217 : f32 = u_xlat45;
  u_xlat1.x = (x_1216 * x_1217);
  let x_1221 : f32 = u_xlat1.x;
  let x_1223 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1221 * x_1223);
  let x_1226 : f32 = u_xlat45;
  let x_1228 : f32 = u_xlat1.x;
  u_xlat45 = (x_1226 * x_1228);
  let x_1230 : vec3<f32> = u_xlat0;
  let x_1233 : vec3<f32> = (-(x_1230) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1234 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec4<f32> = u_xlat5;
  let x_1238 : f32 = u_xlat45;
  let x_1241 : vec3<f32> = u_xlat0;
  let x_1242 : vec3<f32> = ((vec3<f32>(x_1236.x, x_1236.y, x_1236.z) * vec3<f32>(x_1238, x_1238, x_1238)) + x_1241);
  let x_1243 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1245 : vec4<f32> = u_xlat4;
  let x_1247 : vec4<f32> = u_xlat5;
  let x_1249 : vec3<f32> = (vec3<f32>(x_1245.x, x_1245.y, x_1245.z) * vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec4<f32> = u_xlat3;
  let x_1254 : vec4<f32> = u_xlat2;
  let x_1257 : vec4<f32> = u_xlat4;
  let x_1259 : vec3<f32> = ((vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(x_1254.x, x_1254.y, x_1254.w)) + vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
  let x_1260 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1259.x, x_1259.y, x_1260.z, x_1259.z);
  let x_1262 : vec4<f32> = u_xlat10;
  let x_1264 : f32 = u_xlat31;
  u_xlat1 = (vec3<f32>(x_1262.x, x_1262.y, x_1262.z) * vec3<f32>(x_1264, x_1264, x_1264));
  let x_1267 : vec3<f32> = u_xlat0;
  let x_1269 : f32 = u_xlat46;
  let x_1271 : vec3<f32> = (-(x_1267) + vec3<f32>(x_1269, x_1269, x_1269));
  let x_1272 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
  let x_1274 : f32 = u_xlat32;
  let x_1276 : vec4<f32> = u_xlat3;
  let x_1279 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1274, x_1274, x_1274) * vec3<f32>(x_1276.x, x_1276.y, x_1276.z)) + x_1279);
  let x_1281 : vec3<f32> = u_xlat1;
  let x_1282 : vec3<f32> = u_xlat0;
  let x_1284 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1281 * x_1282) + vec3<f32>(x_1284.x, x_1284.y, x_1284.w));
  let x_1288 : f32 = vs_TEXCOORD6;
  let x_1290 : f32 = x_37.x_ProjectionParams.y;
  u_xlat45 = (x_1288 / x_1290);
  let x_1292 : f32 = u_xlat45;
  u_xlat45 = (-(x_1292) + 1.0f);
  let x_1295 : f32 = u_xlat45;
  let x_1297 : f32 = x_37.x_ProjectionParams.z;
  u_xlat45 = (x_1295 * x_1297);
  let x_1299 : f32 = u_xlat45;
  u_xlat45 = max(x_1299, 0.0f);
  let x_1301 : f32 = u_xlat45;
  let x_1304 : f32 = x_37.unity_FogParams.x;
  u_xlat45 = (x_1301 * x_1304);
  let x_1306 : f32 = u_xlat45;
  let x_1307 : f32 = u_xlat45;
  u_xlat45 = (x_1306 * -(x_1307));
  let x_1310 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1310);
  let x_1312 : vec3<f32> = u_xlat0;
  let x_1315 : vec4<f32> = x_37.unity_FogColor;
  u_xlat0 = (x_1312 + -(vec3<f32>(x_1315.x, x_1315.y, x_1315.z)));
  let x_1321 : f32 = u_xlat45;
  let x_1323 : vec3<f32> = u_xlat0;
  let x_1326 : vec4<f32> = x_37.unity_FogColor;
  let x_1328 : vec3<f32> = ((vec3<f32>(x_1321, x_1321, x_1321) * x_1323) + vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
  let x_1329 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1332 : f32 = u_xlat4.w;
  SV_Target0.w = x_1332;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(7) vs_TEXCOORD7_param : vec4<f32>, @location(6) vs_TEXCOORD5_param : vec3<f32>, @location(5) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

