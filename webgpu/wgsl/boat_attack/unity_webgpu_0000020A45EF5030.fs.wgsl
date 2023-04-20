diagnostic(off, derivative_uniformity);

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
}

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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_575 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1000 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1188 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1480 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(9) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_548 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_953 : f32;
  var x_1083 : f32;
  var x_1094 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1616 : f32;
  var x_1626 : f32;
  var txVec1 : vec3<f32>;
  var x_2054 : f32;
  var x_2067 : f32;
  var x_2125 : f32;
  var x_2136 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_MaskMapRemapScale0;
  let x_25 : vec4<f32> = x_13.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_18.x, x_18.y, x_18.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_25.x, x_25.y, x_25.w));
  let x_32 : vec4<f32> = x_13.x_MaskMapRemapScale1;
  let x_37 : vec4<f32> = x_13.x_MaskMapRemapOffset1;
  let x_39 : vec3<f32> = ((vec3<f32>(x_32.x, x_32.y, x_32.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_37.x, x_37.y, x_37.w));
  let x_40 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  let x_45 : vec4<f32> = x_13.x_MaskMapRemapScale2;
  let x_50 : vec4<f32> = x_13.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_56 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_61 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.w, x_56.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_61.x, x_61.w, x_61.y));
  let x_64 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_63.z);
  let x_70 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_74 : vec2<f32> = (vec2<f32>(x_70.z, x_70.w) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = u_xlat4;
  let x_85 : vec2<f32> = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat4;
  let x_91 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_106 : vec4<f32> = u_xlat4;
  let x_117 : f32 = x_111.x_GlobalMipBias.x;
  let x_118 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_117);
  u_xlat4 = x_118;
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_121, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_132 : vec4<f32> = vs_TEXCOORD1;
  let x_135 : f32 = x_111.x_GlobalMipBias.x;
  let x_136 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_132.x, x_132.y), x_135);
  u_xlat5 = x_136;
  let x_142 : vec4<f32> = vs_TEXCOORD1;
  let x_145 : f32 = x_111.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_142.z, x_142.w), x_145);
  u_xlat6 = x_146;
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_156 : f32 = x_111.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_153.x, x_153.y), x_156);
  u_xlat7 = x_157;
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : f32 = x_111.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_163.z, x_163.w), x_166);
  u_xlat8 = x_167;
  let x_171 : f32 = u_xlat5.w;
  u_xlat9.x = x_171;
  let x_174 : f32 = u_xlat6.w;
  u_xlat9.y = x_174;
  let x_178 : f32 = u_xlat7.w;
  u_xlat9.z = x_178;
  let x_182 : f32 = u_xlat8.w;
  u_xlat9.w = x_182;
  let x_185 : vec4<f32> = u_xlat9;
  let x_188 : f32 = x_13.x_Smoothness0;
  let x_191 : f32 = x_13.x_Smoothness1;
  let x_194 : f32 = x_13.x_Smoothness2;
  let x_197 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_185 * vec4<f32>(x_188, x_191, x_194, x_197));
  let x_206 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_206);
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_209) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_212 : vec4<f32> = u_xlat9;
  let x_213 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_212 + -(x_213));
  let x_216 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_216 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_220 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_220, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_225 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_229);
  let x_232 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_232 + -(x_233));
  let x_238 : f32 = u_xlat12.x;
  let x_241 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_238 * x_241);
  let x_245 : f32 = u_xlat12.y;
  let x_248 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_245 * x_248);
  let x_252 : f32 = u_xlat12.z;
  let x_255 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.w;
  let x_262 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_259 * x_262);
  let x_265 : vec4<f32> = u_xlat11;
  let x_266 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_265 + x_266);
  let x_268 : bool = u_xlatb43;
  let x_269 : vec4<f32> = u_xlat11;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_270, x_269, vec4<bool>(x_268, x_268, x_268, x_268));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_275, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_277 : f32 = u_xlat43;
  u_xlat43 = (x_277 + 0.00006103515625f);
  let x_280 : vec4<f32> = u_xlat4;
  let x_281 : f32 = u_xlat43;
  u_xlat4 = (x_280 / vec4<f32>(x_281, x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_297 : vec3<f32> = (vec3<f32>(x_292.y, x_292.y, x_292.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat6;
  let x_302 : vec4<f32> = u_xlat12;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec4<f32> = u_xlat11;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.y, x_309.z)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.z, x_317.z, x_317.z) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat7;
  let x_327 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_338 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.w, x_335.w, x_335.w) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat8;
  let x_345 : vec4<f32> = u_xlat6;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_354;
  let x_357 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_357;
  let x_360 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_360;
  let x_363 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_363;
  let x_366 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_366;
  let x_369 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_369;
  let x_372 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_372;
  let x_375 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_375;
  let x_377 : vec4<f32> = u_xlat6;
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_377 + x_378);
  let x_381 : f32 = u_xlat0.z;
  u_xlat7.x = x_381;
  let x_384 : f32 = u_xlat1.z;
  u_xlat7.y = x_384;
  let x_387 : f32 = u_xlat2.z;
  u_xlat7.z = x_387;
  let x_390 : f32 = u_xlat3.y;
  u_xlat7.w = x_390;
  let x_392 : vec4<f32> = u_xlat9;
  let x_395 : f32 = x_13.x_Smoothness0;
  let x_397 : f32 = x_13.x_Smoothness1;
  let x_399 : f32 = x_13.x_Smoothness2;
  let x_401 : f32 = x_13.x_Smoothness3;
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_392) * vec4<f32>(x_395, x_397, x_399, x_401)) + x_404);
  let x_408 : f32 = x_13.x_LayerHasMask0;
  let x_411 : f32 = x_13.x_LayerHasMask1;
  let x_414 : f32 = x_13.x_LayerHasMask2;
  let x_417 : f32 = x_13.x_LayerHasMask3;
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_408, x_411, x_414, x_417) * x_419) + x_421);
  let x_424 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_424, x_425);
  let x_428 : f32 = u_xlat0.x;
  u_xlat7.x = x_428;
  let x_431 : f32 = u_xlat1.x;
  u_xlat7.y = x_431;
  let x_434 : f32 = u_xlat2.x;
  u_xlat7.z = x_434;
  let x_437 : f32 = u_xlat3.x;
  u_xlat7.w = x_437;
  let x_439 : vec4<f32> = u_xlat7;
  let x_442 : f32 = x_13.x_Metallic0;
  let x_445 : f32 = x_13.x_Metallic1;
  let x_448 : f32 = x_13.x_Metallic2;
  let x_451 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_439 + -(vec4<f32>(x_442, x_445, x_448, x_451)));
  let x_456 : f32 = x_13.x_LayerHasMask0;
  let x_458 : f32 = x_13.x_LayerHasMask1;
  let x_460 : f32 = x_13.x_LayerHasMask2;
  let x_462 : f32 = x_13.x_LayerHasMask3;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_13.x_Metallic0;
  let x_469 : f32 = x_13.x_Metallic1;
  let x_471 : f32 = x_13.x_Metallic2;
  let x_473 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_456, x_458, x_460, x_462) * x_464) + vec4<f32>(x_467, x_469, x_471, x_473));
  let x_476 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_476, x_477);
  let x_481 : f32 = u_xlat0.y;
  u_xlat3.x = x_481;
  let x_484 : f32 = u_xlat1.y;
  u_xlat3.y = x_484;
  let x_487 : f32 = u_xlat2.y;
  u_xlat3.z = x_487;
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_489) + x_491);
  let x_494 : f32 = x_13.x_LayerHasMask0;
  let x_496 : f32 = x_13.x_LayerHasMask1;
  let x_498 : f32 = x_13.x_LayerHasMask2;
  let x_500 : f32 = x_13.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + x_504);
  let x_507 : vec4<f32> = u_xlat4;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_507, x_508);
  let x_512 : f32 = x_111.unity_OrthoParams.w;
  u_xlatb1 = (x_512 == 0.0f);
  let x_517 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_517) + x_521);
  let x_523 : vec3<f32> = u_xlat15;
  let x_524 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_523, x_524);
  let x_528 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_528);
  let x_531 : vec3<f32> = u_xlat15;
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_531 * vec3<f32>(x_532.x, x_532.x, x_532.x));
  let x_536 : f32 = x_111.unity_MatrixV[0i].z;
  u_xlat2.x = x_536;
  let x_540 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat2.y = x_540;
  let x_544 : f32 = x_111.unity_MatrixV[2i].z;
  u_xlat2.z = x_544;
  let x_546 : bool = u_xlatb1;
  if (x_546) {
    let x_551 : vec3<f32> = u_xlat15;
    x_548 = x_551;
  } else {
    let x_553 : vec3<f32> = u_xlat2;
    x_548 = x_553;
  }
  let x_554 : vec3<f32> = x_548;
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : vec3<f32> = vs_TEXCOORD3;
  let x_559 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_558, x_559);
  let x_561 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_561);
  let x_563 : f32 = u_xlat43;
  let x_565 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_563, x_563, x_563) * x_565);
  let x_567 : vec3<f32> = vs_TEXCOORD7;
  let x_577 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres0;
  let x_580 : vec3<f32> = (x_567 + -(vec3<f32>(x_577.x, x_577.y, x_577.z)));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec3<f32> = vs_TEXCOORD7;
  let x_585 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres1;
  let x_588 : vec3<f32> = (x_583 + -(vec3<f32>(x_585.x, x_585.y, x_585.z)));
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = vs_TEXCOORD7;
  let x_594 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres2;
  let x_597 : vec3<f32> = (x_591 + -(vec3<f32>(x_594.x, x_594.y, x_594.z)));
  let x_598 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_575.x_CascadeShadowSplitSpheres3;
  let x_605 : vec3<f32> = (x_600 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat3;
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_608.x, x_608.y, x_608.z), vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_614 : vec4<f32> = u_xlat4;
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_620 : vec4<f32> = u_xlat6;
  let x_622 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_626 : vec4<f32> = u_xlat7;
  let x_628 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_634 : vec4<f32> = u_xlat3;
  let x_636 : vec4<f32> = x_575.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_634 < x_636);
  let x_639 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_639);
  let x_643 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_643);
  let x_647 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_647);
  let x_651 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_655);
  let x_660 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_660);
  let x_664 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_664);
  let x_667 : vec4<f32> = u_xlat3;
  let x_669 : vec4<f32> = u_xlat4;
  let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.y, x_667.z) + vec3<f32>(x_669.y, x_669.z, x_669.w));
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = max(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_678.x, x_677.x, x_677.y, x_677.z);
  let x_680 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_680, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_685 : f32 = u_xlat43;
  u_xlat43 = (-(x_685) + 4.0f);
  let x_690 : f32 = u_xlat43;
  u_xlatu43 = u32(x_690);
  let x_694 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_694) << bitcast<u32>(2i));
  let x_697 : vec3<f32> = vs_TEXCOORD7;
  let x_699 : i32 = u_xlati43;
  let x_702 : i32 = u_xlati43;
  let x_706 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_699 + 1i) / 4i)][((x_702 + 1i) % 4i)];
  let x_708 : vec3<f32> = (vec3<f32>(x_697.y, x_697.y, x_697.y) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : i32 = u_xlati43;
  let x_713 : i32 = u_xlati43;
  let x_716 : vec4<f32> = x_575.x_MainLightWorldToShadow[(x_711 / 4i)][(x_713 % 4i)];
  let x_718 : vec3<f32> = vs_TEXCOORD7;
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec3<f32> = ((vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718.x, x_718.x, x_718.x)) + vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : i32 = u_xlati43;
  let x_729 : i32 = u_xlati43;
  let x_733 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_726 + 2i) / 4i)][((x_729 + 2i) % 4i)];
  let x_735 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.z, x_735.z, x_735.z)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : i32 = u_xlati43;
  let x_748 : i32 = u_xlati43;
  let x_752 : vec4<f32> = x_575.x_MainLightWorldToShadow[((x_745 + 3i) / 4i)][((x_748 + 3i) % 4i)];
  let x_754 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) + vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_759 : f32 = vs_TEXCOORD7.y;
  let x_761 : f32 = x_111.unity_MatrixV[1i].z;
  u_xlat43 = (x_759 * x_761);
  let x_764 : f32 = x_111.unity_MatrixV[0i].z;
  let x_766 : f32 = vs_TEXCOORD7.x;
  let x_768 : f32 = u_xlat43;
  u_xlat43 = ((x_764 * x_766) + x_768);
  let x_771 : f32 = x_111.unity_MatrixV[2i].z;
  let x_773 : f32 = vs_TEXCOORD7.z;
  let x_775 : f32 = u_xlat43;
  u_xlat43 = ((x_771 * x_773) + x_775);
  let x_777 : f32 = u_xlat43;
  let x_779 : f32 = x_111.unity_MatrixV[3i].z;
  u_xlat43 = (x_777 + x_779);
  let x_781 : f32 = u_xlat43;
  let x_784 : f32 = x_111.x_ProjectionParams.y;
  u_xlat43 = (-(x_781) + -(x_784));
  let x_787 : f32 = u_xlat43;
  u_xlat43 = max(x_787, 0.0f);
  let x_789 : f32 = u_xlat43;
  let x_791 : f32 = x_111.unity_FogParams.x;
  u_xlat43 = (x_789 * x_791);
  let x_798 : vec4<f32> = vs_TEXCOORD0;
  let x_801 : f32 = x_111.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_798.z, x_798.w), x_801);
  u_xlat4 = x_802;
  let x_807 : vec4<f32> = vs_TEXCOORD0;
  let x_810 : f32 = x_111.x_GlobalMipBias.x;
  let x_811 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_807.z, x_807.w), x_810);
  let x_812 : vec3<f32> = vec3<f32>(x_811.x, x_811.y, x_811.z);
  let x_813 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec4<f32> = u_xlat4;
  let x_819 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_820 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_823 : vec3<f32> = u_xlat2;
  let x_824 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_823, vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : f32 = u_xlat44;
  u_xlat44 = (x_827 + 0.5f);
  let x_829 : f32 = u_xlat44;
  let x_831 : vec4<f32> = u_xlat6;
  let x_833 : vec3<f32> = (vec3<f32>(x_829, x_829, x_829) * vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_837 : f32 = u_xlat4.w;
  u_xlat44 = max(x_837, 0.00009999999747378752f);
  let x_840 : vec4<f32> = u_xlat4;
  let x_842 : f32 = u_xlat44;
  let x_844 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) / vec3<f32>(x_842, x_842, x_842));
  let x_845 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_848) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_854 : f32 = u_xlat28;
  let x_855 : f32 = u_xlat44;
  u_xlat45 = (x_854 + -(x_855));
  let x_858 : f32 = u_xlat44;
  let x_860 : vec4<f32> = u_xlat5;
  let x_862 : vec3<f32> = (vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat5;
  let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_870 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec3<f32> = u_xlat0;
  let x_874 : vec4<f32> = u_xlat5;
  let x_879 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * vec3<f32>(x_874.x, x_874.y, x_874.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_880 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : f32 = u_xlat28;
  u_xlat0.x = (-(x_882) + 1.0f);
  let x_887 : f32 = u_xlat0.x;
  let x_889 : f32 = u_xlat0.x;
  u_xlat28 = (x_887 * x_889);
  let x_891 : f32 = u_xlat28;
  u_xlat28 = max(x_891, 0.0078125f);
  let x_894 : f32 = u_xlat28;
  let x_895 : f32 = u_xlat28;
  u_xlat44 = (x_894 * x_895);
  let x_897 : f32 = u_xlat45;
  u_xlat45 = (x_897 + 1.0f);
  let x_899 : f32 = u_xlat45;
  u_xlat45 = clamp(x_899, 0.0f, 1.0f);
  let x_902 : f32 = u_xlat28;
  u_xlat46 = ((x_902 * 4.0f) + 2.0f);
  let x_905 : f32 = u_xlat14;
  u_xlat14 = min(x_905, 1.0f);
  let x_908 : vec4<f32> = u_xlat3;
  let x_909 : vec2<f32> = vec2<f32>(x_908.x, x_908.y);
  let x_911 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_909.x, x_909.y, x_911);
  let x_923 : vec3<f32> = txVec0;
  let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_923.xy, x_923.z);
  u_xlat3.x = x_925;
  let x_929 : f32 = x_575.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_929) + 1.0f);
  let x_933 : f32 = u_xlat3.x;
  let x_935 : f32 = x_575.x_MainLightShadowParams.x;
  let x_937 : f32 = u_xlat17;
  u_xlat3.x = ((x_933 * x_935) + x_937);
  let x_942 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_942);
  let x_946 : f32 = u_xlat3.z;
  u_xlatb31 = (x_946 >= 1.0f);
  let x_948 : bool = u_xlatb31;
  let x_949 : bool = u_xlatb17;
  u_xlatb17 = (x_948 | x_949);
  let x_951 : bool = u_xlatb17;
  if (x_951) {
    x_953 = 1.0f;
  } else {
    let x_958 : f32 = u_xlat3.x;
    x_953 = x_958;
  }
  let x_959 : f32 = x_953;
  u_xlat3.x = x_959;
  let x_961 : vec3<f32> = vs_TEXCOORD7;
  let x_963 : vec3<f32> = x_111.x_WorldSpaceCameraPos;
  let x_965 : vec3<f32> = (x_961 + -(x_963));
  let x_966 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec4<f32> = u_xlat7;
  let x_970 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_968.x, x_968.y, x_968.z), vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_974 : f32 = u_xlat17;
  let x_976 : f32 = x_575.x_MainLightShadowParams.z;
  let x_979 : f32 = x_575.x_MainLightShadowParams.w;
  u_xlat31 = ((x_974 * x_976) + x_979);
  let x_981 : f32 = u_xlat31;
  u_xlat31 = clamp(x_981, 0.0f, 1.0f);
  let x_985 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_985) + 1.0f);
  let x_988 : f32 = u_xlat31;
  let x_989 : f32 = u_xlat47;
  let x_992 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_988 * x_989) + x_992);
  let x_1002 : f32 = x_1000.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_1002 == -1.0f));
  let x_1004 : bool = u_xlatb31;
  if (x_1004) {
    let x_1007 : vec3<f32> = vs_TEXCOORD7;
    let x_1010 : vec4<f32> = x_1000.x_MainLightWorldToLight[1i];
    let x_1012 : vec2<f32> = (vec2<f32>(x_1007.y, x_1007.y) * vec2<f32>(x_1010.x, x_1010.y));
    let x_1013 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1012.x, x_1012.y, x_1013.z, x_1013.w);
    let x_1016 : vec4<f32> = x_1000.x_MainLightWorldToLight[0i];
    let x_1018 : vec3<f32> = vs_TEXCOORD7;
    let x_1021 : vec4<f32> = u_xlat7;
    let x_1023 : vec2<f32> = ((vec2<f32>(x_1016.x, x_1016.y) * vec2<f32>(x_1018.x, x_1018.x)) + vec2<f32>(x_1021.x, x_1021.y));
    let x_1024 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1023.x, x_1023.y, x_1024.z, x_1024.w);
    let x_1027 : vec4<f32> = x_1000.x_MainLightWorldToLight[2i];
    let x_1029 : vec3<f32> = vs_TEXCOORD7;
    let x_1032 : vec4<f32> = u_xlat7;
    let x_1034 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1029.z, x_1029.z)) + vec2<f32>(x_1032.x, x_1032.y));
    let x_1035 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
    let x_1037 : vec4<f32> = u_xlat7;
    let x_1040 : vec4<f32> = x_1000.x_MainLightWorldToLight[3i];
    let x_1042 : vec2<f32> = (vec2<f32>(x_1037.x, x_1037.y) + vec2<f32>(x_1040.x, x_1040.y));
    let x_1043 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
    let x_1045 : vec4<f32> = u_xlat7;
    let x_1048 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1049 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
    let x_1056 : vec4<f32> = u_xlat7;
    let x_1059 : f32 = x_111.x_GlobalMipBias.x;
    let x_1060 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1056.x, x_1056.y), x_1059);
    u_xlat7 = x_1060;
    let x_1065 : f32 = x_1000.x_MainLightCookieTextureFormat;
    let x_1067 : f32 = x_1000.x_MainLightCookieTextureFormat;
    let x_1069 : f32 = x_1000.x_MainLightCookieTextureFormat;
    let x_1071 : f32 = x_1000.x_MainLightCookieTextureFormat;
    let x_1072 : vec4<f32> = vec4<f32>(x_1065, x_1067, x_1069, x_1071);
    let x_1079 : vec4<bool> = (vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1072.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1079.x, x_1079.y);
    let x_1082 : bool = u_xlatb8.y;
    if (x_1082) {
      let x_1087 : f32 = u_xlat7.w;
      x_1083 = x_1087;
    } else {
      let x_1090 : f32 = u_xlat7.x;
      x_1083 = x_1090;
    }
    let x_1091 : f32 = x_1083;
    u_xlat31 = x_1091;
    let x_1093 : bool = u_xlatb8.x;
    if (x_1093) {
      let x_1097 : vec4<f32> = u_xlat7;
      x_1094 = vec3<f32>(x_1097.x, x_1097.y, x_1097.z);
    } else {
      let x_1100 : f32 = u_xlat31;
      x_1094 = vec3<f32>(x_1100, x_1100, x_1100);
    }
    let x_1102 : vec3<f32> = x_1094;
    let x_1103 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1109 : vec4<f32> = u_xlat7;
  let x_1112 : vec4<f32> = x_111.x_MainLightColor;
  let x_1114 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) * vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
  let x_1115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat1;
  let x_1120 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(-(vec3<f32>(x_1117.x, x_1117.y, x_1117.z)), x_1120);
  let x_1122 : f32 = u_xlat31;
  let x_1123 : f32 = u_xlat31;
  u_xlat31 = (x_1122 + x_1123);
  let x_1125 : vec3<f32> = u_xlat2;
  let x_1126 : f32 = u_xlat31;
  let x_1130 : vec4<f32> = u_xlat1;
  let x_1133 : vec3<f32> = ((x_1125 * -(vec3<f32>(x_1126, x_1126, x_1126))) + -(vec3<f32>(x_1130.x, x_1130.y, x_1130.z)));
  let x_1134 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
  let x_1136 : vec3<f32> = u_xlat2;
  let x_1137 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(x_1136, vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1140, 0.0f, 1.0f);
  let x_1142 : f32 = u_xlat31;
  u_xlat31 = (-(x_1142) + 1.0f);
  let x_1145 : f32 = u_xlat31;
  let x_1146 : f32 = u_xlat31;
  u_xlat31 = (x_1145 * x_1146);
  let x_1148 : f32 = u_xlat31;
  let x_1149 : f32 = u_xlat31;
  u_xlat31 = (x_1148 * x_1149);
  let x_1152 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1152) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1159 : f32 = u_xlat0.x;
  let x_1160 : f32 = u_xlat47;
  u_xlat0.x = (x_1159 * x_1160);
  let x_1164 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1164 * 6.0f);
  let x_1176 : vec4<f32> = u_xlat8;
  let x_1179 : f32 = u_xlat0.x;
  let x_1180 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1176.x, x_1176.y, x_1176.z), x_1179);
  u_xlat8 = x_1180;
  let x_1182 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1182 + -1.0f);
  let x_1190 : f32 = x_1188.unity_SpecCube0_HDR.w;
  let x_1192 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1190 * x_1192) + 1.0f);
  let x_1197 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1197, 0.0f);
  let x_1201 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1201);
  let x_1205 : f32 = u_xlat0.x;
  let x_1207 : f32 = x_1188.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1205 * x_1207);
  let x_1211 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1211);
  let x_1215 : f32 = u_xlat0.x;
  let x_1217 : f32 = x_1188.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1215 * x_1217);
  let x_1220 : vec4<f32> = u_xlat8;
  let x_1222 : vec3<f32> = u_xlat0;
  let x_1224 : vec3<f32> = (vec3<f32>(x_1220.x, x_1220.y, x_1220.z) * vec3<f32>(x_1222.x, x_1222.x, x_1222.x));
  let x_1225 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1227 : f32 = u_xlat28;
  let x_1229 : f32 = u_xlat28;
  let x_1233 : vec2<f32> = ((vec2<f32>(x_1227, x_1227) * vec2<f32>(x_1229, x_1229)) + vec2<f32>(-1.0f, 1.0f));
  let x_1234 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1233.x, x_1234.y, x_1233.y);
  let x_1237 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1237);
  let x_1239 : vec4<f32> = u_xlat5;
  let x_1242 : f32 = u_xlat45;
  let x_1244 : vec3<f32> = (-(vec3<f32>(x_1239.x, x_1239.y, x_1239.z)) + vec3<f32>(x_1242, x_1242, x_1242));
  let x_1245 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1247 : f32 = u_xlat31;
  let x_1249 : vec4<f32> = u_xlat9;
  let x_1252 : vec4<f32> = u_xlat5;
  let x_1254 : vec3<f32> = ((vec3<f32>(x_1247, x_1247, x_1247) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z)) + vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
  let x_1255 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
  let x_1257 : f32 = u_xlat28;
  let x_1259 : vec4<f32> = u_xlat9;
  let x_1261 : vec3<f32> = (vec3<f32>(x_1257, x_1257, x_1257) * vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1264 : vec4<f32> = u_xlat8;
  let x_1266 : vec4<f32> = u_xlat9;
  let x_1268 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) * vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
  let x_1271 : vec4<f32> = u_xlat4;
  let x_1273 : vec4<f32> = u_xlat6;
  let x_1276 : vec4<f32> = u_xlat8;
  let x_1278 : vec3<f32> = ((vec3<f32>(x_1271.x, x_1271.y, x_1271.z) * vec3<f32>(x_1273.x, x_1273.y, x_1273.z)) + vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1282 : f32 = u_xlat3.x;
  let x_1284 : f32 = x_1188.unity_LightData.z;
  u_xlat28 = (x_1282 * x_1284);
  let x_1286 : vec3<f32> = u_xlat2;
  let x_1288 : vec4<f32> = x_111.x_MainLightPosition;
  u_xlat3.x = dot(x_1286, vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1293 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1293, 0.0f, 1.0f);
  let x_1296 : f32 = u_xlat28;
  let x_1298 : f32 = u_xlat3.x;
  u_xlat28 = (x_1296 * x_1298);
  let x_1300 : f32 = u_xlat28;
  let x_1302 : vec4<f32> = u_xlat7;
  let x_1304 : vec3<f32> = (vec3<f32>(x_1300, x_1300, x_1300) * vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
  let x_1305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1304.x, x_1305.y, x_1304.y, x_1304.z);
  let x_1307 : vec4<f32> = u_xlat1;
  let x_1310 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1312 : vec3<f32> = (vec3<f32>(x_1307.x, x_1307.y, x_1307.z) + vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
  let x_1313 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec4<f32> = u_xlat7;
  let x_1317 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1315.x, x_1315.y, x_1315.z), vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
  let x_1320 : f32 = u_xlat28;
  u_xlat28 = max(x_1320, 1.17549435e-38f);
  let x_1323 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1323);
  let x_1325 : f32 = u_xlat28;
  let x_1327 : vec4<f32> = u_xlat7;
  let x_1329 : vec3<f32> = (vec3<f32>(x_1325, x_1325, x_1325) * vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
  let x_1330 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
  let x_1332 : vec3<f32> = u_xlat2;
  let x_1333 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1332, vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
  let x_1336 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1336, 0.0f, 1.0f);
  let x_1339 : vec4<f32> = x_111.x_MainLightPosition;
  let x_1341 : vec4<f32> = u_xlat7;
  u_xlat47 = dot(vec3<f32>(x_1339.x, x_1339.y, x_1339.z), vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1344, 0.0f, 1.0f);
  let x_1346 : f32 = u_xlat28;
  let x_1347 : f32 = u_xlat28;
  u_xlat28 = (x_1346 * x_1347);
  let x_1349 : f32 = u_xlat28;
  let x_1351 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1349 * x_1351) + 1.00001001358032226562f);
  let x_1355 : f32 = u_xlat47;
  let x_1356 : f32 = u_xlat47;
  u_xlat47 = (x_1355 * x_1356);
  let x_1358 : f32 = u_xlat28;
  let x_1359 : f32 = u_xlat28;
  u_xlat28 = (x_1358 * x_1359);
  let x_1361 : f32 = u_xlat47;
  u_xlat47 = max(x_1361, 0.10000000149011611938f);
  let x_1364 : f32 = u_xlat28;
  let x_1365 : f32 = u_xlat47;
  u_xlat28 = (x_1364 * x_1365);
  let x_1367 : f32 = u_xlat46;
  let x_1368 : f32 = u_xlat28;
  u_xlat28 = (x_1367 * x_1368);
  let x_1370 : f32 = u_xlat44;
  let x_1371 : f32 = u_xlat28;
  u_xlat28 = (x_1370 / x_1371);
  let x_1373 : vec4<f32> = u_xlat5;
  let x_1375 : f32 = u_xlat28;
  let x_1378 : vec4<f32> = u_xlat6;
  let x_1380 : vec3<f32> = ((vec3<f32>(x_1373.x, x_1373.y, x_1373.z) * vec3<f32>(x_1375, x_1375, x_1375)) + vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
  let x_1381 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
  let x_1383 : vec4<f32> = u_xlat3;
  let x_1385 : vec4<f32> = u_xlat7;
  let x_1387 : vec3<f32> = (vec3<f32>(x_1383.x, x_1383.z, x_1383.w) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
  let x_1388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1387.x, x_1388.y, x_1387.y, x_1387.z);
  let x_1391 : f32 = x_111.x_AdditionalLightsCount.x;
  let x_1393 : f32 = x_1188.unity_LightData.y;
  u_xlat28 = min(x_1391, x_1393);
  let x_1396 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1396));
  let x_1399 : f32 = u_xlat17;
  let x_1401 : f32 = x_575.x_AdditionalShadowFadeParams.x;
  let x_1404 : f32 = x_575.x_AdditionalShadowFadeParams.y;
  u_xlat17 = ((x_1399 * x_1401) + x_1404);
  let x_1406 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1406, 0.0f, 1.0f);
  let x_1410 : f32 = x_1000.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1412 : f32 = x_1000.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1414 : f32 = x_1000.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1416 : f32 = x_1000.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1417 : vec4<f32> = vec4<f32>(x_1410, x_1412, x_1414, x_1416);
  let x_1423 : vec4<bool> = (vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1417.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1423.x, x_1423.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1435 : u32 = u_xlatu_loop_1;
    let x_1436 : u32 = u_xlatu28;
    if ((x_1435 < x_1436)) {
    } else {
      break;
    }
    let x_1439 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1439 >> 2u);
    let x_1442 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1442 & 3u));
    let x_1446 : u32 = u_xlatu48;
    let x_1449 : vec4<f32> = x_1188.unity_LightIndices[bitcast<i32>(x_1446)];
    let x_1459 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1464 : vec4<u32> = indexable[x_1459];
    u_xlat48 = dot(x_1449, bitcast<vec4<f32>>(x_1464));
    let x_1468 : f32 = u_xlat48;
    u_xlati48 = i32(x_1468);
    let x_1470 : vec3<f32> = vs_TEXCOORD7;
    let x_1481 : i32 = u_xlati48;
    let x_1483 : vec4<f32> = x_1480.x_AdditionalLightsPosition[x_1481];
    let x_1486 : i32 = u_xlati48;
    let x_1488 : vec4<f32> = x_1480.x_AdditionalLightsPosition[x_1486];
    let x_1490 : vec3<f32> = ((-(x_1470) * vec3<f32>(x_1483.w, x_1483.w, x_1483.w)) + vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
    let x_1491 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1491.w);
    let x_1494 : vec4<f32> = u_xlat9;
    let x_1496 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1494.x, x_1494.y, x_1494.z), vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
    let x_1499 : f32 = u_xlat35;
    u_xlat35 = max(x_1499, 0.00006103515625f);
    let x_1502 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1502);
    let x_1504 : f32 = u_xlat49;
    let x_1506 : vec4<f32> = u_xlat9;
    let x_1508 : vec3<f32> = (vec3<f32>(x_1504, x_1504, x_1504) * vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
    let x_1509 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    let x_1512 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1512);
    let x_1514 : f32 = u_xlat35;
    let x_1515 : i32 = u_xlati48;
    let x_1517 : f32 = x_1480.x_AdditionalLightsAttenuation[x_1515].x;
    u_xlat35 = (x_1514 * x_1517);
    let x_1519 : f32 = u_xlat35;
    let x_1521 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1519) * x_1521) + 1.0f);
    let x_1524 : f32 = u_xlat35;
    u_xlat35 = max(x_1524, 0.0f);
    let x_1526 : f32 = u_xlat35;
    let x_1527 : f32 = u_xlat35;
    u_xlat35 = (x_1526 * x_1527);
    let x_1529 : f32 = u_xlat35;
    let x_1530 : f32 = u_xlat50;
    u_xlat35 = (x_1529 * x_1530);
    let x_1532 : i32 = u_xlati48;
    let x_1534 : vec4<f32> = x_1480.x_AdditionalLightsSpotDir[x_1532];
    let x_1536 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1534.x, x_1534.y, x_1534.z), vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
    let x_1539 : f32 = u_xlat50;
    let x_1540 : i32 = u_xlati48;
    let x_1542 : f32 = x_1480.x_AdditionalLightsAttenuation[x_1540].z;
    let x_1544 : i32 = u_xlati48;
    let x_1546 : f32 = x_1480.x_AdditionalLightsAttenuation[x_1544].w;
    u_xlat50 = ((x_1539 * x_1542) + x_1546);
    let x_1548 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1548, 0.0f, 1.0f);
    let x_1550 : f32 = u_xlat50;
    let x_1551 : f32 = u_xlat50;
    u_xlat50 = (x_1550 * x_1551);
    let x_1553 : f32 = u_xlat35;
    let x_1554 : f32 = u_xlat50;
    u_xlat35 = (x_1553 * x_1554);
    let x_1557 : i32 = u_xlati48;
    let x_1559 : f32 = x_575.x_AdditionalShadowParams[x_1557].w;
    u_xlati50 = i32(x_1559);
    let x_1562 : i32 = u_xlati50;
    u_xlatb51 = (x_1562 >= 0i);
    let x_1564 : bool = u_xlatb51;
    if (x_1564) {
      let x_1568 : i32 = u_xlati48;
      let x_1570 : f32 = x_575.x_AdditionalShadowParams[x_1568].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1570, x_1570, x_1570, x_1570))));
      let x_1574 : bool = u_xlatb51;
      if (x_1574) {
        let x_1578 : vec4<f32> = u_xlat10;
        let x_1581 : vec4<f32> = u_xlat10;
        let x_1584 : vec4<bool> = (abs(vec4<f32>(x_1578.z, x_1578.z, x_1578.y, x_1578.z)) >= abs(vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.x)));
        let x_1586 : vec3<bool> = vec3<bool>(x_1584.x, x_1584.y, x_1584.z);
        let x_1587 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
        let x_1590 : bool = u_xlatb11.y;
        let x_1592 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1590 & x_1592);
        let x_1594 : vec4<f32> = u_xlat10;
        let x_1597 : vec4<bool> = (-(vec4<f32>(x_1594.z, x_1594.y, x_1594.z, x_1594.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1598 : vec3<bool> = vec3<bool>(x_1597.x, x_1597.y, x_1597.w);
        let x_1599 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1598.x, x_1598.y, x_1599.z, x_1598.z);
        let x_1602 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1602);
        let x_1607 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1607);
        let x_1612 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1612);
        let x_1615 : bool = u_xlatb11.z;
        if (x_1615) {
          let x_1620 : f32 = u_xlat11.y;
          x_1616 = x_1620;
        } else {
          let x_1622 : f32 = u_xlat52;
          x_1616 = x_1622;
        }
        let x_1623 : f32 = x_1616;
        u_xlat52 = x_1623;
        let x_1625 : bool = u_xlatb51;
        if (x_1625) {
          let x_1630 : f32 = u_xlat11.x;
          x_1626 = x_1630;
        } else {
          let x_1632 : f32 = u_xlat52;
          x_1626 = x_1632;
        }
        let x_1633 : f32 = x_1626;
        u_xlat51 = x_1633;
        let x_1634 : i32 = u_xlati48;
        let x_1636 : f32 = x_575.x_AdditionalShadowParams[x_1634].w;
        u_xlat52 = trunc(x_1636);
        let x_1638 : f32 = u_xlat51;
        let x_1639 : f32 = u_xlat52;
        u_xlat51 = (x_1638 + x_1639);
        let x_1641 : f32 = u_xlat51;
        u_xlati50 = i32(x_1641);
      }
      let x_1643 : i32 = u_xlati50;
      u_xlati50 = (x_1643 << bitcast<u32>(2i));
      let x_1645 : vec3<f32> = vs_TEXCOORD7;
      let x_1647 : i32 = u_xlati50;
      let x_1650 : i32 = u_xlati50;
      let x_1654 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_1647 + 1i) / 4i)][((x_1650 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1645.y, x_1645.y, x_1645.y, x_1645.y) * x_1654);
      let x_1656 : i32 = u_xlati50;
      let x_1658 : i32 = u_xlati50;
      let x_1661 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[(x_1656 / 4i)][(x_1658 % 4i)];
      let x_1662 : vec3<f32> = vs_TEXCOORD7;
      let x_1665 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1661 * vec4<f32>(x_1662.x, x_1662.x, x_1662.x, x_1662.x)) + x_1665);
      let x_1667 : i32 = u_xlati50;
      let x_1670 : i32 = u_xlati50;
      let x_1674 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_1667 + 2i) / 4i)][((x_1670 + 2i) % 4i)];
      let x_1675 : vec3<f32> = vs_TEXCOORD7;
      let x_1678 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1674 * vec4<f32>(x_1675.z, x_1675.z, x_1675.z, x_1675.z)) + x_1678);
      let x_1680 : vec4<f32> = u_xlat11;
      let x_1681 : i32 = u_xlati50;
      let x_1684 : i32 = u_xlati50;
      let x_1688 : vec4<f32> = x_575.x_AdditionalLightsWorldToShadow[((x_1681 + 3i) / 4i)][((x_1684 + 3i) % 4i)];
      u_xlat11 = (x_1680 + x_1688);
      let x_1690 : vec4<f32> = u_xlat11;
      let x_1692 : vec4<f32> = u_xlat11;
      let x_1694 : vec3<f32> = (vec3<f32>(x_1690.x, x_1690.y, x_1690.z) / vec3<f32>(x_1692.w, x_1692.w, x_1692.w));
      let x_1695 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
      let x_1698 : vec4<f32> = u_xlat11;
      let x_1699 : vec2<f32> = vec2<f32>(x_1698.x, x_1698.y);
      let x_1701 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
      let x_1709 : vec3<f32> = txVec1;
      let x_1711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1709.xy, x_1709.z);
      u_xlat50 = x_1711;
      let x_1712 : i32 = u_xlati48;
      let x_1714 : f32 = x_575.x_AdditionalShadowParams[x_1712].x;
      u_xlat51 = (1.0f + -(x_1714));
      let x_1717 : f32 = u_xlat50;
      let x_1718 : i32 = u_xlati48;
      let x_1720 : f32 = x_575.x_AdditionalShadowParams[x_1718].x;
      let x_1722 : f32 = u_xlat51;
      u_xlat50 = ((x_1717 * x_1720) + x_1722);
      let x_1725 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1725);
      let x_1729 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1729 >= 1.0f);
      let x_1731 : bool = u_xlatb51;
      let x_1732 : bool = u_xlatb52;
      u_xlatb51 = (x_1731 | x_1732);
      let x_1734 : bool = u_xlatb51;
      let x_1735 : f32 = u_xlat50;
      u_xlat50 = select(x_1735, 1.0f, x_1734);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1738 : f32 = u_xlat50;
    u_xlat51 = (-(x_1738) + 1.0f);
    let x_1741 : f32 = u_xlat17;
    let x_1742 : f32 = u_xlat51;
    let x_1744 : f32 = u_xlat50;
    u_xlat50 = ((x_1741 * x_1742) + x_1744);
    let x_1747 : i32 = u_xlati48;
    u_xlati51 = (1i << bitcast<u32>((x_1747 & 31i)));
    let x_1750 : i32 = u_xlati51;
    let x_1753 : f32 = x_1000.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1750) & bitcast<u32>(x_1753)));
    let x_1757 : i32 = u_xlati51;
    if ((x_1757 != 0i)) {
      let x_1761 : i32 = u_xlati48;
      let x_1763 : f32 = x_1000.x_AdditionalLightsLightTypes[x_1761].el;
      u_xlati51 = i32(x_1763);
      let x_1766 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1766 != 0i));
      let x_1770 : i32 = u_xlati48;
      u_xlati11 = (x_1770 << bitcast<u32>(2i));
      let x_1772 : i32 = u_xlati52;
      if ((x_1772 != 0i)) {
        let x_1777 : vec3<f32> = vs_TEXCOORD7;
        let x_1779 : i32 = u_xlati11;
        let x_1782 : i32 = u_xlati11;
        let x_1786 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[((x_1779 + 1i) / 4i)][((x_1782 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1777.y, x_1777.y, x_1777.y) * vec3<f32>(x_1786.x, x_1786.y, x_1786.w));
        let x_1789 : i32 = u_xlati11;
        let x_1791 : i32 = u_xlati11;
        let x_1794 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[(x_1789 / 4i)][(x_1791 % 4i)];
        let x_1796 : vec3<f32> = vs_TEXCOORD7;
        let x_1799 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1794.x, x_1794.y, x_1794.w) * vec3<f32>(x_1796.x, x_1796.x, x_1796.x)) + x_1799);
        let x_1801 : i32 = u_xlati11;
        let x_1804 : i32 = u_xlati11;
        let x_1808 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[((x_1801 + 2i) / 4i)][((x_1804 + 2i) % 4i)];
        let x_1810 : vec3<f32> = vs_TEXCOORD7;
        let x_1813 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1808.x, x_1808.y, x_1808.w) * vec3<f32>(x_1810.z, x_1810.z, x_1810.z)) + x_1813);
        let x_1815 : vec3<f32> = u_xlat25;
        let x_1816 : i32 = u_xlati11;
        let x_1819 : i32 = u_xlati11;
        let x_1823 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[((x_1816 + 3i) / 4i)][((x_1819 + 3i) % 4i)];
        u_xlat25 = (x_1815 + vec3<f32>(x_1823.x, x_1823.y, x_1823.w));
        let x_1826 : vec3<f32> = u_xlat25;
        let x_1828 : vec3<f32> = u_xlat25;
        let x_1830 : vec2<f32> = (vec2<f32>(x_1826.x, x_1826.y) / vec2<f32>(x_1828.z, x_1828.z));
        let x_1831 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1830.x, x_1830.y, x_1831.z);
        let x_1833 : vec3<f32> = u_xlat25;
        let x_1836 : vec2<f32> = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1837 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1836.x, x_1836.y, x_1837.z);
        let x_1839 : vec3<f32> = u_xlat25;
        let x_1843 : vec2<f32> = clamp(vec2<f32>(x_1839.x, x_1839.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1844 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1843.x, x_1843.y, x_1844.z);
        let x_1846 : i32 = u_xlati48;
        let x_1848 : vec4<f32> = x_1000.x_AdditionalLightsCookieAtlasUVRects[x_1846];
        let x_1850 : vec3<f32> = u_xlat25;
        let x_1853 : i32 = u_xlati48;
        let x_1855 : vec4<f32> = x_1000.x_AdditionalLightsCookieAtlasUVRects[x_1853];
        let x_1857 : vec2<f32> = ((vec2<f32>(x_1848.x, x_1848.y) * vec2<f32>(x_1850.x, x_1850.y)) + vec2<f32>(x_1855.z, x_1855.w));
        let x_1858 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1857.x, x_1857.y, x_1858.z);
      } else {
        let x_1861 : i32 = u_xlati51;
        u_xlatb51 = (x_1861 == 1i);
        let x_1863 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1863);
        let x_1865 : i32 = u_xlati51;
        if ((x_1865 != 0i)) {
          let x_1869 : vec3<f32> = vs_TEXCOORD7;
          let x_1871 : i32 = u_xlati11;
          let x_1874 : i32 = u_xlati11;
          let x_1878 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[((x_1871 + 1i) / 4i)][((x_1874 + 1i) % 4i)];
          let x_1880 : vec2<f32> = (vec2<f32>(x_1869.y, x_1869.y) * vec2<f32>(x_1878.x, x_1878.y));
          let x_1881 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1880.x, x_1880.y, x_1881.z, x_1881.w);
          let x_1883 : i32 = u_xlati11;
          let x_1885 : i32 = u_xlati11;
          let x_1888 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[(x_1883 / 4i)][(x_1885 % 4i)];
          let x_1890 : vec3<f32> = vs_TEXCOORD7;
          let x_1893 : vec4<f32> = u_xlat12;
          let x_1895 : vec2<f32> = ((vec2<f32>(x_1888.x, x_1888.y) * vec2<f32>(x_1890.x, x_1890.x)) + vec2<f32>(x_1893.x, x_1893.y));
          let x_1896 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1895.x, x_1895.y, x_1896.z, x_1896.w);
          let x_1898 : i32 = u_xlati11;
          let x_1901 : i32 = u_xlati11;
          let x_1905 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[((x_1898 + 2i) / 4i)][((x_1901 + 2i) % 4i)];
          let x_1907 : vec3<f32> = vs_TEXCOORD7;
          let x_1910 : vec4<f32> = u_xlat12;
          let x_1912 : vec2<f32> = ((vec2<f32>(x_1905.x, x_1905.y) * vec2<f32>(x_1907.z, x_1907.z)) + vec2<f32>(x_1910.x, x_1910.y));
          let x_1913 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1912.x, x_1912.y, x_1913.z, x_1913.w);
          let x_1915 : vec4<f32> = u_xlat12;
          let x_1917 : i32 = u_xlati11;
          let x_1920 : i32 = u_xlati11;
          let x_1924 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[((x_1917 + 3i) / 4i)][((x_1920 + 3i) % 4i)];
          let x_1926 : vec2<f32> = (vec2<f32>(x_1915.x, x_1915.y) + vec2<f32>(x_1924.x, x_1924.y));
          let x_1927 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1926.x, x_1926.y, x_1927.z, x_1927.w);
          let x_1929 : vec4<f32> = u_xlat12;
          let x_1932 : vec2<f32> = ((vec2<f32>(x_1929.x, x_1929.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1933 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1932.x, x_1932.y, x_1933.z, x_1933.w);
          let x_1935 : vec4<f32> = u_xlat12;
          let x_1937 : vec2<f32> = fract(vec2<f32>(x_1935.x, x_1935.y));
          let x_1938 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1937.x, x_1937.y, x_1938.z, x_1938.w);
          let x_1940 : i32 = u_xlati48;
          let x_1942 : vec4<f32> = x_1000.x_AdditionalLightsCookieAtlasUVRects[x_1940];
          let x_1944 : vec4<f32> = u_xlat12;
          let x_1947 : i32 = u_xlati48;
          let x_1949 : vec4<f32> = x_1000.x_AdditionalLightsCookieAtlasUVRects[x_1947];
          let x_1951 : vec2<f32> = ((vec2<f32>(x_1942.x, x_1942.y) * vec2<f32>(x_1944.x, x_1944.y)) + vec2<f32>(x_1949.z, x_1949.w));
          let x_1952 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1951.x, x_1951.y, x_1952.z);
        } else {
          let x_1955 : vec3<f32> = vs_TEXCOORD7;
          let x_1957 : i32 = u_xlati11;
          let x_1960 : i32 = u_xlati11;
          let x_1964 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[((x_1957 + 1i) / 4i)][((x_1960 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1955.y, x_1955.y, x_1955.y, x_1955.y) * x_1964);
          let x_1966 : i32 = u_xlati11;
          let x_1968 : i32 = u_xlati11;
          let x_1971 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[(x_1966 / 4i)][(x_1968 % 4i)];
          let x_1972 : vec3<f32> = vs_TEXCOORD7;
          let x_1975 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1971 * vec4<f32>(x_1972.x, x_1972.x, x_1972.x, x_1972.x)) + x_1975);
          let x_1977 : i32 = u_xlati11;
          let x_1980 : i32 = u_xlati11;
          let x_1984 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[((x_1977 + 2i) / 4i)][((x_1980 + 2i) % 4i)];
          let x_1985 : vec3<f32> = vs_TEXCOORD7;
          let x_1988 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1984 * vec4<f32>(x_1985.z, x_1985.z, x_1985.z, x_1985.z)) + x_1988);
          let x_1990 : vec4<f32> = u_xlat12;
          let x_1991 : i32 = u_xlati11;
          let x_1994 : i32 = u_xlati11;
          let x_1998 : vec4<f32> = x_1000.x_AdditionalLightsWorldToLights[((x_1991 + 3i) / 4i)][((x_1994 + 3i) % 4i)];
          u_xlat12 = (x_1990 + x_1998);
          let x_2000 : vec4<f32> = u_xlat12;
          let x_2002 : vec4<f32> = u_xlat12;
          let x_2004 : vec3<f32> = (vec3<f32>(x_2000.x, x_2000.y, x_2000.z) / vec3<f32>(x_2002.w, x_2002.w, x_2002.w));
          let x_2005 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
          let x_2007 : vec4<f32> = u_xlat12;
          let x_2009 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2007.x, x_2007.y, x_2007.z), vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
          let x_2012 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2012);
          let x_2014 : f32 = u_xlat51;
          let x_2016 : vec4<f32> = u_xlat12;
          let x_2018 : vec3<f32> = (vec3<f32>(x_2014, x_2014, x_2014) * vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
          let x_2019 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
          let x_2021 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2021.x, x_2021.y, x_2021.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2026 : f32 = u_xlat51;
          u_xlat51 = max(x_2026, 0.00000099999999747524f);
          let x_2029 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2029);
          let x_2031 : f32 = u_xlat51;
          let x_2033 : vec4<f32> = u_xlat12;
          let x_2035 : vec3<f32> = (vec3<f32>(x_2031, x_2031, x_2031) * vec3<f32>(x_2033.z, x_2033.x, x_2033.y));
          let x_2036 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
          let x_2039 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2039);
          let x_2043 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2043, 0.0f, 1.0f);
          let x_2046 : vec4<f32> = u_xlat13;
          let x_2048 : vec4<bool> = (vec4<f32>(x_2046.y, x_2046.y, x_2046.y, x_2046.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2049 : vec2<bool> = vec2<bool>(x_2048.x, x_2048.w);
          let x_2050 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2049.x, x_2050.y, x_2050.z, x_2049.y);
          let x_2053 : bool = u_xlatb11.x;
          if (x_2053) {
            let x_2058 : f32 = u_xlat13.x;
            x_2054 = x_2058;
          } else {
            let x_2061 : f32 = u_xlat13.x;
            x_2054 = -(x_2061);
          }
          let x_2063 : f32 = x_2054;
          u_xlat11.x = x_2063;
          let x_2066 : bool = u_xlatb11.w;
          if (x_2066) {
            let x_2071 : f32 = u_xlat13.x;
            x_2067 = x_2071;
          } else {
            let x_2074 : f32 = u_xlat13.x;
            x_2067 = -(x_2074);
          }
          let x_2076 : f32 = x_2067;
          u_xlat11.w = x_2076;
          let x_2078 : vec4<f32> = u_xlat12;
          let x_2080 : f32 = u_xlat51;
          let x_2083 : vec4<f32> = u_xlat11;
          let x_2085 : vec2<f32> = ((vec2<f32>(x_2078.x, x_2078.y) * vec2<f32>(x_2080, x_2080)) + vec2<f32>(x_2083.x, x_2083.w));
          let x_2086 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2085.x, x_2086.y, x_2086.z, x_2085.y);
          let x_2088 : vec4<f32> = u_xlat11;
          let x_2091 : vec2<f32> = ((vec2<f32>(x_2088.x, x_2088.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2092 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2091.x, x_2092.y, x_2092.z, x_2091.y);
          let x_2094 : vec4<f32> = u_xlat11;
          let x_2098 : vec2<f32> = clamp(vec2<f32>(x_2094.x, x_2094.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2099 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2098.x, x_2099.y, x_2099.z, x_2098.y);
          let x_2101 : i32 = u_xlati48;
          let x_2103 : vec4<f32> = x_1000.x_AdditionalLightsCookieAtlasUVRects[x_2101];
          let x_2105 : vec4<f32> = u_xlat11;
          let x_2108 : i32 = u_xlati48;
          let x_2110 : vec4<f32> = x_1000.x_AdditionalLightsCookieAtlasUVRects[x_2108];
          let x_2112 : vec2<f32> = ((vec2<f32>(x_2103.x, x_2103.y) * vec2<f32>(x_2105.x, x_2105.w)) + vec2<f32>(x_2110.z, x_2110.w));
          let x_2113 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2112.x, x_2112.y, x_2113.z);
        }
      }
      let x_2120 : vec3<f32> = u_xlat25;
      let x_2122 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2120.x, x_2120.y), 0.0f);
      u_xlat11 = x_2122;
      let x_2124 : bool = u_xlatb7.y;
      if (x_2124) {
        let x_2129 : f32 = u_xlat11.w;
        x_2125 = x_2129;
      } else {
        let x_2132 : f32 = u_xlat11.x;
        x_2125 = x_2132;
      }
      let x_2133 : f32 = x_2125;
      u_xlat51 = x_2133;
      let x_2135 : bool = u_xlatb7.x;
      if (x_2135) {
        let x_2139 : vec4<f32> = u_xlat11;
        x_2136 = vec3<f32>(x_2139.x, x_2139.y, x_2139.z);
      } else {
        let x_2142 : f32 = u_xlat51;
        x_2136 = vec3<f32>(x_2142, x_2142, x_2142);
      }
      let x_2144 : vec3<f32> = x_2136;
      let x_2145 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2144.x, x_2144.y, x_2144.z, x_2145.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2151 : vec4<f32> = u_xlat11;
    let x_2153 : i32 = u_xlati48;
    let x_2155 : vec4<f32> = x_1480.x_AdditionalLightsColor[x_2153];
    let x_2157 : vec3<f32> = (vec3<f32>(x_2151.x, x_2151.y, x_2151.z) * vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
    let x_2158 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
    let x_2160 : f32 = u_xlat35;
    let x_2161 : f32 = u_xlat50;
    u_xlat48 = (x_2160 * x_2161);
    let x_2163 : vec3<f32> = u_xlat2;
    let x_2164 : vec4<f32> = u_xlat10;
    u_xlat35 = dot(x_2163, vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
    let x_2167 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2167, 0.0f, 1.0f);
    let x_2169 : f32 = u_xlat48;
    let x_2170 : f32 = u_xlat35;
    u_xlat48 = (x_2169 * x_2170);
    let x_2172 : f32 = u_xlat48;
    let x_2174 : vec4<f32> = u_xlat11;
    let x_2176 : vec3<f32> = (vec3<f32>(x_2172, x_2172, x_2172) * vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
    let x_2177 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
    let x_2179 : vec4<f32> = u_xlat9;
    let x_2181 : f32 = u_xlat49;
    let x_2184 : vec4<f32> = u_xlat1;
    let x_2186 : vec3<f32> = ((vec3<f32>(x_2179.x, x_2179.y, x_2179.z) * vec3<f32>(x_2181, x_2181, x_2181)) + vec3<f32>(x_2184.x, x_2184.y, x_2184.z));
    let x_2187 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
    let x_2189 : vec4<f32> = u_xlat9;
    let x_2191 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2189.x, x_2189.y, x_2189.z), vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
    let x_2194 : f32 = u_xlat48;
    u_xlat48 = max(x_2194, 1.17549435e-38f);
    let x_2196 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_2196);
    let x_2198 : f32 = u_xlat48;
    let x_2200 : vec4<f32> = u_xlat9;
    let x_2202 : vec3<f32> = (vec3<f32>(x_2198, x_2198, x_2198) * vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
    let x_2203 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
    let x_2205 : vec3<f32> = u_xlat2;
    let x_2206 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(x_2205, vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
    let x_2209 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2209, 0.0f, 1.0f);
    let x_2211 : vec4<f32> = u_xlat10;
    let x_2213 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_2211.x, x_2211.y, x_2211.z), vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
    let x_2216 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2216, 0.0f, 1.0f);
    let x_2218 : f32 = u_xlat48;
    let x_2219 : f32 = u_xlat48;
    u_xlat48 = (x_2218 * x_2219);
    let x_2221 : f32 = u_xlat48;
    let x_2223 : f32 = u_xlat0.x;
    u_xlat48 = ((x_2221 * x_2223) + 1.00001001358032226562f);
    let x_2226 : f32 = u_xlat35;
    let x_2227 : f32 = u_xlat35;
    u_xlat35 = (x_2226 * x_2227);
    let x_2229 : f32 = u_xlat48;
    let x_2230 : f32 = u_xlat48;
    u_xlat48 = (x_2229 * x_2230);
    let x_2232 : f32 = u_xlat35;
    u_xlat35 = max(x_2232, 0.10000000149011611938f);
    let x_2234 : f32 = u_xlat48;
    let x_2235 : f32 = u_xlat35;
    u_xlat48 = (x_2234 * x_2235);
    let x_2237 : f32 = u_xlat46;
    let x_2238 : f32 = u_xlat48;
    u_xlat48 = (x_2237 * x_2238);
    let x_2240 : f32 = u_xlat44;
    let x_2241 : f32 = u_xlat48;
    u_xlat48 = (x_2240 / x_2241);
    let x_2243 : vec4<f32> = u_xlat5;
    let x_2245 : f32 = u_xlat48;
    let x_2248 : vec4<f32> = u_xlat6;
    let x_2250 : vec3<f32> = ((vec3<f32>(x_2243.x, x_2243.y, x_2243.z) * vec3<f32>(x_2245, x_2245, x_2245)) + vec3<f32>(x_2248.x, x_2248.y, x_2248.z));
    let x_2251 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
    let x_2253 : vec4<f32> = u_xlat9;
    let x_2255 : vec4<f32> = u_xlat11;
    let x_2258 : vec4<f32> = u_xlat8;
    let x_2260 : vec3<f32> = ((vec3<f32>(x_2253.x, x_2253.y, x_2253.z) * vec3<f32>(x_2255.x, x_2255.y, x_2255.z)) + vec3<f32>(x_2258.x, x_2258.y, x_2258.z));
    let x_2261 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);

    continuing {
      let x_2263 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2263 + bitcast<u32>(1i));
    }
  }
  let x_2265 : vec4<f32> = u_xlat4;
  let x_2267 : f32 = u_xlat14;
  let x_2270 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2265.x, x_2265.y, x_2265.z) * vec3<f32>(x_2267, x_2267, x_2267)) + vec3<f32>(x_2270.x, x_2270.z, x_2270.w));
  let x_2273 : vec4<f32> = u_xlat8;
  let x_2275 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2273.x, x_2273.y, x_2273.z) + x_2275);
  let x_2277 : f32 = u_xlat43;
  let x_2278 : f32 = u_xlat43;
  u_xlat1.x = (x_2277 * -(x_2278));
  let x_2283 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2283);
  let x_2286 : vec3<f32> = u_xlat0;
  let x_2287 : f32 = u_xlat42;
  let x_2291 : vec4<f32> = x_111.unity_FogColor;
  u_xlat0 = ((x_2286 * vec3<f32>(x_2287, x_2287, x_2287)) + -(vec3<f32>(x_2291.x, x_2291.y, x_2291.z)));
  let x_2297 : vec4<f32> = u_xlat1;
  let x_2299 : vec3<f32> = u_xlat0;
  let x_2302 : vec4<f32> = x_111.unity_FogColor;
  let x_2304 : vec3<f32> = ((vec3<f32>(x_2297.x, x_2297.x, x_2297.x) * x_2299) + vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
  let x_2305 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


