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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> u_xlat25 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlat27 : f32;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb27 : bool;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat28 : f32;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

var<private> u_xlat8 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlatb25 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_350 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
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
      let x_353 : vec4<f32> = u_xlat5;
      x_350 = vec3<f32>(x_353.x, x_353.y, x_353.z);
    } else {
      let x_356 : vec3<f32> = vs_TEXCOORD5;
      x_350 = x_356;
    }
    let x_357 : vec3<f32> = x_350;
    let x_358 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
    let x_360 : vec4<f32> = u_xlat5;
    let x_364 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_366 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) + -(x_364));
    let x_367 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
    let x_369 : vec4<f32> = u_xlat5;
    let x_373 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_374 : vec3<f32> = (vec3<f32>(x_369.x, x_369.y, x_369.z) * x_373);
    let x_375 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_375.x, x_374.x, x_374.y, x_374.z);
    let x_378 : f32 = u_xlat5.y;
    u_xlat26 = ((x_378 * 0.25f) + 0.75f);
    let x_385 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_385 * 0.5f) + 0.75f);
    let x_389 : f32 = u_xlat26;
    let x_390 : f32 = u_xlat27;
    u_xlat5.x = max(x_389, x_390);
    let x_401 : vec4<f32> = u_xlat5;
    let x_403 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_401.x, x_401.z, x_401.w));
    u_xlat5 = x_403;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_409 : vec4<f32> = u_xlat5;
  let x_411 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat26 = dot(x_409, x_411);
  let x_413 : f32 = u_xlat26;
  u_xlat26 = clamp(x_413, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat25;
  u_xlatb27 = (x_416 < 0.99000001f);
  let x_419 : bool = u_xlatb27;
  if (x_419) {
    let x_422 : vec3<f32> = vs_TEXCOORD5;
    let x_424 : vec4<f32> = x_46.x_LightPositionRange;
    let x_427 : vec3<f32> = (x_422 + -(vec3<f32>(x_424.x, x_424.y, x_424.z)));
    let x_428 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
    let x_431 : f32 = u_xlat5.y;
    let x_434 : f32 = u_xlat5.x;
    u_xlat27 = max(abs(x_431), abs(x_434));
    let x_438 : f32 = u_xlat5.z;
    let x_440 : f32 = u_xlat27;
    u_xlat27 = max(abs(x_438), x_440);
    let x_442 : f32 = u_xlat27;
    let x_444 : f32 = x_46.x_LightProjectionParams.z;
    u_xlat27 = (x_442 + -(x_444));
    let x_447 : f32 = u_xlat27;
    u_xlat27 = max(x_447, 0.00001f);
    let x_450 : f32 = u_xlat27;
    let x_452 : f32 = x_46.x_LightProjectionParams.w;
    u_xlat27 = (x_450 * x_452);
    let x_455 : f32 = x_46.x_LightProjectionParams.y;
    let x_456 : f32 = u_xlat27;
    u_xlat27 = (x_455 / x_456);
    let x_458 : f32 = u_xlat27;
    let x_460 : f32 = x_46.x_LightProjectionParams.x;
    u_xlat27 = (x_458 + -(x_460));
    let x_463 : f32 = u_xlat27;
    u_xlat27 = (-(x_463) + 1.0f);
    let x_466 : vec4<f32> = u_xlat5;
    let x_470 : vec3<f32> = (vec3<f32>(x_466.x, x_466.y, x_466.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_471 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
    let x_475 : vec4<f32> = u_xlat6;
    let x_476 : vec3<f32> = vec3<f32>(x_475.x, x_475.y, x_475.z);
    let x_477 : f32 = u_xlat27;
    txVec0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477);
    let x_490 : vec4<f32> = txVec0;
    let x_492 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_490.xyz, x_490.w);
    u_xlat6.x = x_492;
    let x_495 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_495.x, x_495.y, x_495.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_501 : vec3<f32> = u_xlat7;
    let x_502 : f32 = u_xlat27;
    txVec1 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502);
    let x_510 : vec4<f32> = txVec1;
    let x_512 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_510.xyz, x_510.w);
    u_xlat6.y = x_512;
    let x_514 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_514.x, x_514.y, x_514.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_519 : vec3<f32> = u_xlat7;
    let x_520 : f32 = u_xlat27;
    txVec2 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520);
    let x_528 : vec4<f32> = txVec2;
    let x_530 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_528.xyz, x_528.w);
    u_xlat6.z = x_530;
    let x_532 : vec4<f32> = u_xlat5;
    let x_535 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_536 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
    let x_539 : vec4<f32> = u_xlat5;
    let x_540 : vec3<f32> = vec3<f32>(x_539.x, x_539.y, x_539.z);
    let x_541 : f32 = u_xlat27;
    txVec3 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541);
    let x_549 : vec4<f32> = txVec3;
    let x_551 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_549.xyz, x_549.w);
    u_xlat6.w = x_551;
    let x_553 : vec4<f32> = u_xlat6;
    u_xlat27 = dot(x_553, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_558 : f32 = x_46.x_LightShadowData.x;
    u_xlat28 = (-(x_558) + 1.0f);
    let x_561 : f32 = u_xlat27;
    let x_562 : f32 = u_xlat28;
    let x_565 : f32 = x_46.x_LightShadowData.x;
    u_xlat27 = ((x_561 * x_562) + x_565);
  } else {
    u_xlat27 = 1.0f;
  }
  let x_568 : f32 = u_xlat26;
  let x_569 : f32 = u_xlat27;
  u_xlat26 = (x_568 + -(x_569));
  let x_572 : f32 = u_xlat25;
  let x_573 : f32 = u_xlat26;
  let x_575 : f32 = u_xlat27;
  u_xlat25 = ((x_572 * x_573) + x_575);
  let x_577 : vec3<f32> = u_xlat4;
  let x_578 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_577, x_578);
  let x_585 : f32 = u_xlat26;
  let x_587 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_585, x_585));
  u_xlat26 = x_587.x;
  let x_589 : f32 = u_xlat25;
  let x_590 : f32 = u_xlat26;
  u_xlat25 = (x_589 * x_590);
  let x_594 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_594;
  let x_597 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_597;
  let x_600 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_600;
  let x_602 : vec3<f32> = u_xlat4;
  let x_603 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_602, x_603);
  let x_605 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_605);
  let x_607 : f32 = u_xlat26;
  let x_609 : vec3<f32> = u_xlat4;
  let x_610 : vec3<f32> = (vec3<f32>(x_607, x_607, x_607) * x_609);
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : f32 = u_xlat25;
  let x_617 : vec4<f32> = x_46.x_LightColor0;
  let x_619 : vec3<f32> = (vec3<f32>(x_613, x_613, x_613) * vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_624 : f32 = u_xlat0.y;
  let x_628 : f32 = x_46.x_GlossMapScale;
  u_xlat8 = ((-(x_624) * x_628) + 1.0f);
  let x_631 : vec3<f32> = u_xlat4;
  let x_632 : f32 = u_xlat26;
  let x_635 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_631 * vec3<f32>(x_632, x_632, x_632)) + -(x_635));
  let x_638 : vec3<f32> = u_xlat4;
  let x_639 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_638, x_639);
  let x_641 : f32 = u_xlat25;
  u_xlat25 = max(x_641, 0.001f);
  let x_644 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_644);
  let x_646 : f32 = u_xlat25;
  let x_648 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_646, x_646, x_646) * x_648);
  let x_650 : vec4<f32> = u_xlat2;
  let x_652 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), -(x_652));
  let x_655 : vec4<f32> = u_xlat2;
  let x_657 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : f32 = u_xlat26;
  u_xlat26 = clamp(x_660, 0.0f, 1.0f);
  let x_662 : vec4<f32> = u_xlat2;
  let x_664 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), x_664);
  let x_668 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_668, 0.0f, 1.0f);
  let x_671 : vec4<f32> = u_xlat5;
  let x_673 : vec3<f32> = u_xlat4;
  u_xlat10.x = dot(vec3<f32>(x_671.x, x_671.y, x_671.z), x_673);
  let x_677 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_677, 0.0f, 1.0f);
  let x_682 : f32 = u_xlat10.x;
  let x_684 : f32 = u_xlat10.x;
  u_xlat18 = (x_682 * x_684);
  let x_686 : f32 = u_xlat18;
  let x_688 : f32 = u_xlat8;
  u_xlat18 = dot(vec2<f32>(x_686, x_686), vec2<f32>(x_688, x_688));
  let x_691 : f32 = u_xlat18;
  u_xlat18 = (x_691 + -0.5f);
  let x_694 : f32 = u_xlat26;
  u_xlat3.x = (-(x_694) + 1.0f);
  let x_700 : f32 = u_xlat3.x;
  let x_702 : f32 = u_xlat3.x;
  u_xlat11 = (x_700 * x_702);
  let x_704 : f32 = u_xlat11;
  let x_705 : f32 = u_xlat11;
  u_xlat11 = (x_704 * x_705);
  let x_708 : f32 = u_xlat3.x;
  let x_709 : f32 = u_xlat11;
  u_xlat3.x = (x_708 * x_709);
  let x_712 : f32 = u_xlat18;
  let x_714 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_712 * x_714) + 1.0f);
  let x_718 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_718)) + 1.0f);
  let x_723 : f32 = u_xlat11;
  let x_724 : f32 = u_xlat11;
  u_xlat19 = (x_723 * x_724);
  let x_726 : f32 = u_xlat19;
  let x_727 : f32 = u_xlat19;
  u_xlat19 = (x_726 * x_727);
  let x_729 : f32 = u_xlat11;
  let x_730 : f32 = u_xlat19;
  u_xlat11 = (x_729 * x_730);
  let x_732 : f32 = u_xlat18;
  let x_733 : f32 = u_xlat11;
  u_xlat18 = ((x_732 * x_733) + 1.0f);
  let x_736 : f32 = u_xlat18;
  let x_738 : f32 = u_xlat3.x;
  u_xlat18 = (x_736 * x_738);
  let x_740 : f32 = u_xlat26;
  let x_741 : f32 = u_xlat18;
  u_xlat18 = (x_740 * x_741);
  let x_743 : f32 = u_xlat8;
  let x_744 : f32 = u_xlat8;
  u_xlat8 = (x_743 * x_744);
  let x_746 : f32 = u_xlat8;
  u_xlat8 = max(x_746, 0.002f);
  let x_749 : f32 = u_xlat8;
  u_xlat3.x = (-(x_749) + 1.0f);
  let x_753 : f32 = u_xlat25;
  let x_756 : f32 = u_xlat3.x;
  let x_758 : f32 = u_xlat8;
  u_xlat11 = ((abs(x_753) * x_756) + x_758);
  let x_760 : f32 = u_xlat26;
  let x_762 : f32 = u_xlat3.x;
  let x_764 : f32 = u_xlat8;
  u_xlat3.x = ((x_760 * x_762) + x_764);
  let x_767 : f32 = u_xlat25;
  let x_770 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_767) * x_770);
  let x_772 : f32 = u_xlat26;
  let x_773 : f32 = u_xlat11;
  let x_775 : f32 = u_xlat25;
  u_xlat25 = ((x_772 * x_773) + x_775);
  let x_777 : f32 = u_xlat25;
  u_xlat25 = (x_777 + 0.00001f);
  let x_779 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_779);
  let x_781 : f32 = u_xlat8;
  let x_782 : f32 = u_xlat8;
  u_xlat8 = (x_781 * x_782);
  let x_785 : f32 = u_xlat2.x;
  let x_786 : f32 = u_xlat8;
  let x_789 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_785 * x_786) + -(x_789));
  let x_794 : f32 = u_xlat3.x;
  let x_796 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_794 * x_796) + 1.0f);
  let x_800 : f32 = u_xlat8;
  u_xlat8 = (x_800 * 0.318309873f);
  let x_804 : f32 = u_xlat2.x;
  let x_806 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_804 * x_806) + 0.0000001f);
  let x_811 : f32 = u_xlat8;
  let x_813 : f32 = u_xlat2.x;
  u_xlat8 = (x_811 / x_813);
  let x_815 : f32 = u_xlat8;
  let x_816 : f32 = u_xlat25;
  u_xlat8 = (x_815 * x_816);
  let x_818 : f32 = u_xlat26;
  let x_819 : f32 = u_xlat8;
  u_xlat8 = (x_818 * x_819);
  let x_821 : f32 = u_xlat8;
  u_xlat8 = (x_821 * 3.141592741f);
  let x_824 : f32 = u_xlat8;
  u_xlat8 = max(x_824, 0.0f);
  let x_826 : vec3<f32> = u_xlat1;
  let x_827 : vec3<f32> = u_xlat1;
  u_xlat25 = dot(x_826, x_827);
  let x_830 : f32 = u_xlat25;
  u_xlatb25 = !((x_830 == 0.0f));
  let x_832 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_832);
  let x_834 : f32 = u_xlat8;
  let x_835 : f32 = u_xlat25;
  u_xlat8 = (x_834 * x_835);
  let x_837 : f32 = u_xlat18;
  let x_839 : vec4<f32> = u_xlat6;
  let x_841 : vec3<f32> = (vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_841.x, x_842.y, x_841.y, x_841.z);
  let x_844 : vec4<f32> = u_xlat6;
  let x_846 : f32 = u_xlat8;
  u_xlat3 = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_846, x_846, x_846));
  let x_850 : f32 = u_xlat10.x;
  u_xlat8 = (-(x_850) + 1.0f);
  let x_853 : f32 = u_xlat8;
  let x_854 : f32 = u_xlat8;
  u_xlat25 = (x_853 * x_854);
  let x_856 : f32 = u_xlat25;
  let x_857 : f32 = u_xlat25;
  u_xlat25 = (x_856 * x_857);
  let x_859 : f32 = u_xlat8;
  let x_860 : f32 = u_xlat25;
  u_xlat8 = (x_859 * x_860);
  let x_862 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_862) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_866 : vec3<f32> = u_xlat4;
  let x_867 : f32 = u_xlat8;
  let x_870 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_866 * vec3<f32>(x_867, x_867, x_867)) + x_870);
  let x_872 : vec3<f32> = u_xlat1;
  let x_873 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_872 * x_873);
  let x_877 : vec4<f32> = u_xlat0;
  let x_879 : vec4<f32> = u_xlat2;
  let x_882 : vec3<f32> = u_xlat1;
  let x_883 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.z, x_877.w) * vec3<f32>(x_879.x, x_879.z, x_879.w)) + x_882);
  let x_884 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
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

