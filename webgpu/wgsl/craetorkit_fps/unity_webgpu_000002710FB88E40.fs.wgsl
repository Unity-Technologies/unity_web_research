struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  x_GlossMapScale : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var x_349 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlatb27 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat28 : f32;
  var u_xlat8 : f32;
  var u_xlat18 : f32;
  var u_xlat11 : f32;
  var u_xlat19 : f32;
  var u_xlatb25 : bool;
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
  u_xlat25 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat25;
  u_xlat25 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat25;
  u_xlat25 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat10 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat10;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat25;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat25;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat25 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat25;
  let x_193 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_191, x_191, x_191) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_199 : vec3<f32> = vs_TEXCOORD5;
  let x_204 : vec4<f32> = x_46.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_199.y, x_199.y, x_199.y) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_209 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_211 : vec3<f32> = vs_TEXCOORD5;
  let x_214 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_211.x, x_211.x, x_211.x)) + x_214);
  let x_218 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_220 : vec3<f32> = vs_TEXCOORD5;
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.z, x_220.z, x_220.z)) + x_223);
  let x_225 : vec3<f32> = u_xlat4;
  let x_228 : vec4<f32> = x_46.unity_WorldToLight[3i];
  u_xlat4 = (x_225 + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_232 : vec3<f32> = vs_TEXCOORD5;
  let x_236 : vec3<f32> = x_46.x_WorldSpaceCameraPos;
  let x_237 : vec3<f32> = (-(x_232) + x_236);
  let x_238 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_243 : f32 = x_46.unity_MatrixV[0i].z;
  u_xlat6.x = x_243;
  let x_246 : f32 = x_46.unity_MatrixV[1i].z;
  u_xlat6.y = x_246;
  let x_250 : f32 = x_46.unity_MatrixV[2i].z;
  u_xlat6.z = x_250;
  let x_252 : vec4<f32> = u_xlat5;
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat25 = dot(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec3<f32> = vs_TEXCOORD5;
  let x_260 : vec4<f32> = x_46.unity_ShadowFadeCenterAndType;
  let x_263 : vec3<f32> = (x_257 + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec4<f32> = u_xlat5;
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : f32 = u_xlat26;
  u_xlat26 = sqrt(x_272);
  let x_274 : f32 = u_xlat25;
  let x_276 : f32 = u_xlat26;
  u_xlat26 = (-(x_274) + x_276);
  let x_280 : f32 = x_46.unity_ShadowFadeCenterAndType.w;
  let x_281 : f32 = u_xlat26;
  let x_283 : f32 = u_xlat25;
  u_xlat25 = ((x_280 * x_281) + x_283);
  let x_285 : f32 = u_xlat25;
  let x_288 : f32 = x_46.x_LightShadowData.z;
  let x_291 : f32 = x_46.x_LightShadowData.w;
  u_xlat25 = ((x_285 * x_288) + x_291);
  let x_293 : f32 = u_xlat25;
  u_xlat25 = clamp(x_293, 0.0f, 1.0f);
  let x_301 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb26 = (x_301 == 1.0f);
  let x_303 : bool = u_xlatb26;
  if (x_303) {
    let x_307 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb26 = (x_307 == 1.0f);
    let x_309 : vec3<f32> = vs_TEXCOORD5;
    let x_313 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_315 : vec3<f32> = (vec3<f32>(x_309.y, x_309.y, x_309.y) * vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_319 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_321 : vec3<f32> = vs_TEXCOORD5;
    let x_324 : vec4<f32> = u_xlat5;
    let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.x, x_321.x)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
    let x_327 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_330 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_332 : vec3<f32> = vs_TEXCOORD5;
    let x_335 : vec4<f32> = u_xlat5;
    let x_337 : vec3<f32> = ((vec3<f32>(x_330.x, x_330.y, x_330.z) * vec3<f32>(x_332.z, x_332.z, x_332.z)) + vec3<f32>(x_335.x, x_335.y, x_335.z));
    let x_338 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_340 : vec4<f32> = u_xlat5;
    let x_343 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_345 : vec3<f32> = (vec3<f32>(x_340.x, x_340.y, x_340.z) + vec3<f32>(x_343.x, x_343.y, x_343.z));
    let x_346 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
    let x_348 : bool = u_xlatb26;
    if (x_348) {
      let x_352 : vec4<f32> = u_xlat5;
      x_349 = vec3<f32>(x_352.x, x_352.y, x_352.z);
    } else {
      let x_355 : vec3<f32> = vs_TEXCOORD5;
      x_349 = x_355;
    }
    let x_356 : vec3<f32> = x_349;
    let x_357 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
    let x_359 : vec4<f32> = u_xlat5;
    let x_363 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_365 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) + -(x_363));
    let x_366 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
    let x_368 : vec4<f32> = u_xlat5;
    let x_372 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_373 : vec3<f32> = (vec3<f32>(x_368.x, x_368.y, x_368.z) * x_372);
    let x_374 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_374.x, x_373.x, x_373.y, x_373.z);
    let x_377 : f32 = u_xlat5.y;
    u_xlat26 = ((x_377 * 0.25f) + 0.75f);
    let x_384 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_384 * 0.5f) + 0.75f);
    let x_388 : f32 = u_xlat26;
    let x_389 : f32 = u_xlat27;
    u_xlat5.x = max(x_388, x_389);
    let x_400 : vec4<f32> = u_xlat5;
    let x_402 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_400.x, x_400.z, x_400.w));
    u_xlat5 = x_402;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_408 : vec4<f32> = u_xlat5;
  let x_410 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat26 = dot(x_408, x_410);
  let x_412 : f32 = u_xlat26;
  u_xlat26 = clamp(x_412, 0.0f, 1.0f);
  let x_415 : f32 = u_xlat25;
  u_xlatb27 = (x_415 < 0.99000001f);
  let x_418 : bool = u_xlatb27;
  if (x_418) {
    let x_421 : vec3<f32> = vs_TEXCOORD5;
    let x_423 : vec4<f32> = x_46.x_LightPositionRange;
    let x_426 : vec3<f32> = (x_421 + -(vec3<f32>(x_423.x, x_423.y, x_423.z)));
    let x_427 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
    let x_430 : f32 = u_xlat5.y;
    let x_433 : f32 = u_xlat5.x;
    u_xlat27 = max(abs(x_430), abs(x_433));
    let x_437 : f32 = u_xlat5.z;
    let x_439 : f32 = u_xlat27;
    u_xlat27 = max(abs(x_437), x_439);
    let x_441 : f32 = u_xlat27;
    let x_443 : f32 = x_46.x_LightProjectionParams.z;
    u_xlat27 = (x_441 + -(x_443));
    let x_446 : f32 = u_xlat27;
    u_xlat27 = max(x_446, 0.00001f);
    let x_449 : f32 = u_xlat27;
    let x_451 : f32 = x_46.x_LightProjectionParams.w;
    u_xlat27 = (x_449 * x_451);
    let x_454 : f32 = x_46.x_LightProjectionParams.y;
    let x_455 : f32 = u_xlat27;
    u_xlat27 = (x_454 / x_455);
    let x_457 : f32 = u_xlat27;
    let x_459 : f32 = x_46.x_LightProjectionParams.x;
    u_xlat27 = (x_457 + -(x_459));
    let x_462 : f32 = u_xlat27;
    u_xlat27 = (-(x_462) + 1.0f);
    let x_465 : vec4<f32> = u_xlat5;
    let x_469 : vec3<f32> = (vec3<f32>(x_465.x, x_465.y, x_465.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_470 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
    let x_473 : vec4<f32> = u_xlat6;
    let x_474 : vec3<f32> = vec3<f32>(x_473.x, x_473.y, x_473.z);
    let x_475 : f32 = u_xlat27;
    txVec0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475);
    let x_488 : vec4<f32> = txVec0;
    let x_490 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_488.xyz, x_488.w);
    u_xlat6.x = x_490;
    let x_493 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_493.x, x_493.y, x_493.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_499 : vec3<f32> = u_xlat7;
    let x_500 : f32 = u_xlat27;
    txVec1 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500);
    let x_508 : vec4<f32> = txVec1;
    let x_510 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_508.xyz, x_508.w);
    u_xlat6.y = x_510;
    let x_512 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_512.x, x_512.y, x_512.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_517 : vec3<f32> = u_xlat7;
    let x_518 : f32 = u_xlat27;
    txVec2 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518);
    let x_526 : vec4<f32> = txVec2;
    let x_528 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_526.xyz, x_526.w);
    u_xlat6.z = x_528;
    let x_530 : vec4<f32> = u_xlat5;
    let x_533 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_534 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
    let x_537 : vec4<f32> = u_xlat5;
    let x_538 : vec3<f32> = vec3<f32>(x_537.x, x_537.y, x_537.z);
    let x_539 : f32 = u_xlat27;
    txVec3 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539);
    let x_547 : vec4<f32> = txVec3;
    let x_549 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_547.xyz, x_547.w);
    u_xlat6.w = x_549;
    let x_551 : vec4<f32> = u_xlat6;
    u_xlat27 = dot(x_551, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_556 : f32 = x_46.x_LightShadowData.x;
    u_xlat28 = (-(x_556) + 1.0f);
    let x_559 : f32 = u_xlat27;
    let x_560 : f32 = u_xlat28;
    let x_563 : f32 = x_46.x_LightShadowData.x;
    u_xlat27 = ((x_559 * x_560) + x_563);
  } else {
    u_xlat27 = 1.0f;
  }
  let x_566 : f32 = u_xlat26;
  let x_567 : f32 = u_xlat27;
  u_xlat26 = (x_566 + -(x_567));
  let x_570 : f32 = u_xlat25;
  let x_571 : f32 = u_xlat26;
  let x_573 : f32 = u_xlat27;
  u_xlat25 = ((x_570 * x_571) + x_573);
  let x_575 : vec3<f32> = u_xlat4;
  let x_576 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_575, x_576);
  let x_583 : f32 = u_xlat26;
  let x_585 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_583, x_583));
  u_xlat26 = x_585.x;
  let x_595 : vec3<f32> = u_xlat4;
  let x_596 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_595);
  u_xlat27 = x_596.w;
  let x_598 : f32 = u_xlat26;
  let x_599 : f32 = u_xlat27;
  u_xlat26 = (x_598 * x_599);
  let x_601 : f32 = u_xlat25;
  let x_602 : f32 = u_xlat26;
  u_xlat25 = (x_601 * x_602);
  let x_606 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_606;
  let x_609 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_609;
  let x_612 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_612;
  let x_614 : vec3<f32> = u_xlat4;
  let x_615 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_614, x_615);
  let x_617 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_617);
  let x_619 : f32 = u_xlat26;
  let x_621 : vec3<f32> = u_xlat4;
  let x_622 : vec3<f32> = (vec3<f32>(x_619, x_619, x_619) * x_621);
  let x_623 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : f32 = u_xlat25;
  let x_629 : vec4<f32> = x_46.x_LightColor0;
  let x_631 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_636 : f32 = u_xlat0.y;
  let x_640 : f32 = x_46.x_GlossMapScale;
  u_xlat8 = ((-(x_636) * x_640) + 1.0f);
  let x_643 : vec3<f32> = u_xlat4;
  let x_644 : f32 = u_xlat26;
  let x_647 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_643 * vec3<f32>(x_644, x_644, x_644)) + -(x_647));
  let x_650 : vec3<f32> = u_xlat4;
  let x_651 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_650, x_651);
  let x_653 : f32 = u_xlat25;
  u_xlat25 = max(x_653, 0.001f);
  let x_656 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_656);
  let x_658 : f32 = u_xlat25;
  let x_660 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_658, x_658, x_658) * x_660);
  let x_662 : vec4<f32> = u_xlat2;
  let x_664 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), -(x_664));
  let x_667 : vec4<f32> = u_xlat2;
  let x_669 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_667.x, x_667.y, x_667.z), vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : f32 = u_xlat26;
  u_xlat26 = clamp(x_672, 0.0f, 1.0f);
  let x_674 : vec4<f32> = u_xlat2;
  let x_676 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), x_676);
  let x_680 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_680, 0.0f, 1.0f);
  let x_683 : vec4<f32> = u_xlat5;
  let x_685 : vec3<f32> = u_xlat4;
  u_xlat10.x = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), x_685);
  let x_689 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_689, 0.0f, 1.0f);
  let x_694 : f32 = u_xlat10.x;
  let x_696 : f32 = u_xlat10.x;
  u_xlat18 = (x_694 * x_696);
  let x_698 : f32 = u_xlat18;
  let x_700 : f32 = u_xlat8;
  u_xlat18 = dot(vec2<f32>(x_698, x_698), vec2<f32>(x_700, x_700));
  let x_703 : f32 = u_xlat18;
  u_xlat18 = (x_703 + -0.5f);
  let x_706 : f32 = u_xlat26;
  u_xlat3.x = (-(x_706) + 1.0f);
  let x_712 : f32 = u_xlat3.x;
  let x_714 : f32 = u_xlat3.x;
  u_xlat11 = (x_712 * x_714);
  let x_716 : f32 = u_xlat11;
  let x_717 : f32 = u_xlat11;
  u_xlat11 = (x_716 * x_717);
  let x_720 : f32 = u_xlat3.x;
  let x_721 : f32 = u_xlat11;
  u_xlat3.x = (x_720 * x_721);
  let x_724 : f32 = u_xlat18;
  let x_726 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_724 * x_726) + 1.0f);
  let x_730 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_730)) + 1.0f);
  let x_735 : f32 = u_xlat11;
  let x_736 : f32 = u_xlat11;
  u_xlat19 = (x_735 * x_736);
  let x_738 : f32 = u_xlat19;
  let x_739 : f32 = u_xlat19;
  u_xlat19 = (x_738 * x_739);
  let x_741 : f32 = u_xlat11;
  let x_742 : f32 = u_xlat19;
  u_xlat11 = (x_741 * x_742);
  let x_744 : f32 = u_xlat18;
  let x_745 : f32 = u_xlat11;
  u_xlat18 = ((x_744 * x_745) + 1.0f);
  let x_748 : f32 = u_xlat18;
  let x_750 : f32 = u_xlat3.x;
  u_xlat18 = (x_748 * x_750);
  let x_752 : f32 = u_xlat26;
  let x_753 : f32 = u_xlat18;
  u_xlat18 = (x_752 * x_753);
  let x_755 : f32 = u_xlat8;
  let x_756 : f32 = u_xlat8;
  u_xlat8 = (x_755 * x_756);
  let x_758 : f32 = u_xlat8;
  u_xlat8 = max(x_758, 0.002f);
  let x_761 : f32 = u_xlat8;
  u_xlat3.x = (-(x_761) + 1.0f);
  let x_765 : f32 = u_xlat25;
  let x_768 : f32 = u_xlat3.x;
  let x_770 : f32 = u_xlat8;
  u_xlat11 = ((abs(x_765) * x_768) + x_770);
  let x_772 : f32 = u_xlat26;
  let x_774 : f32 = u_xlat3.x;
  let x_776 : f32 = u_xlat8;
  u_xlat3.x = ((x_772 * x_774) + x_776);
  let x_779 : f32 = u_xlat25;
  let x_782 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_779) * x_782);
  let x_784 : f32 = u_xlat26;
  let x_785 : f32 = u_xlat11;
  let x_787 : f32 = u_xlat25;
  u_xlat25 = ((x_784 * x_785) + x_787);
  let x_789 : f32 = u_xlat25;
  u_xlat25 = (x_789 + 0.00001f);
  let x_791 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_791);
  let x_793 : f32 = u_xlat8;
  let x_794 : f32 = u_xlat8;
  u_xlat8 = (x_793 * x_794);
  let x_797 : f32 = u_xlat2.x;
  let x_798 : f32 = u_xlat8;
  let x_801 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_797 * x_798) + -(x_801));
  let x_806 : f32 = u_xlat3.x;
  let x_808 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_806 * x_808) + 1.0f);
  let x_812 : f32 = u_xlat8;
  u_xlat8 = (x_812 * 0.318309873f);
  let x_816 : f32 = u_xlat2.x;
  let x_818 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_816 * x_818) + 0.0000001f);
  let x_823 : f32 = u_xlat8;
  let x_825 : f32 = u_xlat2.x;
  u_xlat8 = (x_823 / x_825);
  let x_827 : f32 = u_xlat8;
  let x_828 : f32 = u_xlat25;
  u_xlat8 = (x_827 * x_828);
  let x_830 : f32 = u_xlat26;
  let x_831 : f32 = u_xlat8;
  u_xlat8 = (x_830 * x_831);
  let x_833 : f32 = u_xlat8;
  u_xlat8 = (x_833 * 3.141592741f);
  let x_836 : f32 = u_xlat8;
  u_xlat8 = max(x_836, 0.0f);
  let x_838 : vec3<f32> = u_xlat1;
  let x_839 : vec3<f32> = u_xlat1;
  u_xlat25 = dot(x_838, x_839);
  let x_842 : f32 = u_xlat25;
  u_xlatb25 = !((x_842 == 0.0f));
  let x_844 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_844);
  let x_846 : f32 = u_xlat8;
  let x_847 : f32 = u_xlat25;
  u_xlat8 = (x_846 * x_847);
  let x_849 : f32 = u_xlat18;
  let x_851 : vec4<f32> = u_xlat6;
  let x_853 : vec3<f32> = (vec3<f32>(x_849, x_849, x_849) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_853.x, x_854.y, x_853.y, x_853.z);
  let x_856 : vec4<f32> = u_xlat6;
  let x_858 : f32 = u_xlat8;
  u_xlat3 = (vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_858, x_858, x_858));
  let x_862 : f32 = u_xlat10.x;
  u_xlat8 = (-(x_862) + 1.0f);
  let x_865 : f32 = u_xlat8;
  let x_866 : f32 = u_xlat8;
  u_xlat25 = (x_865 * x_866);
  let x_868 : f32 = u_xlat25;
  let x_869 : f32 = u_xlat25;
  u_xlat25 = (x_868 * x_869);
  let x_871 : f32 = u_xlat8;
  let x_872 : f32 = u_xlat25;
  u_xlat8 = (x_871 * x_872);
  let x_874 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_874) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_878 : vec3<f32> = u_xlat4;
  let x_879 : f32 = u_xlat8;
  let x_882 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_878 * vec3<f32>(x_879, x_879, x_879)) + x_882);
  let x_884 : vec3<f32> = u_xlat1;
  let x_885 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_884 * x_885);
  let x_889 : vec4<f32> = u_xlat0;
  let x_891 : vec4<f32> = u_xlat2;
  let x_894 : vec3<f32> = u_xlat1;
  let x_895 : vec3<f32> = ((vec3<f32>(x_889.x, x_889.z, x_889.w) * vec3<f32>(x_891.x, x_891.z, x_891.w)) + x_894);
  let x_896 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
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

