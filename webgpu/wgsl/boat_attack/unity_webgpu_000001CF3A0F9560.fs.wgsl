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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
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
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
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

@group(0) @binding(12) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(19) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Splat0 : sampler;

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

var<private> u_xlatb44 : bool;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(21) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(18) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(24) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1047 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1130 : LightCookies;

@group(0) @binding(15) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(25) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(17) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1329 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu34 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlati34 : i32;

@group(1) @binding(1) var<uniform> x_1639 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(16) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1079 : f32;
  var x_1197 : f32;
  var x_1208 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1777 : f32;
  var x_1787 : f32;
  var txVec1 : vec3<f32>;
  var x_2216 : f32;
  var x_2229 : f32;
  var x_2287 : f32;
  var x_2298 : vec3<f32>;
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
  let x_396 : vec4<f32> = vs_TEXCOORD1;
  let x_399 : f32 = x_29.x_GlobalMipBias.x;
  let x_400 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_396.x, x_396.y), x_399);
  let x_401 : vec3<f32> = vec3<f32>(x_400.x, x_400.y, x_400.w);
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : f32 = u_xlat6.x;
  let x_407 : f32 = u_xlat6.z;
  u_xlat6.x = (x_405 * x_407);
  let x_410 : vec4<f32> = u_xlat6;
  let x_415 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_418.x, x_418.y), vec2<f32>(x_420.x, x_420.y));
  let x_423 : f32 = u_xlat43;
  u_xlat43 = min(x_423, 1.0f);
  let x_425 : f32 = u_xlat43;
  u_xlat43 = (-(x_425) + 1.0f);
  let x_428 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_428);
  let x_430 : f32 = u_xlat43;
  u_xlat7.z = max(x_430, 0.0000000000000001f);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : f32 = x_59.x_NormalScale0;
  let x_439 : vec2<f32> = (vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_437, x_437));
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_446 : vec4<f32> = vs_TEXCOORD1;
  let x_449 : f32 = x_29.x_GlobalMipBias.x;
  let x_450 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_446.z, x_446.w), x_449);
  let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.w);
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = u_xlat6.x;
  let x_457 : f32 = u_xlat6.z;
  u_xlat6.x = (x_455 * x_457);
  let x_460 : vec4<f32> = u_xlat6;
  let x_463 : vec2<f32> = ((vec2<f32>(x_460.x, x_460.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat6;
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_466.x, x_466.y), vec2<f32>(x_468.x, x_468.y));
  let x_471 : f32 = u_xlat43;
  u_xlat43 = min(x_471, 1.0f);
  let x_473 : f32 = u_xlat43;
  u_xlat43 = (-(x_473) + 1.0f);
  let x_476 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_476);
  let x_478 : f32 = u_xlat43;
  u_xlat8.z = max(x_478, 0.0000000000000001f);
  let x_481 : vec4<f32> = u_xlat6;
  let x_484 : f32 = x_59.x_NormalScale1;
  let x_486 : f32 = x_59.x_NormalScale1;
  let x_487 : vec2<f32> = vec2<f32>(x_484, x_486);
  let x_491 : vec2<f32> = (vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_487.x, x_487.y));
  let x_492 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat4;
  let x_496 : vec4<f32> = u_xlat8;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.y, x_494.y, x_494.y) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec4<f32> = u_xlat6;
  let x_508 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.x, x_501.x) * vec3<f32>(x_503.x, x_503.y, x_503.z)) + vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_515 : vec4<f32> = vs_TEXCOORD2;
  let x_518 : f32 = x_29.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_515.x, x_515.y), x_518);
  let x_520 : vec3<f32> = vec3<f32>(x_519.x, x_519.y, x_519.w);
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_524 : f32 = u_xlat7.x;
  let x_526 : f32 = u_xlat7.z;
  u_xlat7.x = (x_524 * x_526);
  let x_529 : vec4<f32> = u_xlat7;
  let x_532 : vec2<f32> = ((vec2<f32>(x_529.x, x_529.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_533 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat7;
  let x_537 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_535.x, x_535.y), vec2<f32>(x_537.x, x_537.y));
  let x_540 : f32 = u_xlat43;
  u_xlat43 = min(x_540, 1.0f);
  let x_542 : f32 = u_xlat43;
  u_xlat43 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_545);
  let x_547 : f32 = u_xlat43;
  u_xlat8.z = max(x_547, 0.0000000000000001f);
  let x_550 : vec4<f32> = u_xlat7;
  let x_554 : f32 = x_59.x_NormalScale2;
  let x_556 : f32 = x_59.x_NormalScale2;
  let x_557 : vec2<f32> = vec2<f32>(x_554, x_556);
  let x_561 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_557.x, x_557.y));
  let x_562 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
  let x_564 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = u_xlat8;
  let x_569 : vec4<f32> = u_xlat6;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.z, x_564.z, x_564.z) * vec3<f32>(x_566.x, x_566.y, x_566.z)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_578 : vec4<f32> = vs_TEXCOORD2;
  let x_581 : f32 = x_29.x_GlobalMipBias.x;
  let x_582 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_578.z, x_578.w), x_581);
  let x_583 : vec3<f32> = vec3<f32>(x_582.x, x_582.y, x_582.w);
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_587 : f32 = u_xlat7.x;
  let x_589 : f32 = u_xlat7.z;
  u_xlat7.x = (x_587 * x_589);
  let x_592 : vec4<f32> = u_xlat7;
  let x_595 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_596 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_598.x, x_598.y), vec2<f32>(x_600.x, x_600.y));
  let x_603 : f32 = u_xlat43;
  u_xlat43 = min(x_603, 1.0f);
  let x_605 : f32 = u_xlat43;
  u_xlat43 = (-(x_605) + 1.0f);
  let x_608 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_608);
  let x_610 : f32 = u_xlat43;
  u_xlat8.z = max(x_610, 0.0000000000000001f);
  let x_613 : vec4<f32> = u_xlat7;
  let x_617 : f32 = x_59.x_NormalScale3;
  let x_619 : f32 = x_59.x_NormalScale3;
  let x_620 : vec2<f32> = vec2<f32>(x_617, x_619);
  let x_624 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_620.x, x_620.y));
  let x_625 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat4;
  let x_629 : vec4<f32> = u_xlat8;
  let x_632 : vec4<f32> = u_xlat6;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.w, x_627.w, x_627.w) * vec3<f32>(x_629.x, x_629.y, x_629.z)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_638 : f32 = u_xlat6.z;
  u_xlat6.w = (x_638 + 0.00000999999974737875f);
  let x_642 : vec4<f32> = u_xlat6;
  let x_644 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_642.x, x_642.y, x_642.w), vec3<f32>(x_644.x, x_644.y, x_644.w));
  let x_647 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_647);
  let x_649 : f32 = u_xlat43;
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec3<f32> = (vec3<f32>(x_649, x_649, x_649) * vec3<f32>(x_651.x, x_651.y, x_651.w));
  let x_654 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_657 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_657;
  let x_660 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_660;
  let x_663 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_663;
  let x_666 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_666;
  let x_669 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_669;
  let x_672 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_672;
  let x_675 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_675;
  let x_678 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_678;
  let x_680 : vec4<f32> = u_xlat7;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_680 + x_681);
  let x_684 : f32 = u_xlat0.z;
  u_xlat8.x = x_684;
  let x_687 : f32 = u_xlat1.z;
  u_xlat8.y = x_687;
  let x_690 : f32 = u_xlat2.z;
  u_xlat8.z = x_690;
  let x_693 : f32 = u_xlat3.y;
  u_xlat8.w = x_693;
  let x_695 : vec4<f32> = u_xlat9;
  let x_698 : f32 = x_59.x_Smoothness0;
  let x_700 : f32 = x_59.x_Smoothness1;
  let x_702 : f32 = x_59.x_Smoothness2;
  let x_704 : f32 = x_59.x_Smoothness3;
  let x_707 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_695) * vec4<f32>(x_698, x_700, x_702, x_704)) + x_707);
  let x_711 : f32 = x_59.x_LayerHasMask0;
  let x_714 : f32 = x_59.x_LayerHasMask1;
  let x_717 : f32 = x_59.x_LayerHasMask2;
  let x_720 : f32 = x_59.x_LayerHasMask3;
  let x_722 : vec4<f32> = u_xlat8;
  let x_724 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_711, x_714, x_717, x_720) * x_722) + x_724);
  let x_727 : vec4<f32> = u_xlat4;
  let x_728 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_727, x_728);
  let x_731 : f32 = u_xlat0.x;
  u_xlat8.x = x_731;
  let x_734 : f32 = u_xlat1.x;
  u_xlat8.y = x_734;
  let x_737 : f32 = u_xlat2.x;
  u_xlat8.z = x_737;
  let x_740 : f32 = u_xlat3.x;
  u_xlat8.w = x_740;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_59.x_Metallic0;
  let x_748 : f32 = x_59.x_Metallic1;
  let x_751 : f32 = x_59.x_Metallic2;
  let x_754 : f32 = x_59.x_Metallic3;
  u_xlat8 = (x_742 + -(vec4<f32>(x_745, x_748, x_751, x_754)));
  let x_759 : f32 = x_59.x_LayerHasMask0;
  let x_761 : f32 = x_59.x_LayerHasMask1;
  let x_763 : f32 = x_59.x_LayerHasMask2;
  let x_765 : f32 = x_59.x_LayerHasMask3;
  let x_767 : vec4<f32> = u_xlat8;
  let x_770 : f32 = x_59.x_Metallic0;
  let x_772 : f32 = x_59.x_Metallic1;
  let x_774 : f32 = x_59.x_Metallic2;
  let x_776 : f32 = x_59.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_759, x_761, x_763, x_765) * x_767) + vec4<f32>(x_770, x_772, x_774, x_776));
  let x_779 : vec4<f32> = u_xlat4;
  let x_780 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_779, x_780);
  let x_784 : f32 = u_xlat0.y;
  u_xlat3.x = x_784;
  let x_787 : f32 = u_xlat1.y;
  u_xlat3.y = x_787;
  let x_790 : f32 = u_xlat2.y;
  u_xlat3.z = x_790;
  let x_792 : vec4<f32> = u_xlat7;
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_792) + x_794);
  let x_797 : f32 = x_59.x_LayerHasMask0;
  let x_799 : f32 = x_59.x_LayerHasMask1;
  let x_801 : f32 = x_59.x_LayerHasMask2;
  let x_803 : f32 = x_59.x_LayerHasMask3;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_797, x_799, x_801, x_803) * x_805) + x_807);
  let x_810 : vec4<f32> = u_xlat4;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_810, x_811);
  let x_813 : vec4<f32> = u_xlat6;
  let x_816 : vec4<f32> = vs_TEXCOORD5;
  let x_818 : vec3<f32> = (vec3<f32>(x_813.y, x_813.y, x_813.y) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : vec4<f32> = vs_TEXCOORD4;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.x, x_821.x) * -(vec3<f32>(x_824.x, x_824.y, x_824.z))) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat6;
  let x_836 : vec4<f32> = vs_TEXCOORD3;
  let x_839 : vec4<f32> = u_xlat1;
  let x_841 : vec3<f32> = ((vec3<f32>(x_833.z, x_833.z, x_833.z) * vec3<f32>(x_836.x, x_836.y, x_836.z)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_844.x, x_844.y, x_844.z), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_849);
  let x_851 : f32 = u_xlat43;
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = (vec3<f32>(x_851, x_851, x_851) * vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_862 : f32 = vs_TEXCOORD7.y;
  let x_864 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat43 = (x_862 * x_864);
  let x_867 : f32 = x_29.unity_MatrixV[0i].z;
  let x_869 : f32 = vs_TEXCOORD7.x;
  let x_871 : f32 = u_xlat43;
  u_xlat43 = ((x_867 * x_869) + x_871);
  let x_874 : f32 = x_29.unity_MatrixV[2i].z;
  let x_876 : f32 = vs_TEXCOORD7.z;
  let x_878 : f32 = u_xlat43;
  u_xlat43 = ((x_874 * x_876) + x_878);
  let x_880 : f32 = u_xlat43;
  let x_882 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat43 = (x_880 + x_882);
  let x_884 : f32 = u_xlat43;
  let x_887 : f32 = x_29.x_ProjectionParams.y;
  u_xlat43 = (-(x_884) + -(x_887));
  let x_890 : f32 = u_xlat43;
  u_xlat43 = max(x_890, 0.0f);
  let x_892 : f32 = u_xlat43;
  let x_894 : f32 = x_29.unity_FogParams.x;
  u_xlat43 = (x_892 * x_894);
  let x_901 : vec4<f32> = vs_TEXCOORD0;
  let x_904 : f32 = x_29.x_GlobalMipBias.x;
  let x_905 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_901.z, x_901.w), x_904);
  u_xlat2 = x_905;
  let x_910 : vec4<f32> = vs_TEXCOORD0;
  let x_913 : f32 = x_29.x_GlobalMipBias.x;
  let x_914 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_910.z, x_910.w), x_913);
  let x_915 : vec3<f32> = vec3<f32>(x_914.x, x_914.y, x_914.z);
  let x_916 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat2;
  let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat1;
  let x_927 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_925.x, x_925.y, x_925.z), vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_932 : f32 = u_xlat2.x;
  u_xlat2.x = (x_932 + 0.5f);
  let x_935 : vec4<f32> = u_xlat2;
  let x_937 : vec4<f32> = u_xlat3;
  let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.x, x_935.x) * vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_944 : f32 = u_xlat2.w;
  u_xlat44 = max(x_944, 0.00009999999747378752f);
  let x_947 : vec4<f32> = u_xlat2;
  let x_949 : f32 = u_xlat44;
  let x_951 : vec3<f32> = (vec3<f32>(x_947.x, x_947.y, x_947.z) / vec3<f32>(x_949, x_949, x_949));
  let x_952 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_955 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_955) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_960 : f32 = u_xlat28;
  let x_961 : f32 = u_xlat44;
  u_xlat3.x = (x_960 + -(x_961));
  let x_966 : f32 = u_xlat44;
  let x_968 : vec4<f32> = u_xlat5;
  u_xlat17 = (vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat5;
  let x_975 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_976 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec3<f32> = u_xlat0;
  let x_980 : vec4<f32> = u_xlat4;
  let x_985 : vec3<f32> = ((vec3<f32>(x_978.x, x_978.x, x_978.x) * vec3<f32>(x_980.x, x_980.y, x_980.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_986 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : f32 = u_xlat28;
  u_xlat0.x = (-(x_988) + 1.0f);
  let x_993 : f32 = u_xlat0.x;
  let x_995 : f32 = u_xlat0.x;
  u_xlat28 = (x_993 * x_995);
  let x_997 : f32 = u_xlat28;
  u_xlat28 = max(x_997, 0.0078125f);
  let x_1000 : f32 = u_xlat28;
  let x_1001 : f32 = u_xlat28;
  u_xlat44 = (x_1000 * x_1001);
  let x_1004 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1004 + 1.0f);
  let x_1008 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1008, 0.0f, 1.0f);
  let x_1012 : f32 = u_xlat28;
  u_xlat46 = ((x_1012 * 4.0f) + 2.0f);
  let x_1015 : f32 = u_xlat14;
  u_xlat14 = min(x_1015, 1.0f);
  let x_1020 : vec4<f32> = vs_TEXCOORD8;
  let x_1021 : vec2<f32> = vec2<f32>(x_1020.x, x_1020.y);
  let x_1023 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1021.x, x_1021.y, x_1023);
  let x_1035 : vec3<f32> = txVec0;
  let x_1037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1035.xy, x_1035.z);
  u_xlat5.x = x_1037;
  let x_1049 : f32 = x_1047.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_1049) + 1.0f);
  let x_1054 : f32 = u_xlat5.x;
  let x_1056 : f32 = x_1047.x_MainLightShadowParams.x;
  let x_1059 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_1054 * x_1056) + x_1059);
  let x_1064 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_1064);
  let x_1070 : f32 = vs_TEXCOORD8.z;
  u_xlatb33.x = (x_1070 >= 1.0f);
  let x_1074 : bool = u_xlatb33.x;
  let x_1075 : bool = u_xlatb19;
  u_xlatb19 = (x_1074 | x_1075);
  let x_1077 : bool = u_xlatb19;
  if (x_1077) {
    x_1079 = 1.0f;
  } else {
    let x_1084 : f32 = u_xlat5.x;
    x_1079 = x_1084;
  }
  let x_1085 : f32 = x_1079;
  u_xlat5.x = x_1085;
  let x_1087 : vec3<f32> = vs_TEXCOORD7;
  let x_1090 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1087 + -(x_1090));
  let x_1093 : vec3<f32> = u_xlat19;
  let x_1094 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_1093, x_1094);
  let x_1100 : f32 = u_xlat19.x;
  let x_1102 : f32 = x_1047.x_MainLightShadowParams.z;
  let x_1105 : f32 = x_1047.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_1100 * x_1102) + x_1105);
  let x_1109 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1109, 0.0f, 1.0f);
  let x_1114 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_1114) + 1.0f);
  let x_1118 : f32 = u_xlat33.x;
  let x_1119 : f32 = u_xlat47;
  let x_1122 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1118 * x_1119) + x_1122);
  let x_1132 : f32 = x_1130.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_1132 == -1.0f));
  let x_1136 : bool = u_xlatb33.x;
  if (x_1136) {
    let x_1139 : vec3<f32> = vs_TEXCOORD7;
    let x_1142 : vec4<f32> = x_1130.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_1139.y, x_1139.y) * vec2<f32>(x_1142.x, x_1142.y));
    let x_1146 : vec4<f32> = x_1130.x_MainLightWorldToLight[0i];
    let x_1148 : vec3<f32> = vs_TEXCOORD7;
    let x_1151 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1148.x, x_1148.x)) + x_1151);
    let x_1154 : vec4<f32> = x_1130.x_MainLightWorldToLight[2i];
    let x_1156 : vec3<f32> = vs_TEXCOORD7;
    let x_1159 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1154.x, x_1154.y) * vec2<f32>(x_1156.z, x_1156.z)) + x_1159);
    let x_1161 : vec2<f32> = u_xlat33;
    let x_1163 : vec4<f32> = x_1130.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_1161 + vec2<f32>(x_1163.x, x_1163.y));
    let x_1166 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_1166 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1174 : vec2<f32> = u_xlat33;
    let x_1176 : f32 = x_29.x_GlobalMipBias.x;
    let x_1177 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1174, x_1176);
    u_xlat6 = x_1177;
    let x_1179 : f32 = x_1130.x_MainLightCookieTextureFormat;
    let x_1181 : f32 = x_1130.x_MainLightCookieTextureFormat;
    let x_1183 : f32 = x_1130.x_MainLightCookieTextureFormat;
    let x_1185 : f32 = x_1130.x_MainLightCookieTextureFormat;
    let x_1186 : vec4<f32> = vec4<f32>(x_1179, x_1181, x_1183, x_1185);
    let x_1193 : vec4<bool> = (vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1186.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_1193.x, x_1193.y);
    let x_1196 : bool = u_xlatb33.y;
    if (x_1196) {
      let x_1201 : f32 = u_xlat6.w;
      x_1197 = x_1201;
    } else {
      let x_1204 : f32 = u_xlat6.x;
      x_1197 = x_1204;
    }
    let x_1205 : f32 = x_1197;
    u_xlat47 = x_1205;
    let x_1207 : bool = u_xlatb33.x;
    if (x_1207) {
      let x_1211 : vec4<f32> = u_xlat6;
      x_1208 = vec3<f32>(x_1211.x, x_1211.y, x_1211.z);
    } else {
      let x_1214 : f32 = u_xlat47;
      x_1208 = vec3<f32>(x_1214, x_1214, x_1214);
    }
    let x_1216 : vec3<f32> = x_1208;
    let x_1217 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1223 : vec4<f32> = u_xlat6;
  let x_1226 : vec4<f32> = x_29.x_MainLightColor;
  let x_1228 : vec3<f32> = (vec3<f32>(x_1223.x, x_1223.y, x_1223.z) * vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1229 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
  let x_1232 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1232;
  let x_1235 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1235;
  let x_1238 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1238;
  let x_1240 : vec4<f32> = u_xlat7;
  let x_1243 : vec4<f32> = u_xlat1;
  u_xlat33.x = dot(-(vec3<f32>(x_1240.x, x_1240.y, x_1240.z)), vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1248 : f32 = u_xlat33.x;
  let x_1250 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1248 + x_1250);
  let x_1253 : vec4<f32> = u_xlat1;
  let x_1255 : vec2<f32> = u_xlat33;
  let x_1259 : vec4<f32> = u_xlat7;
  let x_1262 : vec3<f32> = ((vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * -(vec3<f32>(x_1255.x, x_1255.x, x_1255.x))) + -(vec3<f32>(x_1259.x, x_1259.y, x_1259.z)));
  let x_1263 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : vec4<f32> = u_xlat1;
  let x_1267 : vec4<f32> = u_xlat7;
  u_xlat33.x = dot(vec3<f32>(x_1265.x, x_1265.y, x_1265.z), vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1272 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1272, 0.0f, 1.0f);
  let x_1276 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_1276) + 1.0f);
  let x_1281 : f32 = u_xlat33.x;
  let x_1283 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1281 * x_1283);
  let x_1287 : f32 = u_xlat33.x;
  let x_1289 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1287 * x_1289);
  let x_1293 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1293) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1300 : f32 = u_xlat0.x;
  let x_1301 : f32 = u_xlat47;
  u_xlat0.x = (x_1300 * x_1301);
  let x_1305 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1305 * 6.0f);
  let x_1317 : vec4<f32> = u_xlat8;
  let x_1320 : f32 = u_xlat0.x;
  let x_1321 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1317.x, x_1317.y, x_1317.z), x_1320);
  u_xlat8 = x_1321;
  let x_1323 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1323 + -1.0f);
  let x_1331 : f32 = x_1329.unity_SpecCube0_HDR.w;
  let x_1333 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1331 * x_1333) + 1.0f);
  let x_1338 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1338, 0.0f);
  let x_1342 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1342);
  let x_1346 : f32 = u_xlat0.x;
  let x_1348 : f32 = x_1329.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1346 * x_1348);
  let x_1352 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1352);
  let x_1356 : f32 = u_xlat0.x;
  let x_1358 : f32 = x_1329.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1356 * x_1358);
  let x_1361 : vec4<f32> = u_xlat8;
  let x_1363 : vec3<f32> = u_xlat0;
  let x_1365 : vec3<f32> = (vec3<f32>(x_1361.x, x_1361.y, x_1361.z) * vec3<f32>(x_1363.x, x_1363.x, x_1363.x));
  let x_1366 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1368 : f32 = u_xlat28;
  let x_1370 : f32 = u_xlat28;
  let x_1374 : vec2<f32> = ((vec2<f32>(x_1368, x_1368) * vec2<f32>(x_1370, x_1370)) + vec2<f32>(-1.0f, 1.0f));
  let x_1375 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1374.x, x_1375.y, x_1374.y);
  let x_1378 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1378);
  let x_1380 : vec4<f32> = u_xlat4;
  let x_1383 : vec4<f32> = u_xlat3;
  let x_1385 : vec3<f32> = (-(vec3<f32>(x_1380.x, x_1380.y, x_1380.z)) + vec3<f32>(x_1383.x, x_1383.x, x_1383.x));
  let x_1386 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
  let x_1388 : vec2<f32> = u_xlat33;
  let x_1390 : vec4<f32> = u_xlat9;
  let x_1393 : vec4<f32> = u_xlat4;
  let x_1395 : vec3<f32> = ((vec3<f32>(x_1388.x, x_1388.x, x_1388.x) * vec3<f32>(x_1390.x, x_1390.y, x_1390.z)) + vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
  let x_1396 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
  let x_1398 : f32 = u_xlat28;
  let x_1400 : vec4<f32> = u_xlat9;
  let x_1402 : vec3<f32> = (vec3<f32>(x_1398, x_1398, x_1398) * vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
  let x_1403 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
  let x_1405 : vec4<f32> = u_xlat8;
  let x_1407 : vec4<f32> = u_xlat9;
  let x_1409 : vec3<f32> = (vec3<f32>(x_1405.x, x_1405.y, x_1405.z) * vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
  let x_1410 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1412 : vec4<f32> = u_xlat2;
  let x_1414 : vec3<f32> = u_xlat17;
  let x_1416 : vec4<f32> = u_xlat8;
  let x_1418 : vec3<f32> = ((vec3<f32>(x_1412.x, x_1412.y, x_1412.z) * x_1414) + vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1422 : f32 = u_xlat5.x;
  let x_1424 : f32 = x_1329.unity_LightData.z;
  u_xlat28 = (x_1422 * x_1424);
  let x_1426 : vec4<f32> = u_xlat1;
  let x_1429 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1426.x, x_1426.y, x_1426.z), vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
  let x_1434 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1434, 0.0f, 1.0f);
  let x_1437 : f32 = u_xlat28;
  let x_1439 : f32 = u_xlat3.x;
  u_xlat28 = (x_1437 * x_1439);
  let x_1441 : f32 = u_xlat28;
  let x_1443 : vec4<f32> = u_xlat6;
  let x_1445 : vec3<f32> = (vec3<f32>(x_1441, x_1441, x_1441) * vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
  let x_1446 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1445.x, x_1446.y, x_1445.y, x_1445.z);
  let x_1448 : vec4<f32> = u_xlat7;
  let x_1451 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1453 : vec3<f32> = (vec3<f32>(x_1448.x, x_1448.y, x_1448.z) + vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
  let x_1454 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
  let x_1456 : vec4<f32> = u_xlat6;
  let x_1458 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1456.x, x_1456.y, x_1456.z), vec3<f32>(x_1458.x, x_1458.y, x_1458.z));
  let x_1461 : f32 = u_xlat28;
  u_xlat28 = max(x_1461, 1.17549435e-38f);
  let x_1464 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1464);
  let x_1466 : f32 = u_xlat28;
  let x_1468 : vec4<f32> = u_xlat6;
  let x_1470 : vec3<f32> = (vec3<f32>(x_1466, x_1466, x_1466) * vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
  let x_1471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1473 : vec4<f32> = u_xlat1;
  let x_1475 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1473.x, x_1473.y, x_1473.z), vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
  let x_1478 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1478, 0.0f, 1.0f);
  let x_1481 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1483 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1481.x, x_1481.y, x_1481.z), vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
  let x_1488 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1488, 0.0f, 1.0f);
  let x_1491 : f32 = u_xlat28;
  let x_1492 : f32 = u_xlat28;
  u_xlat28 = (x_1491 * x_1492);
  let x_1494 : f32 = u_xlat28;
  let x_1496 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1494 * x_1496) + 1.00001001358032226562f);
  let x_1501 : f32 = u_xlat3.x;
  let x_1503 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1501 * x_1503);
  let x_1506 : f32 = u_xlat28;
  let x_1507 : f32 = u_xlat28;
  u_xlat28 = (x_1506 * x_1507);
  let x_1510 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1510, 0.10000000149011611938f);
  let x_1514 : f32 = u_xlat28;
  let x_1516 : f32 = u_xlat3.x;
  u_xlat28 = (x_1514 * x_1516);
  let x_1518 : f32 = u_xlat46;
  let x_1519 : f32 = u_xlat28;
  u_xlat28 = (x_1518 * x_1519);
  let x_1521 : f32 = u_xlat44;
  let x_1522 : f32 = u_xlat28;
  u_xlat28 = (x_1521 / x_1522);
  let x_1524 : vec4<f32> = u_xlat4;
  let x_1526 : f32 = u_xlat28;
  let x_1529 : vec3<f32> = u_xlat17;
  let x_1530 : vec3<f32> = ((vec3<f32>(x_1524.x, x_1524.y, x_1524.z) * vec3<f32>(x_1526, x_1526, x_1526)) + x_1529);
  let x_1531 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
  let x_1533 : vec4<f32> = u_xlat5;
  let x_1535 : vec4<f32> = u_xlat6;
  let x_1537 : vec3<f32> = (vec3<f32>(x_1533.x, x_1533.z, x_1533.w) * vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
  let x_1538 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1537.x, x_1538.y, x_1537.y, x_1537.z);
  let x_1541 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1543 : f32 = x_1329.unity_LightData.y;
  u_xlat28 = min(x_1541, x_1543);
  let x_1547 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1547));
  let x_1551 : f32 = u_xlat19.x;
  let x_1553 : f32 = x_1047.x_AdditionalShadowFadeParams.x;
  let x_1556 : f32 = x_1047.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1551 * x_1553) + x_1556);
  let x_1560 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1560, 0.0f, 1.0f);
  let x_1565 : f32 = x_1130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1567 : f32 = x_1130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1569 : f32 = x_1130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1571 : f32 = x_1130.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1572 : vec4<f32> = vec4<f32>(x_1565, x_1567, x_1569, x_1571);
  let x_1579 : vec4<bool> = (vec4<f32>(x_1572.x, x_1572.y, x_1572.z, x_1572.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1579.x, x_1579.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1591 : u32 = u_xlatu_loop_1;
    let x_1592 : u32 = u_xlatu28;
    if ((x_1591 < x_1592)) {
    } else {
      break;
    }
    let x_1595 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_1595 >> 2u);
    let x_1599 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1599 & 3u));
    let x_1603 : u32 = u_xlatu34;
    let x_1606 : vec4<f32> = x_1329.unity_LightIndices[bitcast<i32>(x_1603)];
    let x_1616 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1621 : vec4<u32> = indexable[x_1616];
    u_xlat34.x = dot(x_1606, bitcast<vec4<f32>>(x_1621));
    let x_1627 : f32 = u_xlat34.x;
    u_xlati34 = i32(x_1627);
    let x_1629 : vec3<f32> = vs_TEXCOORD7;
    let x_1640 : i32 = u_xlati34;
    let x_1642 : vec4<f32> = x_1639.x_AdditionalLightsPosition[x_1640];
    let x_1645 : i32 = u_xlati34;
    let x_1647 : vec4<f32> = x_1639.x_AdditionalLightsPosition[x_1645];
    let x_1649 : vec3<f32> = ((-(x_1629) * vec3<f32>(x_1642.w, x_1642.w, x_1642.w)) + vec3<f32>(x_1647.x, x_1647.y, x_1647.z));
    let x_1650 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
    let x_1653 : vec4<f32> = u_xlat9;
    let x_1655 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1653.x, x_1653.y, x_1653.z), vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
    let x_1658 : f32 = u_xlat48;
    u_xlat48 = max(x_1658, 0.00006103515625f);
    let x_1661 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1661);
    let x_1663 : f32 = u_xlat49;
    let x_1665 : vec4<f32> = u_xlat9;
    let x_1667 : vec3<f32> = (vec3<f32>(x_1663, x_1663, x_1663) * vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
    let x_1668 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
    let x_1671 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1671);
    let x_1673 : f32 = u_xlat48;
    let x_1674 : i32 = u_xlati34;
    let x_1676 : f32 = x_1639.x_AdditionalLightsAttenuation[x_1674].x;
    u_xlat48 = (x_1673 * x_1676);
    let x_1678 : f32 = u_xlat48;
    let x_1680 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1678) * x_1680) + 1.0f);
    let x_1683 : f32 = u_xlat48;
    u_xlat48 = max(x_1683, 0.0f);
    let x_1685 : f32 = u_xlat48;
    let x_1686 : f32 = u_xlat48;
    u_xlat48 = (x_1685 * x_1686);
    let x_1688 : f32 = u_xlat48;
    let x_1689 : f32 = u_xlat50;
    u_xlat48 = (x_1688 * x_1689);
    let x_1691 : i32 = u_xlati34;
    let x_1693 : vec4<f32> = x_1639.x_AdditionalLightsSpotDir[x_1691];
    let x_1695 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1693.x, x_1693.y, x_1693.z), vec3<f32>(x_1695.x, x_1695.y, x_1695.z));
    let x_1698 : f32 = u_xlat50;
    let x_1699 : i32 = u_xlati34;
    let x_1701 : f32 = x_1639.x_AdditionalLightsAttenuation[x_1699].z;
    let x_1703 : i32 = u_xlati34;
    let x_1705 : f32 = x_1639.x_AdditionalLightsAttenuation[x_1703].w;
    u_xlat50 = ((x_1698 * x_1701) + x_1705);
    let x_1707 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1707, 0.0f, 1.0f);
    let x_1709 : f32 = u_xlat50;
    let x_1710 : f32 = u_xlat50;
    u_xlat50 = (x_1709 * x_1710);
    let x_1712 : f32 = u_xlat48;
    let x_1713 : f32 = u_xlat50;
    u_xlat48 = (x_1712 * x_1713);
    let x_1716 : i32 = u_xlati34;
    let x_1718 : f32 = x_1047.x_AdditionalShadowParams[x_1716].w;
    u_xlati50 = i32(x_1718);
    let x_1721 : i32 = u_xlati50;
    u_xlatb51 = (x_1721 >= 0i);
    let x_1723 : bool = u_xlatb51;
    if (x_1723) {
      let x_1727 : i32 = u_xlati34;
      let x_1729 : f32 = x_1047.x_AdditionalShadowParams[x_1727].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1729, x_1729, x_1729, x_1729))));
      let x_1733 : bool = u_xlatb51;
      if (x_1733) {
        let x_1738 : vec4<f32> = u_xlat10;
        let x_1741 : vec4<f32> = u_xlat10;
        let x_1744 : vec4<bool> = (abs(vec4<f32>(x_1738.z, x_1738.z, x_1738.y, x_1738.z)) >= abs(vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.x)));
        let x_1746 : vec3<bool> = vec3<bool>(x_1744.x, x_1744.y, x_1744.z);
        let x_1747 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
        let x_1750 : bool = u_xlatb11.y;
        let x_1752 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1750 & x_1752);
        let x_1754 : vec4<f32> = u_xlat10;
        let x_1757 : vec4<bool> = (-(vec4<f32>(x_1754.z, x_1754.y, x_1754.z, x_1754.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1758 : vec3<bool> = vec3<bool>(x_1757.x, x_1757.y, x_1757.w);
        let x_1759 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1758.x, x_1758.y, x_1759.z, x_1758.z);
        let x_1762 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1762);
        let x_1767 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1767);
        let x_1773 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1773);
        let x_1776 : bool = u_xlatb11.z;
        if (x_1776) {
          let x_1781 : f32 = u_xlat11.y;
          x_1777 = x_1781;
        } else {
          let x_1783 : f32 = u_xlat52;
          x_1777 = x_1783;
        }
        let x_1784 : f32 = x_1777;
        u_xlat52 = x_1784;
        let x_1786 : bool = u_xlatb51;
        if (x_1786) {
          let x_1791 : f32 = u_xlat11.x;
          x_1787 = x_1791;
        } else {
          let x_1793 : f32 = u_xlat52;
          x_1787 = x_1793;
        }
        let x_1794 : f32 = x_1787;
        u_xlat51 = x_1794;
        let x_1795 : i32 = u_xlati34;
        let x_1797 : f32 = x_1047.x_AdditionalShadowParams[x_1795].w;
        u_xlat52 = trunc(x_1797);
        let x_1799 : f32 = u_xlat51;
        let x_1800 : f32 = u_xlat52;
        u_xlat51 = (x_1799 + x_1800);
        let x_1802 : f32 = u_xlat51;
        u_xlati50 = i32(x_1802);
      }
      let x_1804 : i32 = u_xlati50;
      u_xlati50 = (x_1804 << bitcast<u32>(2i));
      let x_1806 : vec3<f32> = vs_TEXCOORD7;
      let x_1808 : i32 = u_xlati50;
      let x_1811 : i32 = u_xlati50;
      let x_1815 : vec4<f32> = x_1047.x_AdditionalLightsWorldToShadow[((x_1808 + 1i) / 4i)][((x_1811 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1806.y, x_1806.y, x_1806.y, x_1806.y) * x_1815);
      let x_1817 : i32 = u_xlati50;
      let x_1819 : i32 = u_xlati50;
      let x_1822 : vec4<f32> = x_1047.x_AdditionalLightsWorldToShadow[(x_1817 / 4i)][(x_1819 % 4i)];
      let x_1823 : vec3<f32> = vs_TEXCOORD7;
      let x_1826 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1822 * vec4<f32>(x_1823.x, x_1823.x, x_1823.x, x_1823.x)) + x_1826);
      let x_1828 : i32 = u_xlati50;
      let x_1831 : i32 = u_xlati50;
      let x_1835 : vec4<f32> = x_1047.x_AdditionalLightsWorldToShadow[((x_1828 + 2i) / 4i)][((x_1831 + 2i) % 4i)];
      let x_1836 : vec3<f32> = vs_TEXCOORD7;
      let x_1839 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1835 * vec4<f32>(x_1836.z, x_1836.z, x_1836.z, x_1836.z)) + x_1839);
      let x_1841 : vec4<f32> = u_xlat11;
      let x_1842 : i32 = u_xlati50;
      let x_1845 : i32 = u_xlati50;
      let x_1849 : vec4<f32> = x_1047.x_AdditionalLightsWorldToShadow[((x_1842 + 3i) / 4i)][((x_1845 + 3i) % 4i)];
      u_xlat11 = (x_1841 + x_1849);
      let x_1851 : vec4<f32> = u_xlat11;
      let x_1853 : vec4<f32> = u_xlat11;
      let x_1855 : vec3<f32> = (vec3<f32>(x_1851.x, x_1851.y, x_1851.z) / vec3<f32>(x_1853.w, x_1853.w, x_1853.w));
      let x_1856 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
      let x_1859 : vec4<f32> = u_xlat11;
      let x_1860 : vec2<f32> = vec2<f32>(x_1859.x, x_1859.y);
      let x_1862 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1860.x, x_1860.y, x_1862);
      let x_1870 : vec3<f32> = txVec1;
      let x_1872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1870.xy, x_1870.z);
      u_xlat50 = x_1872;
      let x_1873 : i32 = u_xlati34;
      let x_1875 : f32 = x_1047.x_AdditionalShadowParams[x_1873].x;
      u_xlat51 = (1.0f + -(x_1875));
      let x_1878 : f32 = u_xlat50;
      let x_1879 : i32 = u_xlati34;
      let x_1881 : f32 = x_1047.x_AdditionalShadowParams[x_1879].x;
      let x_1883 : f32 = u_xlat51;
      u_xlat50 = ((x_1878 * x_1881) + x_1883);
      let x_1886 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1886);
      let x_1890 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1890 >= 1.0f);
      let x_1892 : bool = u_xlatb51;
      let x_1893 : bool = u_xlatb52;
      u_xlatb51 = (x_1892 | x_1893);
      let x_1895 : bool = u_xlatb51;
      let x_1896 : f32 = u_xlat50;
      u_xlat50 = select(x_1896, 1.0f, x_1895);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1899 : f32 = u_xlat50;
    u_xlat51 = (-(x_1899) + 1.0f);
    let x_1903 : f32 = u_xlat3.x;
    let x_1904 : f32 = u_xlat51;
    let x_1906 : f32 = u_xlat50;
    u_xlat50 = ((x_1903 * x_1904) + x_1906);
    let x_1909 : i32 = u_xlati34;
    u_xlati51 = (1i << bitcast<u32>((x_1909 & 31i)));
    let x_1912 : i32 = u_xlati51;
    let x_1915 : f32 = x_1130.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1912) & bitcast<u32>(x_1915)));
    let x_1919 : i32 = u_xlati51;
    if ((x_1919 != 0i)) {
      let x_1923 : i32 = u_xlati34;
      let x_1925 : f32 = x_1130.x_AdditionalLightsLightTypes[x_1923].el;
      u_xlati51 = i32(x_1925);
      let x_1928 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1928 != 0i));
      let x_1932 : i32 = u_xlati34;
      u_xlati11 = (x_1932 << bitcast<u32>(2i));
      let x_1934 : i32 = u_xlati52;
      if ((x_1934 != 0i)) {
        let x_1939 : vec3<f32> = vs_TEXCOORD7;
        let x_1941 : i32 = u_xlati11;
        let x_1944 : i32 = u_xlati11;
        let x_1948 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[((x_1941 + 1i) / 4i)][((x_1944 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1939.y, x_1939.y, x_1939.y) * vec3<f32>(x_1948.x, x_1948.y, x_1948.w));
        let x_1951 : i32 = u_xlati11;
        let x_1953 : i32 = u_xlati11;
        let x_1956 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[(x_1951 / 4i)][(x_1953 % 4i)];
        let x_1958 : vec3<f32> = vs_TEXCOORD7;
        let x_1961 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1956.x, x_1956.y, x_1956.w) * vec3<f32>(x_1958.x, x_1958.x, x_1958.x)) + x_1961);
        let x_1963 : i32 = u_xlati11;
        let x_1966 : i32 = u_xlati11;
        let x_1970 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[((x_1963 + 2i) / 4i)][((x_1966 + 2i) % 4i)];
        let x_1972 : vec3<f32> = vs_TEXCOORD7;
        let x_1975 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1970.x, x_1970.y, x_1970.w) * vec3<f32>(x_1972.z, x_1972.z, x_1972.z)) + x_1975);
        let x_1977 : vec3<f32> = u_xlat25;
        let x_1978 : i32 = u_xlati11;
        let x_1981 : i32 = u_xlati11;
        let x_1985 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[((x_1978 + 3i) / 4i)][((x_1981 + 3i) % 4i)];
        u_xlat25 = (x_1977 + vec3<f32>(x_1985.x, x_1985.y, x_1985.w));
        let x_1988 : vec3<f32> = u_xlat25;
        let x_1990 : vec3<f32> = u_xlat25;
        let x_1992 : vec2<f32> = (vec2<f32>(x_1988.x, x_1988.y) / vec2<f32>(x_1990.z, x_1990.z));
        let x_1993 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1992.x, x_1992.y, x_1993.z);
        let x_1995 : vec3<f32> = u_xlat25;
        let x_1998 : vec2<f32> = ((vec2<f32>(x_1995.x, x_1995.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1999 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1998.x, x_1998.y, x_1999.z);
        let x_2001 : vec3<f32> = u_xlat25;
        let x_2005 : vec2<f32> = clamp(vec2<f32>(x_2001.x, x_2001.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2006 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2005.x, x_2005.y, x_2006.z);
        let x_2008 : i32 = u_xlati34;
        let x_2010 : vec4<f32> = x_1130.x_AdditionalLightsCookieAtlasUVRects[x_2008];
        let x_2012 : vec3<f32> = u_xlat25;
        let x_2015 : i32 = u_xlati34;
        let x_2017 : vec4<f32> = x_1130.x_AdditionalLightsCookieAtlasUVRects[x_2015];
        let x_2019 : vec2<f32> = ((vec2<f32>(x_2010.x, x_2010.y) * vec2<f32>(x_2012.x, x_2012.y)) + vec2<f32>(x_2017.z, x_2017.w));
        let x_2020 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2019.x, x_2019.y, x_2020.z);
      } else {
        let x_2023 : i32 = u_xlati51;
        u_xlatb51 = (x_2023 == 1i);
        let x_2025 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2025);
        let x_2027 : i32 = u_xlati51;
        if ((x_2027 != 0i)) {
          let x_2031 : vec3<f32> = vs_TEXCOORD7;
          let x_2033 : i32 = u_xlati11;
          let x_2036 : i32 = u_xlati11;
          let x_2040 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[((x_2033 + 1i) / 4i)][((x_2036 + 1i) % 4i)];
          let x_2042 : vec2<f32> = (vec2<f32>(x_2031.y, x_2031.y) * vec2<f32>(x_2040.x, x_2040.y));
          let x_2043 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2042.x, x_2042.y, x_2043.z, x_2043.w);
          let x_2045 : i32 = u_xlati11;
          let x_2047 : i32 = u_xlati11;
          let x_2050 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[(x_2045 / 4i)][(x_2047 % 4i)];
          let x_2052 : vec3<f32> = vs_TEXCOORD7;
          let x_2055 : vec4<f32> = u_xlat12;
          let x_2057 : vec2<f32> = ((vec2<f32>(x_2050.x, x_2050.y) * vec2<f32>(x_2052.x, x_2052.x)) + vec2<f32>(x_2055.x, x_2055.y));
          let x_2058 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2057.x, x_2057.y, x_2058.z, x_2058.w);
          let x_2060 : i32 = u_xlati11;
          let x_2063 : i32 = u_xlati11;
          let x_2067 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[((x_2060 + 2i) / 4i)][((x_2063 + 2i) % 4i)];
          let x_2069 : vec3<f32> = vs_TEXCOORD7;
          let x_2072 : vec4<f32> = u_xlat12;
          let x_2074 : vec2<f32> = ((vec2<f32>(x_2067.x, x_2067.y) * vec2<f32>(x_2069.z, x_2069.z)) + vec2<f32>(x_2072.x, x_2072.y));
          let x_2075 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2074.x, x_2074.y, x_2075.z, x_2075.w);
          let x_2077 : vec4<f32> = u_xlat12;
          let x_2079 : i32 = u_xlati11;
          let x_2082 : i32 = u_xlati11;
          let x_2086 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[((x_2079 + 3i) / 4i)][((x_2082 + 3i) % 4i)];
          let x_2088 : vec2<f32> = (vec2<f32>(x_2077.x, x_2077.y) + vec2<f32>(x_2086.x, x_2086.y));
          let x_2089 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2088.x, x_2088.y, x_2089.z, x_2089.w);
          let x_2091 : vec4<f32> = u_xlat12;
          let x_2094 : vec2<f32> = ((vec2<f32>(x_2091.x, x_2091.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2095 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2094.x, x_2094.y, x_2095.z, x_2095.w);
          let x_2097 : vec4<f32> = u_xlat12;
          let x_2099 : vec2<f32> = fract(vec2<f32>(x_2097.x, x_2097.y));
          let x_2100 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2099.x, x_2099.y, x_2100.z, x_2100.w);
          let x_2102 : i32 = u_xlati34;
          let x_2104 : vec4<f32> = x_1130.x_AdditionalLightsCookieAtlasUVRects[x_2102];
          let x_2106 : vec4<f32> = u_xlat12;
          let x_2109 : i32 = u_xlati34;
          let x_2111 : vec4<f32> = x_1130.x_AdditionalLightsCookieAtlasUVRects[x_2109];
          let x_2113 : vec2<f32> = ((vec2<f32>(x_2104.x, x_2104.y) * vec2<f32>(x_2106.x, x_2106.y)) + vec2<f32>(x_2111.z, x_2111.w));
          let x_2114 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2113.x, x_2113.y, x_2114.z);
        } else {
          let x_2117 : vec3<f32> = vs_TEXCOORD7;
          let x_2119 : i32 = u_xlati11;
          let x_2122 : i32 = u_xlati11;
          let x_2126 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[((x_2119 + 1i) / 4i)][((x_2122 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2117.y, x_2117.y, x_2117.y, x_2117.y) * x_2126);
          let x_2128 : i32 = u_xlati11;
          let x_2130 : i32 = u_xlati11;
          let x_2133 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[(x_2128 / 4i)][(x_2130 % 4i)];
          let x_2134 : vec3<f32> = vs_TEXCOORD7;
          let x_2137 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2133 * vec4<f32>(x_2134.x, x_2134.x, x_2134.x, x_2134.x)) + x_2137);
          let x_2139 : i32 = u_xlati11;
          let x_2142 : i32 = u_xlati11;
          let x_2146 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[((x_2139 + 2i) / 4i)][((x_2142 + 2i) % 4i)];
          let x_2147 : vec3<f32> = vs_TEXCOORD7;
          let x_2150 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2146 * vec4<f32>(x_2147.z, x_2147.z, x_2147.z, x_2147.z)) + x_2150);
          let x_2152 : vec4<f32> = u_xlat12;
          let x_2153 : i32 = u_xlati11;
          let x_2156 : i32 = u_xlati11;
          let x_2160 : vec4<f32> = x_1130.x_AdditionalLightsWorldToLights[((x_2153 + 3i) / 4i)][((x_2156 + 3i) % 4i)];
          u_xlat12 = (x_2152 + x_2160);
          let x_2162 : vec4<f32> = u_xlat12;
          let x_2164 : vec4<f32> = u_xlat12;
          let x_2166 : vec3<f32> = (vec3<f32>(x_2162.x, x_2162.y, x_2162.z) / vec3<f32>(x_2164.w, x_2164.w, x_2164.w));
          let x_2167 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
          let x_2169 : vec4<f32> = u_xlat12;
          let x_2171 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2169.x, x_2169.y, x_2169.z), vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
          let x_2174 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2174);
          let x_2176 : f32 = u_xlat51;
          let x_2178 : vec4<f32> = u_xlat12;
          let x_2180 : vec3<f32> = (vec3<f32>(x_2176, x_2176, x_2176) * vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
          let x_2181 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
          let x_2183 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2183.x, x_2183.y, x_2183.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2188 : f32 = u_xlat51;
          u_xlat51 = max(x_2188, 0.00000099999999747524f);
          let x_2191 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2191);
          let x_2193 : f32 = u_xlat51;
          let x_2195 : vec4<f32> = u_xlat12;
          let x_2197 : vec3<f32> = (vec3<f32>(x_2193, x_2193, x_2193) * vec3<f32>(x_2195.z, x_2195.x, x_2195.y));
          let x_2198 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2197.x, x_2197.y, x_2197.z, x_2198.w);
          let x_2201 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2201);
          let x_2205 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2205, 0.0f, 1.0f);
          let x_2208 : vec4<f32> = u_xlat13;
          let x_2210 : vec4<bool> = (vec4<f32>(x_2208.y, x_2208.y, x_2208.y, x_2208.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2211 : vec2<bool> = vec2<bool>(x_2210.x, x_2210.w);
          let x_2212 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2211.x, x_2212.y, x_2212.z, x_2211.y);
          let x_2215 : bool = u_xlatb11.x;
          if (x_2215) {
            let x_2220 : f32 = u_xlat13.x;
            x_2216 = x_2220;
          } else {
            let x_2223 : f32 = u_xlat13.x;
            x_2216 = -(x_2223);
          }
          let x_2225 : f32 = x_2216;
          u_xlat11.x = x_2225;
          let x_2228 : bool = u_xlatb11.w;
          if (x_2228) {
            let x_2233 : f32 = u_xlat13.x;
            x_2229 = x_2233;
          } else {
            let x_2236 : f32 = u_xlat13.x;
            x_2229 = -(x_2236);
          }
          let x_2238 : f32 = x_2229;
          u_xlat11.w = x_2238;
          let x_2240 : vec4<f32> = u_xlat12;
          let x_2242 : f32 = u_xlat51;
          let x_2245 : vec4<f32> = u_xlat11;
          let x_2247 : vec2<f32> = ((vec2<f32>(x_2240.x, x_2240.y) * vec2<f32>(x_2242, x_2242)) + vec2<f32>(x_2245.x, x_2245.w));
          let x_2248 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2247.x, x_2248.y, x_2248.z, x_2247.y);
          let x_2250 : vec4<f32> = u_xlat11;
          let x_2253 : vec2<f32> = ((vec2<f32>(x_2250.x, x_2250.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2254 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2253.x, x_2254.y, x_2254.z, x_2253.y);
          let x_2256 : vec4<f32> = u_xlat11;
          let x_2260 : vec2<f32> = clamp(vec2<f32>(x_2256.x, x_2256.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2261 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2260.x, x_2261.y, x_2261.z, x_2260.y);
          let x_2263 : i32 = u_xlati34;
          let x_2265 : vec4<f32> = x_1130.x_AdditionalLightsCookieAtlasUVRects[x_2263];
          let x_2267 : vec4<f32> = u_xlat11;
          let x_2270 : i32 = u_xlati34;
          let x_2272 : vec4<f32> = x_1130.x_AdditionalLightsCookieAtlasUVRects[x_2270];
          let x_2274 : vec2<f32> = ((vec2<f32>(x_2265.x, x_2265.y) * vec2<f32>(x_2267.x, x_2267.w)) + vec2<f32>(x_2272.z, x_2272.w));
          let x_2275 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2274.x, x_2274.y, x_2275.z);
        }
      }
      let x_2282 : vec3<f32> = u_xlat25;
      let x_2284 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2282.x, x_2282.y), 0.0f);
      u_xlat11 = x_2284;
      let x_2286 : bool = u_xlatb6.y;
      if (x_2286) {
        let x_2291 : f32 = u_xlat11.w;
        x_2287 = x_2291;
      } else {
        let x_2294 : f32 = u_xlat11.x;
        x_2287 = x_2294;
      }
      let x_2295 : f32 = x_2287;
      u_xlat51 = x_2295;
      let x_2297 : bool = u_xlatb6.x;
      if (x_2297) {
        let x_2301 : vec4<f32> = u_xlat11;
        x_2298 = vec3<f32>(x_2301.x, x_2301.y, x_2301.z);
      } else {
        let x_2304 : f32 = u_xlat51;
        x_2298 = vec3<f32>(x_2304, x_2304, x_2304);
      }
      let x_2306 : vec3<f32> = x_2298;
      let x_2307 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2313 : vec4<f32> = u_xlat11;
    let x_2315 : i32 = u_xlati34;
    let x_2317 : vec4<f32> = x_1639.x_AdditionalLightsColor[x_2315];
    let x_2319 : vec3<f32> = (vec3<f32>(x_2313.x, x_2313.y, x_2313.z) * vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
    let x_2320 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
    let x_2322 : f32 = u_xlat48;
    let x_2323 : f32 = u_xlat50;
    u_xlat34.x = (x_2322 * x_2323);
    let x_2326 : vec4<f32> = u_xlat1;
    let x_2328 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2326.x, x_2326.y, x_2326.z), vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
    let x_2331 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2331, 0.0f, 1.0f);
    let x_2333 : f32 = u_xlat48;
    let x_2335 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2333 * x_2335);
    let x_2338 : vec2<f32> = u_xlat34;
    let x_2340 : vec4<f32> = u_xlat11;
    let x_2342 : vec3<f32> = (vec3<f32>(x_2338.x, x_2338.x, x_2338.x) * vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
    let x_2343 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
    let x_2345 : vec4<f32> = u_xlat9;
    let x_2347 : f32 = u_xlat49;
    let x_2350 : vec4<f32> = u_xlat7;
    let x_2352 : vec3<f32> = ((vec3<f32>(x_2345.x, x_2345.y, x_2345.z) * vec3<f32>(x_2347, x_2347, x_2347)) + vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
    let x_2353 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2352.x, x_2352.y, x_2352.z, x_2353.w);
    let x_2355 : vec4<f32> = u_xlat9;
    let x_2357 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2355.x, x_2355.y, x_2355.z), vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
    let x_2362 : f32 = u_xlat34.x;
    u_xlat34.x = max(x_2362, 1.17549435e-38f);
    let x_2366 : f32 = u_xlat34.x;
    u_xlat34.x = inverseSqrt(x_2366);
    let x_2369 : vec2<f32> = u_xlat34;
    let x_2371 : vec4<f32> = u_xlat9;
    let x_2373 : vec3<f32> = (vec3<f32>(x_2369.x, x_2369.x, x_2369.x) * vec3<f32>(x_2371.x, x_2371.y, x_2371.z));
    let x_2374 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
    let x_2376 : vec4<f32> = u_xlat1;
    let x_2378 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2376.x, x_2376.y, x_2376.z), vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
    let x_2383 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_2383, 0.0f, 1.0f);
    let x_2386 : vec4<f32> = u_xlat10;
    let x_2388 : vec4<f32> = u_xlat9;
    u_xlat34.y = dot(vec3<f32>(x_2386.x, x_2386.y, x_2386.z), vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
    let x_2393 : f32 = u_xlat34.y;
    u_xlat34.y = clamp(x_2393, 0.0f, 1.0f);
    let x_2396 : vec2<f32> = u_xlat34;
    let x_2397 : vec2<f32> = u_xlat34;
    u_xlat34 = (x_2396 * x_2397);
    let x_2400 : f32 = u_xlat34.x;
    let x_2402 : f32 = u_xlat0.x;
    u_xlat34.x = ((x_2400 * x_2402) + 1.00001001358032226562f);
    let x_2407 : f32 = u_xlat34.x;
    let x_2409 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2407 * x_2409);
    let x_2413 : f32 = u_xlat34.y;
    u_xlat48 = max(x_2413, 0.10000000149011611938f);
    let x_2415 : f32 = u_xlat48;
    let x_2417 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2415 * x_2417);
    let x_2420 : f32 = u_xlat46;
    let x_2422 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2420 * x_2422);
    let x_2425 : f32 = u_xlat44;
    let x_2427 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2425 / x_2427);
    let x_2430 : vec4<f32> = u_xlat4;
    let x_2432 : vec2<f32> = u_xlat34;
    let x_2435 : vec3<f32> = u_xlat17;
    let x_2436 : vec3<f32> = ((vec3<f32>(x_2430.x, x_2430.y, x_2430.z) * vec3<f32>(x_2432.x, x_2432.x, x_2432.x)) + x_2435);
    let x_2437 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
    let x_2439 : vec4<f32> = u_xlat9;
    let x_2441 : vec4<f32> = u_xlat11;
    let x_2444 : vec4<f32> = u_xlat8;
    let x_2446 : vec3<f32> = ((vec3<f32>(x_2439.x, x_2439.y, x_2439.z) * vec3<f32>(x_2441.x, x_2441.y, x_2441.z)) + vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
    let x_2447 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);

    continuing {
      let x_2449 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2449 + bitcast<u32>(1i));
    }
  }
  let x_2451 : vec4<f32> = u_xlat2;
  let x_2453 : f32 = u_xlat14;
  let x_2456 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_2451.x, x_2451.y, x_2451.z) * vec3<f32>(x_2453, x_2453, x_2453)) + vec3<f32>(x_2456.x, x_2456.z, x_2456.w));
  let x_2459 : vec4<f32> = u_xlat8;
  let x_2461 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2459.x, x_2459.y, x_2459.z) + x_2461);
  let x_2463 : f32 = u_xlat42;
  let x_2465 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2463, x_2463, x_2463) * x_2465);
  let x_2467 : f32 = u_xlat43;
  let x_2468 : f32 = u_xlat43;
  u_xlat42 = (x_2467 * -(x_2468));
  let x_2471 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2471);
  let x_2475 : vec3<f32> = u_xlat0;
  let x_2476 : f32 = u_xlat42;
  let x_2478 : vec3<f32> = (x_2475 * vec3<f32>(x_2476, x_2476, x_2476));
  let x_2479 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


