diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_4,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_281 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(1) @binding(2) var<uniform> x_505 : UnityPerDraw;

var<private> u_xlat37 : f32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat13 : vec2<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu13 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlat42 : f32;

var<private> u_xlati42 : i32;

@group(1) @binding(1) var<uniform> x_1125 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu17 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_196 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_719 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1260 : f32;
  var x_1271 : f32;
  var txVec1 : vec3<f32>;
  var x_1549 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_28.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_44, x_46);
  let x_48 : vec2<f32> = vec2<f32>(x_47.x, x_47.w);
  let x_49 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : f32 = x_28.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_69, x_71);
  u_xlat3 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_76 : f32 = u_xlat3.x;
  let x_79 : f32 = u_xlat3.z;
  u_xlat3.x = (x_76 * x_79);
  let x_84 : vec3<f32> = u_xlat3;
  u_xlat25 = ((vec2<f32>(x_84.x, x_84.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_93 : vec2<f32> = u_xlat25;
  let x_94 : vec2<f32> = u_xlat25;
  u_xlat36 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat36;
  u_xlat36 = min(x_96, 1.0f);
  let x_99 : f32 = u_xlat36;
  u_xlat36 = (-(x_99) + 1.0f);
  let x_102 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_102);
  let x_104 : f32 = u_xlat36;
  u_xlat36 = max(x_104, 0.0000000000000001f);
  let x_107 : vec2<f32> = u_xlat25;
  let x_110 : f32 = x_56.x_BumpScale;
  let x_112 : f32 = x_56.x_BumpScale;
  let x_113 : vec2<f32> = vec2<f32>(x_110, x_112);
  u_xlat25 = (x_107 * vec2<f32>(x_113.x, x_113.y));
  let x_123 : vec2<f32> = vs_TEXCOORD0;
  let x_125 : f32 = x_28.x_GlobalMipBias.x;
  let x_126 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_123, x_125);
  u_xlat3.x = x_126.y;
  let x_133 : f32 = x_56.x_OcclusionStrength;
  u_xlat15.x = (-(x_133) + 1.0f);
  let x_138 : f32 = u_xlat3.x;
  let x_140 : f32 = x_56.x_OcclusionStrength;
  let x_143 : f32 = u_xlat15.x;
  u_xlat3.x = ((x_138 * x_140) + x_143);
  let x_152 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb15 = (x_152 == 0.0f);
  let x_158 : vec3<f32> = vs_TEXCOORD1;
  let x_163 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_164 : vec3<f32> = (-(x_158) + x_163);
  let x_165 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec4<f32> = u_xlat4;
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat27;
  let x_177 : vec4<f32> = u_xlat4;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_185 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat5.x = x_185;
  let x_189 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat5.y = x_189;
  let x_192 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat5.z = x_192;
  let x_194 : bool = u_xlatb15;
  if (x_194) {
    let x_199 : vec4<f32> = u_xlat4;
    x_196 = vec3<f32>(x_199.x, x_199.y, x_199.z);
  } else {
    let x_202 : vec4<f32> = u_xlat5;
    x_196 = vec3<f32>(x_202.x, x_202.y, x_202.z);
  }
  let x_204 : vec3<f32> = x_196;
  u_xlat15 = x_204;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_210 : vec4<f32> = vs_TEXCOORD3;
  let x_212 : vec3<f32> = (vec3<f32>(x_206.z, x_206.x, x_206.y) * vec3<f32>(x_210.y, x_210.z, x_210.x));
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec3<f32> = vs_TEXCOORD2;
  let x_217 : vec4<f32> = vs_TEXCOORD3;
  let x_220 : vec4<f32> = u_xlat4;
  let x_223 : vec3<f32> = ((vec3<f32>(x_215.y, x_215.z, x_215.x) * vec3<f32>(x_217.z, x_217.x, x_217.y)) + -(vec3<f32>(x_220.x, x_220.y, x_220.z)));
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = vs_TEXCOORD3;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.w, x_228.w, x_228.w));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec2<f32> = u_xlat25;
  let x_235 : vec4<f32> = u_xlat4;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.y, x_233.y, x_233.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec2<f32> = u_xlat25;
  let x_242 : vec4<f32> = vs_TEXCOORD3;
  let x_245 : vec4<f32> = u_xlat4;
  let x_247 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.x, x_240.x) * vec3<f32>(x_242.x, x_242.y, x_242.z)) + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : f32 = u_xlat36;
  let x_252 : vec3<f32> = vs_TEXCOORD2;
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec3<f32> = ((vec3<f32>(x_250, x_250, x_250) * x_252) + vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_264);
  let x_266 : f32 = u_xlat36;
  let x_268 : vec4<f32> = u_xlat4;
  let x_270 : vec3<f32> = (vec3<f32>(x_266, x_266, x_266) * vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec3<f32> = vs_TEXCOORD1;
  let x_283 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres0;
  let x_286 : vec3<f32> = (x_273 + -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_287 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_290 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres1;
  let x_295 : vec3<f32> = (x_290 + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_296 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_302 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres2;
  let x_305 : vec3<f32> = (x_299 + -(vec3<f32>(x_302.x, x_302.y, x_302.z)));
  let x_306 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_309 + -(vec3<f32>(x_311.x, x_311.y, x_311.z)));
  let x_315 : vec4<f32> = u_xlat5;
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_315.x, x_315.y, x_315.z), vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_321 : vec4<f32> = u_xlat6;
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : vec4<f32> = u_xlat7;
  let x_329 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_333 : vec3<f32> = u_xlat8;
  let x_334 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_333, x_334);
  let x_340 : vec4<f32> = u_xlat5;
  let x_343 : vec4<f32> = x_281.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_340 < x_343);
  let x_346 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_346);
  let x_350 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_362);
  let x_367 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_367);
  let x_371 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_371);
  let x_374 : vec4<f32> = u_xlat5;
  let x_376 : vec4<f32> = u_xlat6;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) + vec3<f32>(x_376.y, x_376.z, x_376.w));
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat5;
  let x_384 : vec3<f32> = max(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_385 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_385.x, x_384.x, x_384.y, x_384.z);
  let x_387 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_387, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_392 : f32 = u_xlat36;
  u_xlat36 = (-(x_392) + 4.0f);
  let x_397 : f32 = u_xlat36;
  u_xlatu36 = u32(x_397);
  let x_401 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_401) << bitcast<u32>(2i));
  let x_404 : vec3<f32> = vs_TEXCOORD1;
  let x_406 : i32 = u_xlati36;
  let x_409 : i32 = u_xlati36;
  let x_413 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_406 + 1i) / 4i)][((x_409 + 1i) % 4i)];
  let x_415 : vec3<f32> = (vec3<f32>(x_404.y, x_404.y, x_404.y) * vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : i32 = u_xlati36;
  let x_420 : i32 = u_xlati36;
  let x_423 : vec4<f32> = x_281.x_MainLightWorldToShadow[(x_418 / 4i)][(x_420 % 4i)];
  let x_425 : vec3<f32> = vs_TEXCOORD1;
  let x_428 : vec4<f32> = u_xlat5;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.x, x_425.x, x_425.x)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : i32 = u_xlati36;
  let x_436 : i32 = u_xlati36;
  let x_440 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_433 + 2i) / 4i)][((x_436 + 2i) % 4i)];
  let x_442 : vec3<f32> = vs_TEXCOORD1;
  let x_445 : vec4<f32> = u_xlat5;
  let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_442.z, x_442.z, x_442.z)) + vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat5;
  let x_452 : i32 = u_xlati36;
  let x_455 : i32 = u_xlati36;
  let x_459 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_452 + 3i) / 4i)][((x_455 + 3i) % 4i)];
  let x_461 : vec3<f32> = (vec3<f32>(x_450.x, x_450.y, x_450.z) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_466 : f32 = vs_TEXCOORD1.y;
  let x_468 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat36 = (x_466 * x_468);
  let x_471 : f32 = x_28.unity_MatrixV[0i].z;
  let x_473 : f32 = vs_TEXCOORD1.x;
  let x_475 : f32 = u_xlat36;
  u_xlat36 = ((x_471 * x_473) + x_475);
  let x_478 : f32 = x_28.unity_MatrixV[2i].z;
  let x_480 : f32 = vs_TEXCOORD1.z;
  let x_482 : f32 = u_xlat36;
  u_xlat36 = ((x_478 * x_480) + x_482);
  let x_484 : f32 = u_xlat36;
  let x_486 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat36 = (x_484 + x_486);
  let x_488 : f32 = u_xlat36;
  let x_491 : f32 = x_28.x_ProjectionParams.y;
  u_xlat36 = (-(x_488) + -(x_491));
  let x_494 : f32 = u_xlat36;
  u_xlat36 = max(x_494, 0.0f);
  let x_496 : f32 = u_xlat36;
  let x_499 : f32 = x_28.unity_FogParams.x;
  u_xlat36 = (x_496 * x_499);
  u_xlat4.w = 1.0f;
  let x_508 : vec4<f32> = x_505.unity_SHAr;
  let x_509 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_508, x_509);
  let x_514 : vec4<f32> = x_505.unity_SHAg;
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_514, x_515);
  let x_520 : vec4<f32> = x_505.unity_SHAb;
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_520, x_521);
  let x_524 : vec4<f32> = u_xlat4;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_524.y, x_524.z, x_524.z, x_524.x) * vec4<f32>(x_526.x, x_526.y, x_526.z, x_526.z));
  let x_531 : vec4<f32> = x_505.unity_SHBr;
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_531, x_532);
  let x_537 : vec4<f32> = x_505.unity_SHBg;
  let x_538 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_537, x_538);
  let x_543 : vec4<f32> = x_505.unity_SHBb;
  let x_544 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_543, x_544);
  let x_548 : f32 = u_xlat4.y;
  let x_550 : f32 = u_xlat4.y;
  u_xlat25.x = (x_548 * x_550);
  let x_554 : f32 = u_xlat4.x;
  let x_556 : f32 = u_xlat4.x;
  let x_559 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_554 * x_556) + -(x_559));
  let x_565 : vec4<f32> = x_505.unity_SHC;
  let x_567 : vec2<f32> = u_xlat25;
  let x_570 : vec3<f32> = u_xlat8;
  let x_571 : vec3<f32> = ((vec3<f32>(x_565.x, x_565.y, x_565.z) * vec3<f32>(x_567.x, x_567.x, x_567.x)) + x_570);
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat6;
  let x_576 : vec4<f32> = u_xlat7;
  let x_578 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) + vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat6;
  let x_583 : vec3<f32> = max(vec3<f32>(x_581.x, x_581.y, x_581.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_584 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_587 : f32 = u_xlat1.x;
  u_xlat25.x = ((-(x_587) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_595 : f32 = u_xlat25.x;
  u_xlat37 = (-(x_595) + 1.0f);
  let x_599 : vec2<f32> = u_xlat25;
  let x_601 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec3<f32>(x_599.x, x_599.x, x_599.x) * vec3<f32>(x_601.y, x_601.z, x_601.w));
  let x_604 : vec4<f32> = u_xlat0;
  let x_607 : vec4<f32> = x_56.x_BaseColor;
  let x_612 : vec3<f32> = ((vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(x_607.x, x_607.y, x_607.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_613 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec3<f32> = u_xlat1;
  let x_617 : vec4<f32> = u_xlat0;
  let x_622 : vec3<f32> = ((vec3<f32>(x_615.x, x_615.x, x_615.x) * vec3<f32>(x_617.x, x_617.y, x_617.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_623 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_626 : f32 = u_xlat1.y;
  let x_629 : f32 = x_56.x_Smoothness;
  u_xlat1.x = ((-(x_626) * x_629) + 1.0f);
  let x_634 : f32 = u_xlat1.x;
  let x_636 : f32 = u_xlat1.x;
  u_xlat25.x = (x_634 * x_636);
  let x_640 : f32 = u_xlat25.x;
  u_xlat25.x = max(x_640, 0.0078125f);
  let x_646 : f32 = u_xlat25.x;
  let x_648 : f32 = u_xlat25.x;
  u_xlat40 = (x_646 * x_648);
  let x_652 : f32 = u_xlat1.y;
  let x_654 : f32 = x_56.x_Smoothness;
  let x_656 : f32 = u_xlat37;
  u_xlat13.x = ((x_652 * x_654) + x_656);
  let x_660 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_660, 0.0f, 1.0f);
  let x_664 : f32 = u_xlat25.x;
  u_xlat37 = ((x_664 * 4.0f) + 2.0f);
  let x_668 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_668, 1.0f);
  let x_672 : vec4<f32> = u_xlat5;
  let x_673 : vec2<f32> = vec2<f32>(x_672.x, x_672.y);
  let x_675 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_673.x, x_673.y, x_675);
  let x_687 : vec3<f32> = txVec0;
  let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_687.xy, x_687.z);
  u_xlat5.x = x_689;
  let x_693 : f32 = x_281.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_693) + 1.0f);
  let x_698 : f32 = u_xlat5.x;
  let x_700 : f32 = x_281.x_MainLightShadowParams.x;
  let x_703 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_698 * x_700) + x_703);
  let x_708 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_708);
  let x_712 : f32 = u_xlat5.z;
  u_xlatb29 = (x_712 >= 1.0f);
  let x_714 : bool = u_xlatb29;
  let x_715 : bool = u_xlatb17;
  u_xlatb17 = (x_714 | x_715);
  let x_717 : bool = u_xlatb17;
  if (x_717) {
    x_719 = 1.0f;
  } else {
    let x_724 : f32 = u_xlat5.x;
    x_719 = x_724;
  }
  let x_725 : f32 = x_719;
  u_xlat5.x = x_725;
  let x_727 : vec3<f32> = vs_TEXCOORD1;
  let x_729 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat17 = (x_727 + -(x_729));
  let x_732 : vec3<f32> = u_xlat17;
  let x_733 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_732, x_733);
  let x_738 : f32 = u_xlat17.x;
  let x_740 : f32 = x_281.x_MainLightShadowParams.z;
  let x_743 : f32 = x_281.x_MainLightShadowParams.w;
  u_xlat29 = ((x_738 * x_740) + x_743);
  let x_745 : f32 = u_xlat29;
  u_xlat29 = clamp(x_745, 0.0f, 1.0f);
  let x_749 : f32 = u_xlat5.x;
  u_xlat41 = (-(x_749) + 1.0f);
  let x_752 : f32 = u_xlat29;
  let x_753 : f32 = u_xlat41;
  let x_756 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_752 * x_753) + x_756);
  let x_759 : vec3<f32> = u_xlat15;
  let x_761 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(-(x_759), vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : f32 = u_xlat29;
  let x_765 : f32 = u_xlat29;
  u_xlat29 = (x_764 + x_765);
  let x_767 : vec4<f32> = u_xlat4;
  let x_769 : f32 = u_xlat29;
  let x_773 : vec3<f32> = u_xlat15;
  let x_775 : vec3<f32> = ((vec3<f32>(x_767.x, x_767.y, x_767.z) * -(vec3<f32>(x_769, x_769, x_769))) + -(x_773));
  let x_776 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat4;
  let x_780 : vec3<f32> = u_xlat15;
  u_xlat29 = dot(vec3<f32>(x_778.x, x_778.y, x_778.z), x_780);
  let x_782 : f32 = u_xlat29;
  u_xlat29 = clamp(x_782, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat29;
  u_xlat29 = (-(x_784) + 1.0f);
  let x_787 : f32 = u_xlat29;
  let x_788 : f32 = u_xlat29;
  u_xlat29 = (x_787 * x_788);
  let x_790 : f32 = u_xlat29;
  let x_791 : f32 = u_xlat29;
  u_xlat29 = (x_790 * x_791);
  let x_794 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_794) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_801 : f32 = u_xlat1.x;
  let x_802 : f32 = u_xlat41;
  u_xlat1.x = (x_801 * x_802);
  let x_806 : f32 = u_xlat1.x;
  u_xlat1.x = (x_806 * 6.0f);
  let x_818 : vec4<f32> = u_xlat7;
  let x_821 : f32 = u_xlat1.x;
  let x_822 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_818.x, x_818.y, x_818.z), x_821);
  u_xlat7 = x_822;
  let x_824 : f32 = u_xlat7.w;
  u_xlat1.x = (x_824 + -1.0f);
  let x_828 : f32 = x_505.unity_SpecCube0_HDR.w;
  let x_830 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_828 * x_830) + 1.0f);
  let x_835 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_835, 0.0f);
  let x_839 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_839);
  let x_843 : f32 = u_xlat1.x;
  let x_845 : f32 = x_505.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_843 * x_845);
  let x_849 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_849);
  let x_853 : f32 = u_xlat1.x;
  let x_855 : f32 = x_505.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_853 * x_855);
  let x_858 : vec4<f32> = u_xlat7;
  let x_860 : vec3<f32> = u_xlat1;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(x_860.x, x_860.x, x_860.x));
  let x_863 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec2<f32> = u_xlat25;
  let x_867 : vec2<f32> = u_xlat25;
  let x_871 : vec2<f32> = ((vec2<f32>(x_865.x, x_865.x) * vec2<f32>(x_867.x, x_867.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_872 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_871.x, x_872.y, x_871.y);
  let x_875 : f32 = u_xlat1.z;
  u_xlat25.x = (1.0f / x_875);
  let x_878 : vec4<f32> = u_xlat0;
  let x_881 : vec2<f32> = u_xlat13;
  u_xlat8 = (-(vec3<f32>(x_878.x, x_878.y, x_878.z)) + vec3<f32>(x_881.x, x_881.x, x_881.x));
  let x_884 : f32 = u_xlat29;
  let x_886 : vec3<f32> = u_xlat8;
  let x_888 : vec4<f32> = u_xlat0;
  u_xlat8 = ((vec3<f32>(x_884, x_884, x_884) * x_886) + vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec2<f32> = u_xlat25;
  let x_893 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_891.x, x_891.x, x_891.x) * x_893);
  let x_895 : vec4<f32> = u_xlat7;
  let x_897 : vec3<f32> = u_xlat8;
  let x_898 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) * x_897);
  let x_899 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat6;
  let x_903 : vec3<f32> = u_xlat14;
  let x_905 : vec4<f32> = u_xlat7;
  let x_907 : vec3<f32> = ((vec3<f32>(x_901.x, x_901.y, x_901.z) * x_903) + vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_911 : f32 = u_xlat5.x;
  let x_913 : f32 = x_505.unity_LightData.z;
  u_xlat13.x = (x_911 * x_913);
  let x_916 : vec4<f32> = u_xlat4;
  let x_919 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat25.x = dot(vec3<f32>(x_916.x, x_916.y, x_916.z), vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_924 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_924, 0.0f, 1.0f);
  let x_928 : f32 = u_xlat25.x;
  let x_930 : f32 = u_xlat13.x;
  u_xlat13.x = (x_928 * x_930);
  let x_933 : vec2<f32> = u_xlat13;
  let x_936 : vec4<f32> = x_28.x_MainLightColor;
  let x_938 : vec3<f32> = (vec3<f32>(x_933.x, x_933.x, x_933.x) * vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_938.x, x_939.y, x_938.y, x_938.z);
  let x_941 : vec3<f32> = u_xlat15;
  let x_943 : vec4<f32> = x_28.x_MainLightPosition;
  let x_945 : vec3<f32> = (x_941 + vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec4<f32> = u_xlat7;
  let x_950 : vec4<f32> = u_xlat7;
  u_xlat13.x = dot(vec3<f32>(x_948.x, x_948.y, x_948.z), vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_955 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_955, 1.17549435e-38f);
  let x_960 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_960);
  let x_963 : vec2<f32> = u_xlat13;
  let x_965 : vec4<f32> = u_xlat7;
  let x_967 : vec3<f32> = (vec3<f32>(x_963.x, x_963.x, x_963.x) * vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : vec4<f32> = u_xlat4;
  let x_972 : vec4<f32> = u_xlat7;
  u_xlat13.x = dot(vec3<f32>(x_970.x, x_970.y, x_970.z), vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_977 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_977, 0.0f, 1.0f);
  let x_981 : vec4<f32> = x_28.x_MainLightPosition;
  let x_983 : vec4<f32> = u_xlat7;
  u_xlat13.y = dot(vec3<f32>(x_981.x, x_981.y, x_981.z), vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_988 : f32 = u_xlat13.y;
  u_xlat13.y = clamp(x_988, 0.0f, 1.0f);
  let x_991 : vec2<f32> = u_xlat13;
  let x_992 : vec2<f32> = u_xlat13;
  u_xlat13 = (x_991 * x_992);
  let x_995 : f32 = u_xlat13.x;
  let x_997 : f32 = u_xlat1.x;
  u_xlat13.x = ((x_995 * x_997) + 1.00001001358032226562f);
  let x_1003 : f32 = u_xlat13.x;
  let x_1005 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1003 * x_1005);
  let x_1009 : f32 = u_xlat13.y;
  u_xlat25.x = max(x_1009, 0.10000000149011611938f);
  let x_1014 : f32 = u_xlat25.x;
  let x_1016 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1014 * x_1016);
  let x_1019 : f32 = u_xlat37;
  let x_1021 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1019 * x_1021);
  let x_1024 : f32 = u_xlat40;
  let x_1026 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1024 / x_1026);
  let x_1029 : vec4<f32> = u_xlat0;
  let x_1031 : vec2<f32> = u_xlat13;
  let x_1034 : vec3<f32> = u_xlat14;
  let x_1035 : vec3<f32> = ((vec3<f32>(x_1029.x, x_1029.y, x_1029.z) * vec3<f32>(x_1031.x, x_1031.x, x_1031.x)) + x_1034);
  let x_1036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat5;
  let x_1040 : vec4<f32> = u_xlat7;
  let x_1042 : vec3<f32> = (vec3<f32>(x_1038.x, x_1038.z, x_1038.w) * vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1043 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1042.x, x_1043.y, x_1042.y, x_1042.z);
  let x_1046 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1048 : f32 = x_505.unity_LightData.y;
  u_xlat13.x = min(x_1046, x_1048);
  let x_1053 : f32 = u_xlat13.x;
  u_xlatu13 = bitcast<u32>(i32(x_1053));
  let x_1057 : f32 = u_xlat17.x;
  let x_1060 : f32 = x_281.x_AdditionalShadowFadeParams.x;
  let x_1063 : f32 = x_281.x_AdditionalShadowFadeParams.y;
  u_xlat25.x = ((x_1057 * x_1060) + x_1063);
  let x_1067 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1067, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1080 : u32 = u_xlatu_loop_1;
    let x_1081 : u32 = u_xlatu13;
    if ((x_1080 < x_1081)) {
    } else {
      break;
    }
    let x_1084 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_1084 >> 2u);
    let x_1087 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1087 & 3u));
    let x_1091 : u32 = u_xlatu42;
    let x_1094 : vec4<f32> = x_505.unity_LightIndices[bitcast<i32>(x_1091)];
    let x_1104 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1109 : vec4<u32> = indexable[x_1104];
    u_xlat42 = dot(x_1094, bitcast<vec4<f32>>(x_1109));
    let x_1113 : f32 = u_xlat42;
    u_xlati42 = i32(x_1113);
    let x_1115 : vec3<f32> = vs_TEXCOORD1;
    let x_1126 : i32 = u_xlati42;
    let x_1128 : vec4<f32> = x_1125.x_AdditionalLightsPosition[x_1126];
    let x_1131 : i32 = u_xlati42;
    let x_1133 : vec4<f32> = x_1125.x_AdditionalLightsPosition[x_1131];
    u_xlat8 = ((-(x_1115) * vec3<f32>(x_1128.w, x_1128.w, x_1128.w)) + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
    let x_1137 : vec3<f32> = u_xlat8;
    let x_1138 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1137, x_1138);
    let x_1140 : f32 = u_xlat43;
    u_xlat43 = max(x_1140, 0.00006103515625f);
    let x_1144 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1144);
    let x_1147 : f32 = u_xlat44;
    let x_1149 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1147, x_1147, x_1147) * x_1149);
    let x_1152 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1152);
    let x_1154 : f32 = u_xlat43;
    let x_1155 : i32 = u_xlati42;
    let x_1157 : f32 = x_1125.x_AdditionalLightsAttenuation[x_1155].x;
    u_xlat43 = (x_1154 * x_1157);
    let x_1159 : f32 = u_xlat43;
    let x_1161 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1159) * x_1161) + 1.0f);
    let x_1164 : f32 = u_xlat43;
    u_xlat43 = max(x_1164, 0.0f);
    let x_1166 : f32 = u_xlat43;
    let x_1167 : f32 = u_xlat43;
    u_xlat43 = (x_1166 * x_1167);
    let x_1169 : f32 = u_xlat43;
    let x_1170 : f32 = u_xlat45;
    u_xlat43 = (x_1169 * x_1170);
    let x_1172 : i32 = u_xlati42;
    let x_1174 : vec4<f32> = x_1125.x_AdditionalLightsSpotDir[x_1172];
    let x_1176 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1174.x, x_1174.y, x_1174.z), x_1176);
    let x_1178 : f32 = u_xlat45;
    let x_1179 : i32 = u_xlati42;
    let x_1181 : f32 = x_1125.x_AdditionalLightsAttenuation[x_1179].z;
    let x_1183 : i32 = u_xlati42;
    let x_1185 : f32 = x_1125.x_AdditionalLightsAttenuation[x_1183].w;
    u_xlat45 = ((x_1178 * x_1181) + x_1185);
    let x_1187 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1187, 0.0f, 1.0f);
    let x_1189 : f32 = u_xlat45;
    let x_1190 : f32 = u_xlat45;
    u_xlat45 = (x_1189 * x_1190);
    let x_1192 : f32 = u_xlat43;
    let x_1193 : f32 = u_xlat45;
    u_xlat43 = (x_1192 * x_1193);
    let x_1197 : i32 = u_xlati42;
    let x_1199 : f32 = x_281.x_AdditionalShadowParams[x_1197].w;
    u_xlati45 = i32(x_1199);
    let x_1204 : i32 = u_xlati45;
    u_xlatb10.x = (x_1204 >= 0i);
    let x_1208 : bool = u_xlatb10.x;
    if (x_1208) {
      let x_1212 : i32 = u_xlati42;
      let x_1214 : f32 = x_281.x_AdditionalShadowParams[x_1212].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1214, x_1214, x_1214, x_1214))));
      let x_1220 : bool = u_xlatb10.x;
      if (x_1220) {
        let x_1223 : vec3<f32> = u_xlat9;
        let x_1226 : vec3<f32> = u_xlat9;
        let x_1229 : vec4<bool> = (abs(vec4<f32>(x_1223.z, x_1223.z, x_1223.y, x_1223.z)) >= abs(vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.x)));
        u_xlatb10 = vec3<bool>(x_1229.x, x_1229.y, x_1229.z);
        let x_1232 : bool = u_xlatb10.y;
        let x_1234 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1232 & x_1234);
        let x_1238 : vec3<f32> = u_xlat9;
        let x_1241 : vec4<bool> = (-(vec4<f32>(x_1238.z, x_1238.y, x_1238.x, x_1238.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1241.x, x_1241.y, x_1241.z);
        let x_1245 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1245);
        let x_1250 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1250);
        let x_1255 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1255);
        let x_1259 : bool = u_xlatb10.z;
        if (x_1259) {
          let x_1264 : f32 = u_xlat22.z;
          x_1260 = x_1264;
        } else {
          let x_1266 : f32 = u_xlat11;
          x_1260 = x_1266;
        }
        let x_1267 : f32 = x_1260;
        u_xlat34 = x_1267;
        let x_1270 : bool = u_xlatb10.x;
        if (x_1270) {
          let x_1275 : f32 = u_xlat22.x;
          x_1271 = x_1275;
        } else {
          let x_1277 : f32 = u_xlat34;
          x_1271 = x_1277;
        }
        let x_1278 : f32 = x_1271;
        u_xlat10.x = x_1278;
        let x_1280 : i32 = u_xlati42;
        let x_1282 : f32 = x_281.x_AdditionalShadowParams[x_1280].w;
        u_xlat22.x = trunc(x_1282);
        let x_1286 : f32 = u_xlat10.x;
        let x_1288 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1286 + x_1288);
        let x_1292 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1292);
      }
      let x_1294 : i32 = u_xlati45;
      u_xlati45 = (x_1294 << bitcast<u32>(2i));
      let x_1296 : vec3<f32> = vs_TEXCOORD1;
      let x_1299 : i32 = u_xlati45;
      let x_1302 : i32 = u_xlati45;
      let x_1306 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[((x_1299 + 1i) / 4i)][((x_1302 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1296.y, x_1296.y, x_1296.y, x_1296.y) * x_1306);
      let x_1308 : i32 = u_xlati45;
      let x_1310 : i32 = u_xlati45;
      let x_1313 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[(x_1308 / 4i)][(x_1310 % 4i)];
      let x_1314 : vec3<f32> = vs_TEXCOORD1;
      let x_1317 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1313 * vec4<f32>(x_1314.x, x_1314.x, x_1314.x, x_1314.x)) + x_1317);
      let x_1319 : i32 = u_xlati45;
      let x_1322 : i32 = u_xlati45;
      let x_1326 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[((x_1319 + 2i) / 4i)][((x_1322 + 2i) % 4i)];
      let x_1327 : vec3<f32> = vs_TEXCOORD1;
      let x_1330 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1326 * vec4<f32>(x_1327.z, x_1327.z, x_1327.z, x_1327.z)) + x_1330);
      let x_1332 : vec4<f32> = u_xlat10;
      let x_1333 : i32 = u_xlati45;
      let x_1336 : i32 = u_xlati45;
      let x_1340 : vec4<f32> = x_281.x_AdditionalLightsWorldToShadow[((x_1333 + 3i) / 4i)][((x_1336 + 3i) % 4i)];
      u_xlat10 = (x_1332 + x_1340);
      let x_1342 : vec4<f32> = u_xlat10;
      let x_1344 : vec4<f32> = u_xlat10;
      let x_1346 : vec3<f32> = (vec3<f32>(x_1342.x, x_1342.y, x_1342.z) / vec3<f32>(x_1344.w, x_1344.w, x_1344.w));
      let x_1347 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
      let x_1350 : vec4<f32> = u_xlat10;
      let x_1351 : vec2<f32> = vec2<f32>(x_1350.x, x_1350.y);
      let x_1353 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
      let x_1361 : vec3<f32> = txVec1;
      let x_1363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1361.xy, x_1361.z);
      u_xlat45 = x_1363;
      let x_1364 : i32 = u_xlati42;
      let x_1366 : f32 = x_281.x_AdditionalShadowParams[x_1364].x;
      u_xlat10.x = (1.0f + -(x_1366));
      let x_1370 : f32 = u_xlat45;
      let x_1371 : i32 = u_xlati42;
      let x_1373 : f32 = x_281.x_AdditionalShadowParams[x_1371].x;
      let x_1376 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1370 * x_1373) + x_1376);
      let x_1379 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1379);
      let x_1384 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1384 >= 1.0f);
      let x_1386 : bool = u_xlatb22;
      let x_1388 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1386 | x_1388);
      let x_1392 : bool = u_xlatb10.x;
      let x_1393 : f32 = u_xlat45;
      u_xlat45 = select(x_1393, 1.0f, x_1392);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1396 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1396) + 1.0f);
    let x_1401 : f32 = u_xlat25.x;
    let x_1403 : f32 = u_xlat10.x;
    let x_1405 : f32 = u_xlat45;
    u_xlat45 = ((x_1401 * x_1403) + x_1405);
    let x_1407 : f32 = u_xlat43;
    let x_1408 : f32 = u_xlat45;
    u_xlat43 = (x_1407 * x_1408);
    let x_1410 : vec4<f32> = u_xlat4;
    let x_1412 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1410.x, x_1410.y, x_1410.z), x_1412);
    let x_1414 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1414, 0.0f, 1.0f);
    let x_1416 : f32 = u_xlat43;
    let x_1417 : f32 = u_xlat45;
    u_xlat43 = (x_1416 * x_1417);
    let x_1419 : f32 = u_xlat43;
    let x_1421 : i32 = u_xlati42;
    let x_1423 : vec4<f32> = x_1125.x_AdditionalLightsColor[x_1421];
    let x_1425 : vec3<f32> = (vec3<f32>(x_1419, x_1419, x_1419) * vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
    let x_1426 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
    let x_1428 : vec3<f32> = u_xlat8;
    let x_1429 : f32 = u_xlat44;
    let x_1432 : vec3<f32> = u_xlat15;
    u_xlat8 = ((x_1428 * vec3<f32>(x_1429, x_1429, x_1429)) + x_1432);
    let x_1434 : vec3<f32> = u_xlat8;
    let x_1435 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1434, x_1435);
    let x_1437 : f32 = u_xlat42;
    u_xlat42 = max(x_1437, 1.17549435e-38f);
    let x_1439 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1439);
    let x_1441 : f32 = u_xlat42;
    let x_1443 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1441, x_1441, x_1441) * x_1443);
    let x_1445 : vec4<f32> = u_xlat4;
    let x_1447 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1445.x, x_1445.y, x_1445.z), x_1447);
    let x_1449 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1449, 0.0f, 1.0f);
    let x_1451 : vec3<f32> = u_xlat9;
    let x_1452 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1451, x_1452);
    let x_1454 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1454, 0.0f, 1.0f);
    let x_1456 : f32 = u_xlat42;
    let x_1457 : f32 = u_xlat42;
    u_xlat42 = (x_1456 * x_1457);
    let x_1459 : f32 = u_xlat42;
    let x_1461 : f32 = u_xlat1.x;
    u_xlat42 = ((x_1459 * x_1461) + 1.00001001358032226562f);
    let x_1464 : f32 = u_xlat43;
    let x_1465 : f32 = u_xlat43;
    u_xlat43 = (x_1464 * x_1465);
    let x_1467 : f32 = u_xlat42;
    let x_1468 : f32 = u_xlat42;
    u_xlat42 = (x_1467 * x_1468);
    let x_1470 : f32 = u_xlat43;
    u_xlat43 = max(x_1470, 0.10000000149011611938f);
    let x_1472 : f32 = u_xlat42;
    let x_1473 : f32 = u_xlat43;
    u_xlat42 = (x_1472 * x_1473);
    let x_1475 : f32 = u_xlat37;
    let x_1476 : f32 = u_xlat42;
    u_xlat42 = (x_1475 * x_1476);
    let x_1478 : f32 = u_xlat40;
    let x_1479 : f32 = u_xlat42;
    u_xlat42 = (x_1478 / x_1479);
    let x_1481 : vec4<f32> = u_xlat0;
    let x_1483 : f32 = u_xlat42;
    let x_1486 : vec3<f32> = u_xlat14;
    u_xlat8 = ((vec3<f32>(x_1481.x, x_1481.y, x_1481.z) * vec3<f32>(x_1483, x_1483, x_1483)) + x_1486);
    let x_1488 : vec3<f32> = u_xlat8;
    let x_1489 : vec4<f32> = u_xlat10;
    let x_1492 : vec4<f32> = u_xlat7;
    let x_1494 : vec3<f32> = ((x_1488 * vec3<f32>(x_1489.x, x_1489.y, x_1489.z)) + vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
    let x_1495 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);

    continuing {
      let x_1497 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1497 + bitcast<u32>(1i));
    }
  }
  let x_1499 : vec4<f32> = u_xlat6;
  let x_1501 : vec3<f32> = u_xlat3;
  let x_1504 : vec4<f32> = u_xlat5;
  let x_1506 : vec3<f32> = ((vec3<f32>(x_1499.x, x_1499.y, x_1499.z) * vec3<f32>(x_1501.x, x_1501.x, x_1501.x)) + vec3<f32>(x_1504.x, x_1504.z, x_1504.w));
  let x_1507 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
  let x_1509 : vec4<f32> = u_xlat7;
  let x_1511 : vec4<f32> = u_xlat0;
  let x_1513 : vec3<f32> = (vec3<f32>(x_1509.x, x_1509.y, x_1509.z) + vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
  let x_1514 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1516 : f32 = u_xlat36;
  let x_1517 : f32 = u_xlat36;
  u_xlat36 = (x_1516 * -(x_1517));
  let x_1520 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1520);
  let x_1522 : vec4<f32> = u_xlat0;
  let x_1525 : vec4<f32> = x_28.unity_FogColor;
  let x_1528 : vec3<f32> = (vec3<f32>(x_1522.x, x_1522.y, x_1522.z) + -(vec3<f32>(x_1525.x, x_1525.y, x_1525.z)));
  let x_1529 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1529.w);
  let x_1533 : f32 = u_xlat36;
  let x_1535 : vec4<f32> = u_xlat0;
  let x_1539 : vec4<f32> = x_28.unity_FogColor;
  let x_1541 : vec3<f32> = ((vec3<f32>(x_1533, x_1533, x_1533) * vec3<f32>(x_1535.x, x_1535.y, x_1535.z)) + vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
  let x_1542 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
  let x_1546 : f32 = x_56.x_Surface;
  u_xlatb0 = (x_1546 == 1.0f);
  let x_1548 : bool = u_xlatb0;
  if (x_1548) {
    let x_1553 : f32 = u_xlat2.x;
    x_1549 = x_1553;
  } else {
    x_1549 = 1.0f;
  }
  let x_1555 : f32 = x_1549;
  SV_Target0.w = x_1555;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


