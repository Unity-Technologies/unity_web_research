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
  unity_MatrixV : mat4x4<f32>,
}

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
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(6) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_648 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_812 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(5) var<uniform> x_885 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1361 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

fn main_1() {
  var x_585 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_968 : f32;
  var x_979 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1498 : f32;
  var x_1508 : f32;
  var txVec1 : vec3<f32>;
  var x_1936 : f32;
  var x_1949 : f32;
  var x_2007 : f32;
  var x_2018 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_63 : vec4<f32> = x_59.x_MaskMapRemapScale0;
  let x_70 : vec4<f32> = x_59.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_63.x, x_63.y, x_63.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_70.x, x_70.y, x_70.w));
  let x_77 : vec4<f32> = x_59.x_MaskMapRemapScale1;
  let x_82 : vec4<f32> = x_59.x_MaskMapRemapOffset1;
  let x_84 : vec3<f32> = ((vec3<f32>(x_77.x, x_77.y, x_77.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_82.x, x_82.y, x_82.w));
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_90 : vec4<f32> = x_59.x_MaskMapRemapScale2;
  let x_95 : vec4<f32> = x_59.x_MaskMapRemapOffset2;
  let x_97 : vec3<f32> = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_103 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_108 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_110 : vec3<f32> = ((vec3<f32>(x_103.x, x_103.w, x_103.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_108.x, x_108.w, x_108.y));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_110.z);
  let x_116 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_120 : vec2<f32> = (vec2<f32>(x_116.z, x_116.w) + vec2<f32>(-1.0f, -1.0f));
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  let x_125 : vec4<f32> = u_xlat4;
  let x_129 : vec2<f32> = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.y)) + vec2<f32>(0.5f, 0.5f));
  let x_130 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat4;
  let x_135 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_137 : vec2<f32> = (vec2<f32>(x_132.x, x_132.y) * vec2<f32>(x_135.x, x_135.y));
  let x_138 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_145 : vec4<f32> = u_xlat4;
  let x_148 : f32 = x_29.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat4 = x_149;
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_151, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_162 : vec4<f32> = vs_TEXCOORD1;
  let x_165 : f32 = x_29.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_162.x, x_162.y), x_165);
  u_xlat5 = x_166;
  let x_172 : vec4<f32> = vs_TEXCOORD1;
  let x_175 : f32 = x_29.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_172.z, x_172.w), x_175);
  u_xlat6 = x_176;
  let x_183 : vec4<f32> = vs_TEXCOORD2;
  let x_186 : f32 = x_29.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_183.x, x_183.y), x_186);
  u_xlat7 = x_187;
  let x_193 : vec4<f32> = vs_TEXCOORD2;
  let x_196 : f32 = x_29.x_GlobalMipBias.x;
  let x_197 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_193.z, x_193.w), x_196);
  u_xlat8 = x_197;
  let x_201 : f32 = u_xlat5.w;
  u_xlat9.x = x_201;
  let x_204 : f32 = u_xlat6.w;
  u_xlat9.y = x_204;
  let x_208 : f32 = u_xlat7.w;
  u_xlat9.z = x_208;
  let x_212 : f32 = u_xlat8.w;
  u_xlat9.w = x_212;
  let x_215 : vec4<f32> = u_xlat9;
  let x_218 : f32 = x_59.x_Smoothness0;
  let x_221 : f32 = x_59.x_Smoothness1;
  let x_224 : f32 = x_59.x_Smoothness2;
  let x_227 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_215 * vec4<f32>(x_218, x_221, x_224, x_227));
  let x_234 : f32 = x_59.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_234);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_237) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_240 : vec4<f32> = u_xlat9;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_240 + -(x_241));
  let x_244 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_244 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_248 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_248, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_252 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_252 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_256);
  let x_259 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_259 + -(x_260));
  let x_265 : f32 = u_xlat12.x;
  let x_268 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_265 * x_268);
  let x_272 : f32 = u_xlat12.y;
  let x_275 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_272 * x_275);
  let x_279 : f32 = u_xlat12.z;
  let x_282 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_279 * x_282);
  let x_286 : f32 = u_xlat12.w;
  let x_289 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_286 * x_289);
  let x_292 : vec4<f32> = u_xlat11;
  let x_293 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_292 + x_293);
  let x_295 : bool = u_xlatb43;
  let x_296 : vec4<f32> = u_xlat11;
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_297, x_296, vec4<bool>(x_295, x_295, x_295, x_295));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_302, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_306 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_306);
  let x_308 : bool = u_xlatb44;
  if (((select(0i, 1i, x_308) * -1i) != 0i)) {
    discard;
  }
  let x_315 : f32 = u_xlat43;
  u_xlat43 = (x_315 + 0.00006103515625f);
  let x_318 : vec4<f32> = u_xlat4;
  let x_319 : f32 = u_xlat43;
  u_xlat4 = (x_318 / vec4<f32>(x_319, x_319, x_319, x_319));
  let x_322 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_327 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec4<f32> = u_xlat12;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec4<f32> = u_xlat11;
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat4;
  let x_358 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_360 : vec3<f32> = (vec3<f32>(x_355.z, x_355.z, x_355.z) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat7;
  let x_365 : vec4<f32> = u_xlat6;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.y, x_365.z)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_378 : vec3<f32> = (vec3<f32>(x_373.w, x_373.w, x_373.w) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat8;
  let x_383 : vec4<f32> = u_xlat6;
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_383.x, x_383.y, x_383.z)) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_392;
  let x_395 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_395;
  let x_398 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_398;
  let x_401 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_401;
  let x_404 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_404;
  let x_407 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_407;
  let x_410 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_410;
  let x_413 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_413;
  let x_415 : vec4<f32> = u_xlat6;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_415 + x_416);
  let x_419 : f32 = u_xlat0.z;
  u_xlat7.x = x_419;
  let x_422 : f32 = u_xlat1.z;
  u_xlat7.y = x_422;
  let x_425 : f32 = u_xlat2.z;
  u_xlat7.z = x_425;
  let x_428 : f32 = u_xlat3.y;
  u_xlat7.w = x_428;
  let x_430 : vec4<f32> = u_xlat9;
  let x_433 : f32 = x_59.x_Smoothness0;
  let x_435 : f32 = x_59.x_Smoothness1;
  let x_437 : f32 = x_59.x_Smoothness2;
  let x_439 : f32 = x_59.x_Smoothness3;
  let x_442 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_430) * vec4<f32>(x_433, x_435, x_437, x_439)) + x_442);
  let x_446 : f32 = x_59.x_LayerHasMask0;
  let x_449 : f32 = x_59.x_LayerHasMask1;
  let x_452 : f32 = x_59.x_LayerHasMask2;
  let x_455 : f32 = x_59.x_LayerHasMask3;
  let x_457 : vec4<f32> = u_xlat7;
  let x_459 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_446, x_449, x_452, x_455) * x_457) + x_459);
  let x_462 : vec4<f32> = u_xlat4;
  let x_463 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_462, x_463);
  let x_466 : f32 = u_xlat0.x;
  u_xlat7.x = x_466;
  let x_469 : f32 = u_xlat1.x;
  u_xlat7.y = x_469;
  let x_472 : f32 = u_xlat2.x;
  u_xlat7.z = x_472;
  let x_475 : f32 = u_xlat3.x;
  u_xlat7.w = x_475;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_59.x_Metallic0;
  let x_483 : f32 = x_59.x_Metallic1;
  let x_486 : f32 = x_59.x_Metallic2;
  let x_489 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_477 + -(vec4<f32>(x_480, x_483, x_486, x_489)));
  let x_494 : f32 = x_59.x_LayerHasMask0;
  let x_496 : f32 = x_59.x_LayerHasMask1;
  let x_498 : f32 = x_59.x_LayerHasMask2;
  let x_500 : f32 = x_59.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat7;
  let x_505 : f32 = x_59.x_Metallic0;
  let x_507 : f32 = x_59.x_Metallic1;
  let x_509 : f32 = x_59.x_Metallic2;
  let x_511 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + vec4<f32>(x_505, x_507, x_509, x_511));
  let x_514 : vec4<f32> = u_xlat4;
  let x_515 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_514, x_515);
  let x_519 : f32 = u_xlat0.y;
  u_xlat3.x = x_519;
  let x_522 : f32 = u_xlat1.y;
  u_xlat3.y = x_522;
  let x_525 : f32 = u_xlat2.y;
  u_xlat3.z = x_525;
  let x_527 : vec4<f32> = u_xlat6;
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_527) + x_529);
  let x_532 : f32 = x_59.x_LayerHasMask0;
  let x_534 : f32 = x_59.x_LayerHasMask1;
  let x_536 : f32 = x_59.x_LayerHasMask2;
  let x_538 : f32 = x_59.x_LayerHasMask3;
  let x_540 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_532, x_534, x_536, x_538) * x_540) + x_542);
  let x_545 : vec4<f32> = u_xlat4;
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_545, x_546);
  let x_550 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_550 == 0.0f);
  let x_555 : vec3<f32> = vs_TEXCOORD7;
  let x_559 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_555) + x_559);
  let x_561 : vec3<f32> = u_xlat15;
  let x_562 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_561, x_562);
  let x_566 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_566);
  let x_569 : vec3<f32> = u_xlat15;
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat15 = (x_569 * vec3<f32>(x_570.x, x_570.x, x_570.x));
  let x_574 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat2.x = x_574;
  let x_577 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.y = x_577;
  let x_581 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat2.z = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : vec3<f32> = u_xlat15;
    x_585 = x_588;
  } else {
    let x_590 : vec4<f32> = u_xlat2;
    x_585 = vec3<f32>(x_590.x, x_590.y, x_590.z);
  }
  let x_592 : vec3<f32> = x_585;
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : vec3<f32> = vs_TEXCOORD3;
  let x_597 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_596, x_597);
  let x_599 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_599);
  let x_601 : f32 = u_xlat43;
  let x_603 : vec3<f32> = vs_TEXCOORD3;
  let x_604 : vec3<f32> = (vec3<f32>(x_601, x_601, x_601) * x_603);
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_609 : f32 = vs_TEXCOORD7.y;
  let x_611 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat43 = (x_609 * x_611);
  let x_614 : f32 = x_29.unity_MatrixV[0i].z;
  let x_616 : f32 = vs_TEXCOORD7.x;
  let x_618 : f32 = u_xlat43;
  u_xlat43 = ((x_614 * x_616) + x_618);
  let x_621 : f32 = x_29.unity_MatrixV[2i].z;
  let x_623 : f32 = vs_TEXCOORD7.z;
  let x_625 : f32 = u_xlat43;
  u_xlat43 = ((x_621 * x_623) + x_625);
  let x_627 : f32 = u_xlat43;
  let x_630 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat43 = (x_627 + x_630);
  let x_632 : f32 = u_xlat43;
  let x_635 : f32 = x_29.x_ProjectionParams.y;
  u_xlat43 = (-(x_632) + -(x_635));
  let x_638 : f32 = u_xlat43;
  u_xlat43 = max(x_638, 0.0f);
  let x_640 : f32 = u_xlat43;
  let x_642 : f32 = x_29.unity_FogParams.x;
  u_xlat43 = (x_640 * x_642);
  u_xlat2.w = 1.0f;
  let x_650 : vec4<f32> = x_648.unity_SHAr;
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_650, x_651);
  let x_655 : vec4<f32> = x_648.unity_SHAg;
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_655, x_656);
  let x_660 : vec4<f32> = x_648.unity_SHAb;
  let x_661 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_660, x_661);
  let x_664 : vec4<f32> = u_xlat2;
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_664.y, x_664.z, x_664.z, x_664.x) * vec4<f32>(x_666.x, x_666.y, x_666.z, x_666.z));
  let x_670 : vec4<f32> = x_648.unity_SHBr;
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_670, x_671);
  let x_675 : vec4<f32> = x_648.unity_SHBg;
  let x_676 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_675, x_676);
  let x_680 : vec4<f32> = x_648.unity_SHBb;
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_680, x_681);
  let x_686 : f32 = u_xlat2.y;
  let x_688 : f32 = u_xlat2.y;
  u_xlat44 = (x_686 * x_688);
  let x_691 : f32 = u_xlat2.x;
  let x_693 : f32 = u_xlat2.x;
  let x_695 : f32 = u_xlat44;
  u_xlat44 = ((x_691 * x_693) + -(x_695));
  let x_700 : vec4<f32> = x_648.unity_SHC;
  let x_702 : f32 = u_xlat44;
  let x_705 : vec4<f32> = u_xlat6;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.y, x_700.z) * vec3<f32>(x_702, x_702, x_702)) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat3;
  let x_712 : vec4<f32> = u_xlat4;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat3;
  let x_720 : vec3<f32> = max(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_724 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_724) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_730 : f32 = u_xlat28;
  let x_731 : f32 = u_xlat44;
  u_xlat45 = (x_730 + -(x_731));
  let x_734 : f32 = u_xlat44;
  let x_736 : vec4<f32> = u_xlat5;
  let x_738 : vec3<f32> = (vec3<f32>(x_734, x_734, x_734) * vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat5;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_746 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec3<f32> = u_xlat0;
  let x_750 : vec4<f32> = u_xlat5;
  let x_755 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.x, x_748.x) * vec3<f32>(x_750.x, x_750.y, x_750.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_756 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : f32 = u_xlat28;
  u_xlat0.x = (-(x_758) + 1.0f);
  let x_763 : f32 = u_xlat0.x;
  let x_765 : f32 = u_xlat0.x;
  u_xlat28 = (x_763 * x_765);
  let x_767 : f32 = u_xlat28;
  u_xlat28 = max(x_767, 0.0078125f);
  let x_770 : f32 = u_xlat28;
  let x_771 : f32 = u_xlat28;
  u_xlat44 = (x_770 * x_771);
  let x_773 : f32 = u_xlat45;
  u_xlat45 = (x_773 + 1.0f);
  let x_775 : f32 = u_xlat45;
  u_xlat45 = clamp(x_775, 0.0f, 1.0f);
  let x_778 : f32 = u_xlat28;
  u_xlat46 = ((x_778 * 4.0f) + 2.0f);
  let x_782 : f32 = u_xlat14;
  u_xlat14 = min(x_782, 1.0f);
  let x_786 : vec4<f32> = vs_TEXCOORD8;
  let x_787 : vec2<f32> = vec2<f32>(x_786.x, x_786.y);
  let x_789 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_787.x, x_787.y, x_789);
  let x_802 : vec3<f32> = txVec0;
  let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
  u_xlat47 = x_804;
  let x_814 : f32 = x_812.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_814) + 1.0f);
  let x_818 : f32 = u_xlat47;
  let x_820 : f32 = x_812.x_MainLightShadowParams.x;
  let x_823 : f32 = u_xlat6.x;
  u_xlat47 = ((x_818 * x_820) + x_823);
  let x_827 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_827);
  let x_833 : f32 = vs_TEXCOORD8.z;
  u_xlatb20.x = (x_833 >= 1.0f);
  let x_837 : bool = u_xlatb20.x;
  let x_838 : bool = u_xlatb6;
  u_xlatb6 = (x_837 | x_838);
  let x_840 : bool = u_xlatb6;
  let x_841 : f32 = u_xlat47;
  u_xlat47 = select(x_841, 1.0f, x_840);
  let x_843 : vec3<f32> = vs_TEXCOORD7;
  let x_845 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_847 : vec3<f32> = (x_843 + -(x_845));
  let x_848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat6;
  let x_852 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_850.x, x_850.y, x_850.z), vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_858 : f32 = u_xlat6.x;
  let x_860 : f32 = x_812.x_MainLightShadowParams.z;
  let x_863 : f32 = x_812.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_858 * x_860) + x_863);
  let x_867 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_867, 0.0f, 1.0f);
  let x_871 : f32 = u_xlat47;
  u_xlat34 = (-(x_871) + 1.0f);
  let x_875 : f32 = u_xlat20.x;
  let x_876 : f32 = u_xlat34;
  let x_878 : f32 = u_xlat47;
  u_xlat47 = ((x_875 * x_876) + x_878);
  let x_887 : f32 = x_885.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_887 == -1.0f));
  let x_891 : bool = u_xlatb20.x;
  if (x_891) {
    let x_894 : vec3<f32> = vs_TEXCOORD7;
    let x_897 : vec4<f32> = x_885.x_MainLightWorldToLight[1i];
    let x_899 : vec2<f32> = (vec2<f32>(x_894.y, x_894.y) * vec2<f32>(x_897.x, x_897.y));
    let x_900 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_899.x, x_899.y, x_900.z);
    let x_903 : vec4<f32> = x_885.x_MainLightWorldToLight[0i];
    let x_905 : vec3<f32> = vs_TEXCOORD7;
    let x_908 : vec3<f32> = u_xlat20;
    let x_910 : vec2<f32> = ((vec2<f32>(x_903.x, x_903.y) * vec2<f32>(x_905.x, x_905.x)) + vec2<f32>(x_908.x, x_908.y));
    let x_911 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_910.x, x_910.y, x_911.z);
    let x_914 : vec4<f32> = x_885.x_MainLightWorldToLight[2i];
    let x_916 : vec3<f32> = vs_TEXCOORD7;
    let x_919 : vec3<f32> = u_xlat20;
    let x_921 : vec2<f32> = ((vec2<f32>(x_914.x, x_914.y) * vec2<f32>(x_916.z, x_916.z)) + vec2<f32>(x_919.x, x_919.y));
    let x_922 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_921.x, x_921.y, x_922.z);
    let x_924 : vec3<f32> = u_xlat20;
    let x_927 : vec4<f32> = x_885.x_MainLightWorldToLight[3i];
    let x_929 : vec2<f32> = (vec2<f32>(x_924.x, x_924.y) + vec2<f32>(x_927.x, x_927.y));
    let x_930 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_929.x, x_929.y, x_930.z);
    let x_932 : vec3<f32> = u_xlat20;
    let x_935 : vec2<f32> = ((vec2<f32>(x_932.x, x_932.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_936 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_935.x, x_935.y, x_936.z);
    let x_943 : vec3<f32> = u_xlat20;
    let x_946 : f32 = x_29.x_GlobalMipBias.x;
    let x_947 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_943.x, x_943.y), x_946);
    u_xlat7 = x_947;
    let x_949 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_951 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_953 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_955 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_956 : vec4<f32> = vec4<f32>(x_949, x_951, x_953, x_955);
    let x_963 : vec4<bool> = (vec4<f32>(x_956.x, x_956.y, x_956.z, x_956.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_963.x, x_963.y);
    let x_966 : bool = u_xlatb20.y;
    if (x_966) {
      let x_972 : f32 = u_xlat7.w;
      x_968 = x_972;
    } else {
      let x_975 : f32 = u_xlat7.x;
      x_968 = x_975;
    }
    let x_976 : f32 = x_968;
    u_xlat34 = x_976;
    let x_978 : bool = u_xlatb20.x;
    if (x_978) {
      let x_982 : vec4<f32> = u_xlat7;
      x_979 = vec3<f32>(x_982.x, x_982.y, x_982.z);
    } else {
      let x_985 : f32 = u_xlat34;
      x_979 = vec3<f32>(x_985, x_985, x_985);
    }
    let x_987 : vec3<f32> = x_979;
    u_xlat20 = x_987;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_992 : vec3<f32> = u_xlat20;
  let x_994 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat20 = (x_992 * vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat1;
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_997.x, x_997.y, x_997.z)), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1005 : f32 = u_xlat7.x;
  let x_1007 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1005 + x_1007);
  let x_1010 : vec4<f32> = u_xlat2;
  let x_1012 : vec4<f32> = u_xlat7;
  let x_1016 : vec4<f32> = u_xlat1;
  let x_1019 : vec3<f32> = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * -(vec3<f32>(x_1012.x, x_1012.x, x_1012.x))) + -(vec3<f32>(x_1016.x, x_1016.y, x_1016.z)));
  let x_1020 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1023 : vec4<f32> = u_xlat2;
  let x_1025 : vec4<f32> = u_xlat1;
  u_xlat49 = dot(vec3<f32>(x_1023.x, x_1023.y, x_1023.z), vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1028, 0.0f, 1.0f);
  let x_1030 : f32 = u_xlat49;
  u_xlat49 = (-(x_1030) + 1.0f);
  let x_1033 : f32 = u_xlat49;
  let x_1034 : f32 = u_xlat49;
  u_xlat49 = (x_1033 * x_1034);
  let x_1036 : f32 = u_xlat49;
  let x_1037 : f32 = u_xlat49;
  u_xlat49 = (x_1036 * x_1037);
  let x_1040 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_1040) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1048 : f32 = u_xlat0.x;
  let x_1050 : f32 = u_xlat8.x;
  u_xlat0.x = (x_1048 * x_1050);
  let x_1054 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1054 * 6.0f);
  let x_1066 : vec4<f32> = u_xlat7;
  let x_1069 : f32 = u_xlat0.x;
  let x_1070 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1066.x, x_1066.y, x_1066.z), x_1069);
  u_xlat8 = x_1070;
  let x_1072 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1072 + -1.0f);
  let x_1076 : f32 = x_648.unity_SpecCube0_HDR.w;
  let x_1078 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1076 * x_1078) + 1.0f);
  let x_1083 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1083, 0.0f);
  let x_1087 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1087);
  let x_1091 : f32 = u_xlat0.x;
  let x_1093 : f32 = x_648.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1091 * x_1093);
  let x_1097 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1097);
  let x_1101 : f32 = u_xlat0.x;
  let x_1103 : f32 = x_648.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1101 * x_1103);
  let x_1106 : vec4<f32> = u_xlat8;
  let x_1108 : vec3<f32> = u_xlat0;
  let x_1110 : vec3<f32> = (vec3<f32>(x_1106.x, x_1106.y, x_1106.z) * vec3<f32>(x_1108.x, x_1108.x, x_1108.x));
  let x_1111 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
  let x_1113 : f32 = u_xlat28;
  let x_1115 : f32 = u_xlat28;
  let x_1119 : vec2<f32> = ((vec2<f32>(x_1113, x_1113) * vec2<f32>(x_1115, x_1115)) + vec2<f32>(-1.0f, 1.0f));
  let x_1120 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1119.x, x_1120.y, x_1119.y);
  let x_1123 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1123);
  let x_1125 : vec4<f32> = u_xlat5;
  let x_1128 : f32 = u_xlat45;
  let x_1130 : vec3<f32> = (-(vec3<f32>(x_1125.x, x_1125.y, x_1125.z)) + vec3<f32>(x_1128, x_1128, x_1128));
  let x_1131 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : f32 = u_xlat49;
  let x_1135 : vec4<f32> = u_xlat8;
  let x_1138 : vec4<f32> = u_xlat5;
  let x_1140 : vec3<f32> = ((vec3<f32>(x_1133, x_1133, x_1133) * vec3<f32>(x_1135.x, x_1135.y, x_1135.z)) + vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1143 : f32 = u_xlat28;
  let x_1145 : vec4<f32> = u_xlat8;
  let x_1147 : vec3<f32> = (vec3<f32>(x_1143, x_1143, x_1143) * vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec4<f32> = u_xlat7;
  let x_1152 : vec4<f32> = u_xlat8;
  let x_1154 : vec3<f32> = (vec3<f32>(x_1150.x, x_1150.y, x_1150.z) * vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec4<f32> = u_xlat3;
  let x_1159 : vec4<f32> = u_xlat4;
  let x_1162 : vec4<f32> = u_xlat7;
  let x_1164 : vec3<f32> = ((vec3<f32>(x_1157.x, x_1157.y, x_1157.z) * vec3<f32>(x_1159.x, x_1159.y, x_1159.z)) + vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1167 : f32 = u_xlat47;
  let x_1169 : f32 = x_648.unity_LightData.z;
  u_xlat28 = (x_1167 * x_1169);
  let x_1171 : vec4<f32> = u_xlat2;
  let x_1174 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_1171.x, x_1171.y, x_1171.z), vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
  let x_1177 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1177, 0.0f, 1.0f);
  let x_1179 : f32 = u_xlat28;
  let x_1180 : f32 = u_xlat45;
  u_xlat28 = (x_1179 * x_1180);
  let x_1182 : f32 = u_xlat28;
  let x_1184 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1182, x_1182, x_1182) * x_1184);
  let x_1186 : vec4<f32> = u_xlat1;
  let x_1189 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1191 : vec3<f32> = (vec3<f32>(x_1186.x, x_1186.y, x_1186.z) + vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1192 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
  let x_1194 : vec4<f32> = u_xlat7;
  let x_1196 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1194.x, x_1194.y, x_1194.z), vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : f32 = u_xlat28;
  u_xlat28 = max(x_1199, 1.17549435e-38f);
  let x_1202 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1202);
  let x_1204 : f32 = u_xlat28;
  let x_1206 : vec4<f32> = u_xlat7;
  let x_1208 : vec3<f32> = (vec3<f32>(x_1204, x_1204, x_1204) * vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
  let x_1209 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1211 : vec4<f32> = u_xlat2;
  let x_1213 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1211.x, x_1211.y, x_1211.z), vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1216, 0.0f, 1.0f);
  let x_1219 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1221 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1219.x, x_1219.y, x_1219.z), vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1224, 0.0f, 1.0f);
  let x_1226 : f32 = u_xlat28;
  let x_1227 : f32 = u_xlat28;
  u_xlat28 = (x_1226 * x_1227);
  let x_1229 : f32 = u_xlat28;
  let x_1231 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1229 * x_1231) + 1.00001001358032226562f);
  let x_1235 : f32 = u_xlat45;
  let x_1236 : f32 = u_xlat45;
  u_xlat45 = (x_1235 * x_1236);
  let x_1238 : f32 = u_xlat28;
  let x_1239 : f32 = u_xlat28;
  u_xlat28 = (x_1238 * x_1239);
  let x_1241 : f32 = u_xlat45;
  u_xlat45 = max(x_1241, 0.10000000149011611938f);
  let x_1244 : f32 = u_xlat28;
  let x_1245 : f32 = u_xlat45;
  u_xlat28 = (x_1244 * x_1245);
  let x_1247 : f32 = u_xlat46;
  let x_1248 : f32 = u_xlat28;
  u_xlat28 = (x_1247 * x_1248);
  let x_1250 : f32 = u_xlat44;
  let x_1251 : f32 = u_xlat28;
  u_xlat28 = (x_1250 / x_1251);
  let x_1253 : vec4<f32> = u_xlat5;
  let x_1255 : f32 = u_xlat28;
  let x_1258 : vec4<f32> = u_xlat4;
  let x_1260 : vec3<f32> = ((vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * vec3<f32>(x_1255, x_1255, x_1255)) + vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  let x_1263 : vec3<f32> = u_xlat20;
  let x_1264 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1263 * vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1268 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1270 : f32 = x_648.unity_LightData.y;
  u_xlat28 = min(x_1268, x_1270);
  let x_1274 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1274));
  let x_1278 : f32 = u_xlat6.x;
  let x_1280 : f32 = x_812.x_AdditionalShadowFadeParams.x;
  let x_1283 : f32 = x_812.x_AdditionalShadowFadeParams.y;
  u_xlat45 = ((x_1278 * x_1280) + x_1283);
  let x_1285 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1285, 0.0f, 1.0f);
  let x_1289 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1291 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1293 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1295 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1296 : vec4<f32> = vec4<f32>(x_1289, x_1291, x_1293, x_1295);
  let x_1302 : vec4<bool> = (vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1296.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1302.x, x_1302.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1314 : u32 = u_xlatu_loop_1;
    let x_1315 : u32 = u_xlatu28;
    if ((x_1314 < x_1315)) {
    } else {
      break;
    }
    let x_1318 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1318 >> 2u);
    let x_1322 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1322 & 3u));
    let x_1325 : u32 = u_xlatu6;
    let x_1328 : vec4<f32> = x_648.unity_LightIndices[bitcast<i32>(x_1325)];
    let x_1338 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1343 : vec4<u32> = indexable[x_1338];
    u_xlat6.x = dot(x_1328, bitcast<vec4<f32>>(x_1343));
    let x_1349 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1349);
    let x_1351 : vec3<f32> = vs_TEXCOORD7;
    let x_1362 : i32 = u_xlati6;
    let x_1364 : vec4<f32> = x_1361.x_AdditionalLightsPosition[x_1362];
    let x_1367 : i32 = u_xlati6;
    let x_1369 : vec4<f32> = x_1361.x_AdditionalLightsPosition[x_1367];
    let x_1371 : vec3<f32> = ((-(x_1351) * vec3<f32>(x_1364.w, x_1364.w, x_1364.w)) + vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
    let x_1372 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
    let x_1375 : vec4<f32> = u_xlat9;
    let x_1377 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1375.x, x_1375.y, x_1375.z), vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
    let x_1380 : f32 = u_xlat35;
    u_xlat35 = max(x_1380, 0.00006103515625f);
    let x_1382 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1382);
    let x_1384 : f32 = u_xlat49;
    let x_1386 : vec4<f32> = u_xlat9;
    let x_1388 : vec3<f32> = (vec3<f32>(x_1384, x_1384, x_1384) * vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
    let x_1389 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
    let x_1392 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1392);
    let x_1394 : f32 = u_xlat35;
    let x_1395 : i32 = u_xlati6;
    let x_1397 : f32 = x_1361.x_AdditionalLightsAttenuation[x_1395].x;
    u_xlat35 = (x_1394 * x_1397);
    let x_1399 : f32 = u_xlat35;
    let x_1401 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1399) * x_1401) + 1.0f);
    let x_1404 : f32 = u_xlat35;
    u_xlat35 = max(x_1404, 0.0f);
    let x_1406 : f32 = u_xlat35;
    let x_1407 : f32 = u_xlat35;
    u_xlat35 = (x_1406 * x_1407);
    let x_1409 : f32 = u_xlat35;
    let x_1410 : f32 = u_xlat50;
    u_xlat35 = (x_1409 * x_1410);
    let x_1412 : i32 = u_xlati6;
    let x_1414 : vec4<f32> = x_1361.x_AdditionalLightsSpotDir[x_1412];
    let x_1416 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1414.x, x_1414.y, x_1414.z), vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
    let x_1419 : f32 = u_xlat50;
    let x_1420 : i32 = u_xlati6;
    let x_1422 : f32 = x_1361.x_AdditionalLightsAttenuation[x_1420].z;
    let x_1424 : i32 = u_xlati6;
    let x_1426 : f32 = x_1361.x_AdditionalLightsAttenuation[x_1424].w;
    u_xlat50 = ((x_1419 * x_1422) + x_1426);
    let x_1428 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1428, 0.0f, 1.0f);
    let x_1430 : f32 = u_xlat50;
    let x_1431 : f32 = u_xlat50;
    u_xlat50 = (x_1430 * x_1431);
    let x_1433 : f32 = u_xlat35;
    let x_1434 : f32 = u_xlat50;
    u_xlat35 = (x_1433 * x_1434);
    let x_1437 : i32 = u_xlati6;
    let x_1439 : f32 = x_812.x_AdditionalShadowParams[x_1437].w;
    u_xlati50 = i32(x_1439);
    let x_1442 : i32 = u_xlati50;
    u_xlatb51 = (x_1442 >= 0i);
    let x_1444 : bool = u_xlatb51;
    if (x_1444) {
      let x_1448 : i32 = u_xlati6;
      let x_1450 : f32 = x_812.x_AdditionalShadowParams[x_1448].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1450, x_1450, x_1450, x_1450))));
      let x_1454 : bool = u_xlatb51;
      if (x_1454) {
        let x_1459 : vec4<f32> = u_xlat10;
        let x_1462 : vec4<f32> = u_xlat10;
        let x_1465 : vec4<bool> = (abs(vec4<f32>(x_1459.z, x_1459.z, x_1459.y, x_1459.z)) >= abs(vec4<f32>(x_1462.x, x_1462.y, x_1462.x, x_1462.x)));
        let x_1467 : vec3<bool> = vec3<bool>(x_1465.x, x_1465.y, x_1465.z);
        let x_1468 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
        let x_1471 : bool = u_xlatb11.y;
        let x_1473 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1471 & x_1473);
        let x_1475 : vec4<f32> = u_xlat10;
        let x_1478 : vec4<bool> = (-(vec4<f32>(x_1475.z, x_1475.y, x_1475.z, x_1475.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1479 : vec3<bool> = vec3<bool>(x_1478.x, x_1478.y, x_1478.w);
        let x_1480 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1479.x, x_1479.y, x_1480.z, x_1479.z);
        let x_1483 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1483);
        let x_1488 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1488);
        let x_1494 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1494);
        let x_1497 : bool = u_xlatb11.z;
        if (x_1497) {
          let x_1502 : f32 = u_xlat11.y;
          x_1498 = x_1502;
        } else {
          let x_1504 : f32 = u_xlat52;
          x_1498 = x_1504;
        }
        let x_1505 : f32 = x_1498;
        u_xlat52 = x_1505;
        let x_1507 : bool = u_xlatb51;
        if (x_1507) {
          let x_1512 : f32 = u_xlat11.x;
          x_1508 = x_1512;
        } else {
          let x_1514 : f32 = u_xlat52;
          x_1508 = x_1514;
        }
        let x_1515 : f32 = x_1508;
        u_xlat51 = x_1515;
        let x_1516 : i32 = u_xlati6;
        let x_1518 : f32 = x_812.x_AdditionalShadowParams[x_1516].w;
        u_xlat52 = trunc(x_1518);
        let x_1520 : f32 = u_xlat51;
        let x_1521 : f32 = u_xlat52;
        u_xlat51 = (x_1520 + x_1521);
        let x_1523 : f32 = u_xlat51;
        u_xlati50 = i32(x_1523);
      }
      let x_1525 : i32 = u_xlati50;
      u_xlati50 = (x_1525 << bitcast<u32>(2i));
      let x_1527 : vec3<f32> = vs_TEXCOORD7;
      let x_1529 : i32 = u_xlati50;
      let x_1532 : i32 = u_xlati50;
      let x_1536 : vec4<f32> = x_812.x_AdditionalLightsWorldToShadow[((x_1529 + 1i) / 4i)][((x_1532 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1527.y, x_1527.y, x_1527.y, x_1527.y) * x_1536);
      let x_1538 : i32 = u_xlati50;
      let x_1540 : i32 = u_xlati50;
      let x_1543 : vec4<f32> = x_812.x_AdditionalLightsWorldToShadow[(x_1538 / 4i)][(x_1540 % 4i)];
      let x_1544 : vec3<f32> = vs_TEXCOORD7;
      let x_1547 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1543 * vec4<f32>(x_1544.x, x_1544.x, x_1544.x, x_1544.x)) + x_1547);
      let x_1549 : i32 = u_xlati50;
      let x_1552 : i32 = u_xlati50;
      let x_1556 : vec4<f32> = x_812.x_AdditionalLightsWorldToShadow[((x_1549 + 2i) / 4i)][((x_1552 + 2i) % 4i)];
      let x_1557 : vec3<f32> = vs_TEXCOORD7;
      let x_1560 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1556 * vec4<f32>(x_1557.z, x_1557.z, x_1557.z, x_1557.z)) + x_1560);
      let x_1562 : vec4<f32> = u_xlat11;
      let x_1563 : i32 = u_xlati50;
      let x_1566 : i32 = u_xlati50;
      let x_1570 : vec4<f32> = x_812.x_AdditionalLightsWorldToShadow[((x_1563 + 3i) / 4i)][((x_1566 + 3i) % 4i)];
      u_xlat11 = (x_1562 + x_1570);
      let x_1572 : vec4<f32> = u_xlat11;
      let x_1574 : vec4<f32> = u_xlat11;
      let x_1576 : vec3<f32> = (vec3<f32>(x_1572.x, x_1572.y, x_1572.z) / vec3<f32>(x_1574.w, x_1574.w, x_1574.w));
      let x_1577 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1577.w);
      let x_1580 : vec4<f32> = u_xlat11;
      let x_1581 : vec2<f32> = vec2<f32>(x_1580.x, x_1580.y);
      let x_1583 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
      let x_1591 : vec3<f32> = txVec1;
      let x_1593 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1591.xy, x_1591.z);
      u_xlat50 = x_1593;
      let x_1594 : i32 = u_xlati6;
      let x_1596 : f32 = x_812.x_AdditionalShadowParams[x_1594].x;
      u_xlat51 = (1.0f + -(x_1596));
      let x_1599 : f32 = u_xlat50;
      let x_1600 : i32 = u_xlati6;
      let x_1602 : f32 = x_812.x_AdditionalShadowParams[x_1600].x;
      let x_1604 : f32 = u_xlat51;
      u_xlat50 = ((x_1599 * x_1602) + x_1604);
      let x_1607 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1607);
      let x_1611 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1611 >= 1.0f);
      let x_1613 : bool = u_xlatb51;
      let x_1614 : bool = u_xlatb52;
      u_xlatb51 = (x_1613 | x_1614);
      let x_1616 : bool = u_xlatb51;
      let x_1617 : f32 = u_xlat50;
      u_xlat50 = select(x_1617, 1.0f, x_1616);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1620 : f32 = u_xlat50;
    u_xlat51 = (-(x_1620) + 1.0f);
    let x_1623 : f32 = u_xlat45;
    let x_1624 : f32 = u_xlat51;
    let x_1626 : f32 = u_xlat50;
    u_xlat50 = ((x_1623 * x_1624) + x_1626);
    let x_1629 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1629 & 31i)));
    let x_1632 : i32 = u_xlati51;
    let x_1635 : f32 = x_885.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1632) & bitcast<u32>(x_1635)));
    let x_1639 : i32 = u_xlati51;
    if ((x_1639 != 0i)) {
      let x_1643 : i32 = u_xlati6;
      let x_1645 : f32 = x_885.x_AdditionalLightsLightTypes[x_1643].el;
      u_xlati51 = i32(x_1645);
      let x_1648 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1648 != 0i));
      let x_1652 : i32 = u_xlati6;
      u_xlati11 = (x_1652 << bitcast<u32>(2i));
      let x_1654 : i32 = u_xlati52;
      if ((x_1654 != 0i)) {
        let x_1659 : vec3<f32> = vs_TEXCOORD7;
        let x_1661 : i32 = u_xlati11;
        let x_1664 : i32 = u_xlati11;
        let x_1668 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1661 + 1i) / 4i)][((x_1664 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1659.y, x_1659.y, x_1659.y) * vec3<f32>(x_1668.x, x_1668.y, x_1668.w));
        let x_1671 : i32 = u_xlati11;
        let x_1673 : i32 = u_xlati11;
        let x_1676 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[(x_1671 / 4i)][(x_1673 % 4i)];
        let x_1678 : vec3<f32> = vs_TEXCOORD7;
        let x_1681 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1676.x, x_1676.y, x_1676.w) * vec3<f32>(x_1678.x, x_1678.x, x_1678.x)) + x_1681);
        let x_1683 : i32 = u_xlati11;
        let x_1686 : i32 = u_xlati11;
        let x_1690 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1683 + 2i) / 4i)][((x_1686 + 2i) % 4i)];
        let x_1692 : vec3<f32> = vs_TEXCOORD7;
        let x_1695 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1690.x, x_1690.y, x_1690.w) * vec3<f32>(x_1692.z, x_1692.z, x_1692.z)) + x_1695);
        let x_1697 : vec3<f32> = u_xlat25;
        let x_1698 : i32 = u_xlati11;
        let x_1701 : i32 = u_xlati11;
        let x_1705 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1698 + 3i) / 4i)][((x_1701 + 3i) % 4i)];
        u_xlat25 = (x_1697 + vec3<f32>(x_1705.x, x_1705.y, x_1705.w));
        let x_1708 : vec3<f32> = u_xlat25;
        let x_1710 : vec3<f32> = u_xlat25;
        let x_1712 : vec2<f32> = (vec2<f32>(x_1708.x, x_1708.y) / vec2<f32>(x_1710.z, x_1710.z));
        let x_1713 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1712.x, x_1712.y, x_1713.z);
        let x_1715 : vec3<f32> = u_xlat25;
        let x_1718 : vec2<f32> = ((vec2<f32>(x_1715.x, x_1715.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1719 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1718.x, x_1718.y, x_1719.z);
        let x_1721 : vec3<f32> = u_xlat25;
        let x_1725 : vec2<f32> = clamp(vec2<f32>(x_1721.x, x_1721.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1726 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1725.x, x_1725.y, x_1726.z);
        let x_1728 : i32 = u_xlati6;
        let x_1730 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1728];
        let x_1732 : vec3<f32> = u_xlat25;
        let x_1735 : i32 = u_xlati6;
        let x_1737 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1735];
        let x_1739 : vec2<f32> = ((vec2<f32>(x_1730.x, x_1730.y) * vec2<f32>(x_1732.x, x_1732.y)) + vec2<f32>(x_1737.z, x_1737.w));
        let x_1740 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1739.x, x_1739.y, x_1740.z);
      } else {
        let x_1743 : i32 = u_xlati51;
        u_xlatb51 = (x_1743 == 1i);
        let x_1745 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1745);
        let x_1747 : i32 = u_xlati51;
        if ((x_1747 != 0i)) {
          let x_1751 : vec3<f32> = vs_TEXCOORD7;
          let x_1753 : i32 = u_xlati11;
          let x_1756 : i32 = u_xlati11;
          let x_1760 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1753 + 1i) / 4i)][((x_1756 + 1i) % 4i)];
          let x_1762 : vec2<f32> = (vec2<f32>(x_1751.y, x_1751.y) * vec2<f32>(x_1760.x, x_1760.y));
          let x_1763 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1762.x, x_1762.y, x_1763.z, x_1763.w);
          let x_1765 : i32 = u_xlati11;
          let x_1767 : i32 = u_xlati11;
          let x_1770 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[(x_1765 / 4i)][(x_1767 % 4i)];
          let x_1772 : vec3<f32> = vs_TEXCOORD7;
          let x_1775 : vec4<f32> = u_xlat12;
          let x_1777 : vec2<f32> = ((vec2<f32>(x_1770.x, x_1770.y) * vec2<f32>(x_1772.x, x_1772.x)) + vec2<f32>(x_1775.x, x_1775.y));
          let x_1778 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1777.x, x_1777.y, x_1778.z, x_1778.w);
          let x_1780 : i32 = u_xlati11;
          let x_1783 : i32 = u_xlati11;
          let x_1787 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1780 + 2i) / 4i)][((x_1783 + 2i) % 4i)];
          let x_1789 : vec3<f32> = vs_TEXCOORD7;
          let x_1792 : vec4<f32> = u_xlat12;
          let x_1794 : vec2<f32> = ((vec2<f32>(x_1787.x, x_1787.y) * vec2<f32>(x_1789.z, x_1789.z)) + vec2<f32>(x_1792.x, x_1792.y));
          let x_1795 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1794.x, x_1794.y, x_1795.z, x_1795.w);
          let x_1797 : vec4<f32> = u_xlat12;
          let x_1799 : i32 = u_xlati11;
          let x_1802 : i32 = u_xlati11;
          let x_1806 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1799 + 3i) / 4i)][((x_1802 + 3i) % 4i)];
          let x_1808 : vec2<f32> = (vec2<f32>(x_1797.x, x_1797.y) + vec2<f32>(x_1806.x, x_1806.y));
          let x_1809 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1808.x, x_1808.y, x_1809.z, x_1809.w);
          let x_1811 : vec4<f32> = u_xlat12;
          let x_1814 : vec2<f32> = ((vec2<f32>(x_1811.x, x_1811.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1815 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1814.x, x_1814.y, x_1815.z, x_1815.w);
          let x_1817 : vec4<f32> = u_xlat12;
          let x_1819 : vec2<f32> = fract(vec2<f32>(x_1817.x, x_1817.y));
          let x_1820 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1819.x, x_1819.y, x_1820.z, x_1820.w);
          let x_1822 : i32 = u_xlati6;
          let x_1824 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1822];
          let x_1826 : vec4<f32> = u_xlat12;
          let x_1829 : i32 = u_xlati6;
          let x_1831 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1829];
          let x_1833 : vec2<f32> = ((vec2<f32>(x_1824.x, x_1824.y) * vec2<f32>(x_1826.x, x_1826.y)) + vec2<f32>(x_1831.z, x_1831.w));
          let x_1834 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1833.x, x_1833.y, x_1834.z);
        } else {
          let x_1837 : vec3<f32> = vs_TEXCOORD7;
          let x_1839 : i32 = u_xlati11;
          let x_1842 : i32 = u_xlati11;
          let x_1846 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1839 + 1i) / 4i)][((x_1842 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1837.y, x_1837.y, x_1837.y, x_1837.y) * x_1846);
          let x_1848 : i32 = u_xlati11;
          let x_1850 : i32 = u_xlati11;
          let x_1853 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[(x_1848 / 4i)][(x_1850 % 4i)];
          let x_1854 : vec3<f32> = vs_TEXCOORD7;
          let x_1857 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1853 * vec4<f32>(x_1854.x, x_1854.x, x_1854.x, x_1854.x)) + x_1857);
          let x_1859 : i32 = u_xlati11;
          let x_1862 : i32 = u_xlati11;
          let x_1866 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1859 + 2i) / 4i)][((x_1862 + 2i) % 4i)];
          let x_1867 : vec3<f32> = vs_TEXCOORD7;
          let x_1870 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1866 * vec4<f32>(x_1867.z, x_1867.z, x_1867.z, x_1867.z)) + x_1870);
          let x_1872 : vec4<f32> = u_xlat12;
          let x_1873 : i32 = u_xlati11;
          let x_1876 : i32 = u_xlati11;
          let x_1880 : vec4<f32> = x_885.x_AdditionalLightsWorldToLights[((x_1873 + 3i) / 4i)][((x_1876 + 3i) % 4i)];
          u_xlat12 = (x_1872 + x_1880);
          let x_1882 : vec4<f32> = u_xlat12;
          let x_1884 : vec4<f32> = u_xlat12;
          let x_1886 : vec3<f32> = (vec3<f32>(x_1882.x, x_1882.y, x_1882.z) / vec3<f32>(x_1884.w, x_1884.w, x_1884.w));
          let x_1887 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
          let x_1889 : vec4<f32> = u_xlat12;
          let x_1891 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1889.x, x_1889.y, x_1889.z), vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
          let x_1894 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1894);
          let x_1896 : f32 = u_xlat51;
          let x_1898 : vec4<f32> = u_xlat12;
          let x_1900 : vec3<f32> = (vec3<f32>(x_1896, x_1896, x_1896) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
          let x_1901 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
          let x_1903 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1903.x, x_1903.y, x_1903.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1908 : f32 = u_xlat51;
          u_xlat51 = max(x_1908, 0.00000099999999747524f);
          let x_1911 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1911);
          let x_1913 : f32 = u_xlat51;
          let x_1915 : vec4<f32> = u_xlat12;
          let x_1917 : vec3<f32> = (vec3<f32>(x_1913, x_1913, x_1913) * vec3<f32>(x_1915.z, x_1915.x, x_1915.y));
          let x_1918 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
          let x_1921 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1921);
          let x_1925 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1925, 0.0f, 1.0f);
          let x_1928 : vec4<f32> = u_xlat13;
          let x_1930 : vec4<bool> = (vec4<f32>(x_1928.y, x_1928.y, x_1928.y, x_1928.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1931 : vec2<bool> = vec2<bool>(x_1930.x, x_1930.w);
          let x_1932 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1931.x, x_1932.y, x_1932.z, x_1931.y);
          let x_1935 : bool = u_xlatb11.x;
          if (x_1935) {
            let x_1940 : f32 = u_xlat13.x;
            x_1936 = x_1940;
          } else {
            let x_1943 : f32 = u_xlat13.x;
            x_1936 = -(x_1943);
          }
          let x_1945 : f32 = x_1936;
          u_xlat11.x = x_1945;
          let x_1948 : bool = u_xlatb11.w;
          if (x_1948) {
            let x_1953 : f32 = u_xlat13.x;
            x_1949 = x_1953;
          } else {
            let x_1956 : f32 = u_xlat13.x;
            x_1949 = -(x_1956);
          }
          let x_1958 : f32 = x_1949;
          u_xlat11.w = x_1958;
          let x_1960 : vec4<f32> = u_xlat12;
          let x_1962 : f32 = u_xlat51;
          let x_1965 : vec4<f32> = u_xlat11;
          let x_1967 : vec2<f32> = ((vec2<f32>(x_1960.x, x_1960.y) * vec2<f32>(x_1962, x_1962)) + vec2<f32>(x_1965.x, x_1965.w));
          let x_1968 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1967.x, x_1968.y, x_1968.z, x_1967.y);
          let x_1970 : vec4<f32> = u_xlat11;
          let x_1973 : vec2<f32> = ((vec2<f32>(x_1970.x, x_1970.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1974 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1973.x, x_1974.y, x_1974.z, x_1973.y);
          let x_1976 : vec4<f32> = u_xlat11;
          let x_1980 : vec2<f32> = clamp(vec2<f32>(x_1976.x, x_1976.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1981 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1980.x, x_1981.y, x_1981.z, x_1980.y);
          let x_1983 : i32 = u_xlati6;
          let x_1985 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1983];
          let x_1987 : vec4<f32> = u_xlat11;
          let x_1990 : i32 = u_xlati6;
          let x_1992 : vec4<f32> = x_885.x_AdditionalLightsCookieAtlasUVRects[x_1990];
          let x_1994 : vec2<f32> = ((vec2<f32>(x_1985.x, x_1985.y) * vec2<f32>(x_1987.x, x_1987.w)) + vec2<f32>(x_1992.z, x_1992.w));
          let x_1995 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1994.x, x_1994.y, x_1995.z);
        }
      }
      let x_2002 : vec3<f32> = u_xlat25;
      let x_2004 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2002.x, x_2002.y), 0.0f);
      u_xlat11 = x_2004;
      let x_2006 : bool = u_xlatb7.y;
      if (x_2006) {
        let x_2011 : f32 = u_xlat11.w;
        x_2007 = x_2011;
      } else {
        let x_2014 : f32 = u_xlat11.x;
        x_2007 = x_2014;
      }
      let x_2015 : f32 = x_2007;
      u_xlat51 = x_2015;
      let x_2017 : bool = u_xlatb7.x;
      if (x_2017) {
        let x_2021 : vec4<f32> = u_xlat11;
        x_2018 = vec3<f32>(x_2021.x, x_2021.y, x_2021.z);
      } else {
        let x_2024 : f32 = u_xlat51;
        x_2018 = vec3<f32>(x_2024, x_2024, x_2024);
      }
      let x_2026 : vec3<f32> = x_2018;
      let x_2027 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2027.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2033 : vec4<f32> = u_xlat11;
    let x_2035 : i32 = u_xlati6;
    let x_2037 : vec4<f32> = x_1361.x_AdditionalLightsColor[x_2035];
    let x_2039 : vec3<f32> = (vec3<f32>(x_2033.x, x_2033.y, x_2033.z) * vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
    let x_2040 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
    let x_2042 : f32 = u_xlat35;
    let x_2043 : f32 = u_xlat50;
    u_xlat6.x = (x_2042 * x_2043);
    let x_2046 : vec4<f32> = u_xlat2;
    let x_2048 : vec4<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_2046.x, x_2046.y, x_2046.z), vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
    let x_2051 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2051, 0.0f, 1.0f);
    let x_2054 : f32 = u_xlat6.x;
    let x_2055 : f32 = u_xlat35;
    u_xlat6.x = (x_2054 * x_2055);
    let x_2058 : vec4<f32> = u_xlat6;
    let x_2060 : vec4<f32> = u_xlat11;
    let x_2062 : vec3<f32> = (vec3<f32>(x_2058.x, x_2058.x, x_2058.x) * vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
    let x_2063 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
    let x_2065 : vec4<f32> = u_xlat9;
    let x_2067 : f32 = u_xlat49;
    let x_2070 : vec4<f32> = u_xlat1;
    let x_2072 : vec3<f32> = ((vec3<f32>(x_2065.x, x_2065.y, x_2065.z) * vec3<f32>(x_2067, x_2067, x_2067)) + vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
    let x_2073 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
    let x_2075 : vec4<f32> = u_xlat9;
    let x_2077 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2075.x, x_2075.y, x_2075.z), vec3<f32>(x_2077.x, x_2077.y, x_2077.z));
    let x_2082 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_2082, 1.17549435e-38f);
    let x_2086 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_2086);
    let x_2089 : vec4<f32> = u_xlat6;
    let x_2091 : vec4<f32> = u_xlat9;
    let x_2093 : vec3<f32> = (vec3<f32>(x_2089.x, x_2089.x, x_2089.x) * vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
    let x_2094 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2094.w);
    let x_2096 : vec4<f32> = u_xlat2;
    let x_2098 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2096.x, x_2096.y, x_2096.z), vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
    let x_2103 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2103, 0.0f, 1.0f);
    let x_2106 : vec4<f32> = u_xlat10;
    let x_2108 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2111 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2111, 0.0f, 1.0f);
    let x_2114 : f32 = u_xlat6.x;
    let x_2116 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2114 * x_2116);
    let x_2120 : f32 = u_xlat6.x;
    let x_2122 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_2120 * x_2122) + 1.00001001358032226562f);
    let x_2126 : f32 = u_xlat35;
    let x_2127 : f32 = u_xlat35;
    u_xlat35 = (x_2126 * x_2127);
    let x_2130 : f32 = u_xlat6.x;
    let x_2132 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2130 * x_2132);
    let x_2135 : f32 = u_xlat35;
    u_xlat35 = max(x_2135, 0.10000000149011611938f);
    let x_2138 : f32 = u_xlat6.x;
    let x_2139 : f32 = u_xlat35;
    u_xlat6.x = (x_2138 * x_2139);
    let x_2142 : f32 = u_xlat46;
    let x_2144 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2142 * x_2144);
    let x_2147 : f32 = u_xlat44;
    let x_2149 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2147 / x_2149);
    let x_2152 : vec4<f32> = u_xlat5;
    let x_2154 : vec4<f32> = u_xlat6;
    let x_2157 : vec4<f32> = u_xlat4;
    let x_2159 : vec3<f32> = ((vec3<f32>(x_2152.x, x_2152.y, x_2152.z) * vec3<f32>(x_2154.x, x_2154.x, x_2154.x)) + vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
    let x_2160 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
    let x_2162 : vec4<f32> = u_xlat9;
    let x_2164 : vec4<f32> = u_xlat11;
    let x_2167 : vec4<f32> = u_xlat8;
    let x_2169 : vec3<f32> = ((vec3<f32>(x_2162.x, x_2162.y, x_2162.z) * vec3<f32>(x_2164.x, x_2164.y, x_2164.z)) + vec3<f32>(x_2167.x, x_2167.y, x_2167.z));
    let x_2170 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);

    continuing {
      let x_2172 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2172 + bitcast<u32>(1i));
    }
  }
  let x_2174 : vec4<f32> = u_xlat3;
  let x_2176 : f32 = u_xlat14;
  let x_2179 : vec3<f32> = u_xlat20;
  u_xlat0 = ((vec3<f32>(x_2174.x, x_2174.y, x_2174.z) * vec3<f32>(x_2176, x_2176, x_2176)) + x_2179);
  let x_2181 : vec4<f32> = u_xlat8;
  let x_2183 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2181.x, x_2181.y, x_2181.z) + x_2183);
  let x_2185 : f32 = u_xlat42;
  let x_2187 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2185, x_2185, x_2185) * x_2187);
  let x_2189 : f32 = u_xlat43;
  let x_2190 : f32 = u_xlat43;
  u_xlat42 = (x_2189 * -(x_2190));
  let x_2193 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2193);
  let x_2197 : vec3<f32> = u_xlat0;
  let x_2198 : f32 = u_xlat42;
  let x_2200 : vec3<f32> = (x_2197 * vec3<f32>(x_2198, x_2198, x_2198));
  let x_2201 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


