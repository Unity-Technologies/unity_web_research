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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

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

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat44 : f32;

@group(1) @binding(2) var<uniform> x_1085 : UnityPerDraw;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1674 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(12) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1266 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1809 : f32;
  var x_1820 : f32;
  var txVec1 : vec3<f32>;
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
  let x_860 : vec3<f32> = vs_TEXCOORD7;
  let x_870 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres0;
  let x_873 : vec3<f32> = (x_860 + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = vs_TEXCOORD7;
  let x_878 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres1;
  let x_881 : vec3<f32> = (x_876 + -(vec3<f32>(x_878.x, x_878.y, x_878.z)));
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec3<f32> = vs_TEXCOORD7;
  let x_886 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres2;
  let x_889 : vec3<f32> = (x_884 + -(vec3<f32>(x_886.x, x_886.y, x_886.z)));
  let x_890 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = vs_TEXCOORD7;
  let x_894 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres3;
  let x_897 : vec3<f32> = (x_892 + -(vec3<f32>(x_894.x, x_894.y, x_894.z)));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_906 : vec4<f32> = u_xlat3;
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_912 : vec4<f32> = u_xlat4;
  let x_914 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_918 : vec4<f32> = u_xlat6;
  let x_920 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_926 : vec4<f32> = u_xlat2;
  let x_928 : vec4<f32> = x_868.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_926 < x_928);
  let x_931 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_931);
  let x_935 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_935);
  let x_939 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_939);
  let x_943 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_943);
  let x_947 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_947);
  let x_952 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_952);
  let x_956 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_956);
  let x_959 : vec4<f32> = u_xlat2;
  let x_961 : vec4<f32> = u_xlat3;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) + vec3<f32>(x_961.y, x_961.z, x_961.w));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_969 : vec3<f32> = max(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_970 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_970.x, x_969.x, x_969.y, x_969.z);
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_978 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_978) + 4.0f);
  let x_985 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_985);
  let x_989 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_989) << bitcast<u32>(2i));
  let x_993 : vec3<f32> = vs_TEXCOORD7;
  let x_995 : i32 = u_xlati2;
  let x_998 : i32 = u_xlati2;
  let x_1002 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_995 + 1i) / 4i)][((x_998 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_993.y, x_993.y, x_993.y) * vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : i32 = u_xlati2;
  let x_1007 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1005 / 4i)][(x_1007 % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.x, x_1012.x, x_1012.x)) + x_1015);
  let x_1017 : i32 = u_xlati2;
  let x_1020 : i32 = u_xlati2;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + x_1029);
  let x_1031 : vec3<f32> = u_xlat16;
  let x_1032 : i32 = u_xlati2;
  let x_1035 : i32 = u_xlati2;
  let x_1039 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1032 + 3i) / 4i)][((x_1035 + 3i) % 4i)];
  let x_1041 : vec3<f32> = (x_1031 + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1047 : f32 = vs_TEXCOORD7.y;
  let x_1049 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat44 = (x_1047 * x_1049);
  let x_1052 : f32 = x_29.unity_MatrixV[0i].z;
  let x_1054 : f32 = vs_TEXCOORD7.x;
  let x_1056 : f32 = u_xlat44;
  u_xlat44 = ((x_1052 * x_1054) + x_1056);
  let x_1059 : f32 = x_29.unity_MatrixV[2i].z;
  let x_1061 : f32 = vs_TEXCOORD7.z;
  let x_1063 : f32 = u_xlat44;
  u_xlat44 = ((x_1059 * x_1061) + x_1063);
  let x_1065 : f32 = u_xlat44;
  let x_1067 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat44 = (x_1065 + x_1067);
  let x_1069 : f32 = u_xlat44;
  let x_1072 : f32 = x_29.x_ProjectionParams.y;
  u_xlat44 = (-(x_1069) + -(x_1072));
  let x_1075 : f32 = u_xlat44;
  u_xlat44 = max(x_1075, 0.0f);
  let x_1077 : f32 = u_xlat44;
  let x_1079 : f32 = x_29.unity_FogParams.x;
  u_xlat44 = (x_1077 * x_1079);
  u_xlat1.w = 1.0f;
  let x_1087 : vec4<f32> = x_1085.unity_SHAr;
  let x_1088 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1087, x_1088);
  let x_1092 : vec4<f32> = x_1085.unity_SHAg;
  let x_1093 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1092, x_1093);
  let x_1097 : vec4<f32> = x_1085.unity_SHAb;
  let x_1098 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1097, x_1098);
  let x_1101 : vec4<f32> = u_xlat1;
  let x_1103 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1101.y, x_1101.z, x_1101.z, x_1101.x) * vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1103.z));
  let x_1107 : vec4<f32> = x_1085.unity_SHBr;
  let x_1108 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1107, x_1108);
  let x_1112 : vec4<f32> = x_1085.unity_SHBg;
  let x_1113 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1112, x_1113);
  let x_1117 : vec4<f32> = x_1085.unity_SHBb;
  let x_1118 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1117, x_1118);
  let x_1122 : f32 = u_xlat1.y;
  let x_1124 : f32 = u_xlat1.y;
  u_xlat43 = (x_1122 * x_1124);
  let x_1127 : f32 = u_xlat1.x;
  let x_1129 : f32 = u_xlat1.x;
  let x_1131 : f32 = u_xlat43;
  u_xlat43 = ((x_1127 * x_1129) + -(x_1131));
  let x_1136 : vec4<f32> = x_1085.unity_SHC;
  let x_1138 : f32 = u_xlat43;
  let x_1141 : vec4<f32> = u_xlat6;
  let x_1143 : vec3<f32> = ((vec3<f32>(x_1136.x, x_1136.y, x_1136.z) * vec3<f32>(x_1138, x_1138, x_1138)) + vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : vec4<f32> = u_xlat3;
  let x_1148 : vec4<f32> = u_xlat4;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1146.x, x_1146.y, x_1146.z) + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat3;
  let x_1155 : vec3<f32> = max(vec3<f32>(x_1153.x, x_1153.y, x_1153.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1156 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1159 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1159) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1165 : f32 = u_xlat43;
  u_xlat45 = (-(x_1165) + 1.0f);
  let x_1168 : f32 = u_xlat43;
  let x_1170 : vec4<f32> = u_xlat5;
  let x_1172 : vec3<f32> = (vec3<f32>(x_1168, x_1168, x_1168) * vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
  let x_1175 : vec4<f32> = u_xlat5;
  let x_1179 : vec3<f32> = (vec3<f32>(x_1175.x, x_1175.y, x_1175.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1180 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1182 : vec3<f32> = u_xlat0;
  let x_1184 : vec4<f32> = u_xlat5;
  let x_1189 : vec3<f32> = ((vec3<f32>(x_1182.x, x_1182.x, x_1182.x) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1190 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
  let x_1192 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1192) + 1.0f);
  let x_1197 : f32 = u_xlat0.x;
  let x_1199 : f32 = u_xlat0.x;
  u_xlat43 = (x_1197 * x_1199);
  let x_1201 : f32 = u_xlat43;
  u_xlat43 = max(x_1201, 0.0078125f);
  let x_1205 : f32 = u_xlat43;
  let x_1206 : f32 = u_xlat43;
  u_xlat46 = (x_1205 * x_1206);
  let x_1208 : f32 = u_xlat28;
  let x_1209 : f32 = u_xlat45;
  u_xlat28 = (x_1208 + x_1209);
  let x_1211 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1211, 0.0f, 1.0f);
  let x_1213 : f32 = u_xlat43;
  u_xlat45 = ((x_1213 * 4.0f) + 2.0f);
  let x_1216 : f32 = u_xlat14;
  u_xlat14 = min(x_1216, 1.0f);
  let x_1220 : vec4<f32> = u_xlat2;
  let x_1221 : vec2<f32> = vec2<f32>(x_1220.x, x_1220.y);
  let x_1223 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1221.x, x_1221.y, x_1223);
  let x_1235 : vec3<f32> = txVec0;
  let x_1237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1235.xy, x_1235.z);
  u_xlat2.x = x_1237;
  let x_1240 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1240) + 1.0f);
  let x_1245 : f32 = u_xlat2.x;
  let x_1247 : f32 = x_868.x_MainLightShadowParams.x;
  let x_1250 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1245 * x_1247) + x_1250);
  let x_1255 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1255);
  let x_1259 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1259 >= 1.0f);
  let x_1261 : bool = u_xlatb30;
  let x_1262 : bool = u_xlatb16;
  u_xlatb16 = (x_1261 | x_1262);
  let x_1264 : bool = u_xlatb16;
  if (x_1264) {
    x_1266 = 1.0f;
  } else {
    let x_1271 : f32 = u_xlat2.x;
    x_1266 = x_1271;
  }
  let x_1272 : f32 = x_1266;
  u_xlat2.x = x_1272;
  let x_1274 : vec3<f32> = vs_TEXCOORD7;
  let x_1277 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1279 : vec3<f32> = (x_1274 + -(x_1277));
  let x_1280 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : vec4<f32> = u_xlat6;
  let x_1284 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_1282.x, x_1282.y, x_1282.z), vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1290 : f32 = u_xlat16.x;
  let x_1292 : f32 = x_868.x_MainLightShadowParams.z;
  let x_1295 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1290 * x_1292) + x_1295);
  let x_1297 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1297, 0.0f, 1.0f);
  let x_1301 : f32 = u_xlat2.x;
  u_xlat47 = (-(x_1301) + 1.0f);
  let x_1304 : f32 = u_xlat30;
  let x_1305 : f32 = u_xlat47;
  let x_1308 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1304 * x_1305) + x_1308);
  let x_1312 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1312;
  let x_1315 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1315;
  let x_1318 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1318;
  let x_1320 : vec4<f32> = u_xlat6;
  let x_1323 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1320.x, x_1320.y, x_1320.z)), vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : f32 = u_xlat30;
  let x_1327 : f32 = u_xlat30;
  u_xlat30 = (x_1326 + x_1327);
  let x_1329 : vec4<f32> = u_xlat1;
  let x_1331 : f32 = u_xlat30;
  let x_1335 : vec4<f32> = u_xlat6;
  let x_1338 : vec3<f32> = ((vec3<f32>(x_1329.x, x_1329.y, x_1329.z) * -(vec3<f32>(x_1331, x_1331, x_1331))) + -(vec3<f32>(x_1335.x, x_1335.y, x_1335.z)));
  let x_1339 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1341 : vec4<f32> = u_xlat1;
  let x_1343 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_1341.x, x_1341.y, x_1341.z), vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
  let x_1346 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1346, 0.0f, 1.0f);
  let x_1348 : f32 = u_xlat30;
  u_xlat30 = (-(x_1348) + 1.0f);
  let x_1351 : f32 = u_xlat30;
  let x_1352 : f32 = u_xlat30;
  u_xlat30 = (x_1351 * x_1352);
  let x_1354 : f32 = u_xlat30;
  let x_1355 : f32 = u_xlat30;
  u_xlat30 = (x_1354 * x_1355);
  let x_1358 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1358) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1365 : f32 = u_xlat0.x;
  let x_1366 : f32 = u_xlat47;
  u_xlat0.x = (x_1365 * x_1366);
  let x_1370 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1370 * 6.0f);
  let x_1382 : vec4<f32> = u_xlat7;
  let x_1385 : f32 = u_xlat0.x;
  let x_1386 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1382.x, x_1382.y, x_1382.z), x_1385);
  u_xlat7 = x_1386;
  let x_1388 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1388 + -1.0f);
  let x_1392 : f32 = x_1085.unity_SpecCube0_HDR.w;
  let x_1394 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1392 * x_1394) + 1.0f);
  let x_1399 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1399, 0.0f);
  let x_1403 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1403);
  let x_1407 : f32 = u_xlat0.x;
  let x_1409 : f32 = x_1085.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1407 * x_1409);
  let x_1413 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1413);
  let x_1417 : f32 = u_xlat0.x;
  let x_1419 : f32 = x_1085.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1417 * x_1419);
  let x_1422 : vec4<f32> = u_xlat7;
  let x_1424 : vec3<f32> = u_xlat0;
  let x_1426 : vec3<f32> = (vec3<f32>(x_1422.x, x_1422.y, x_1422.z) * vec3<f32>(x_1424.x, x_1424.x, x_1424.x));
  let x_1427 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
  let x_1429 : f32 = u_xlat43;
  let x_1431 : f32 = u_xlat43;
  let x_1435 : vec2<f32> = ((vec2<f32>(x_1429, x_1429) * vec2<f32>(x_1431, x_1431)) + vec2<f32>(-1.0f, 1.0f));
  let x_1436 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1435.x, x_1435.y, x_1436.z, x_1436.w);
  let x_1439 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_1439);
  let x_1443 : vec4<f32> = u_xlat5;
  let x_1446 : f32 = u_xlat28;
  u_xlat22 = (-(vec3<f32>(x_1443.x, x_1443.y, x_1443.z)) + vec3<f32>(x_1446, x_1446, x_1446));
  let x_1449 : f32 = u_xlat30;
  let x_1451 : vec3<f32> = u_xlat22;
  let x_1453 : vec4<f32> = u_xlat5;
  u_xlat22 = ((vec3<f32>(x_1449, x_1449, x_1449) * x_1451) + vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1456 : vec3<f32> = u_xlat0;
  let x_1458 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1456.x, x_1456.x, x_1456.x) * x_1458);
  let x_1460 : vec4<f32> = u_xlat7;
  let x_1462 : vec3<f32> = u_xlat22;
  let x_1463 : vec3<f32> = (vec3<f32>(x_1460.x, x_1460.y, x_1460.z) * x_1462);
  let x_1464 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
  let x_1466 : vec4<f32> = u_xlat3;
  let x_1468 : vec4<f32> = u_xlat4;
  let x_1471 : vec4<f32> = u_xlat7;
  let x_1473 : vec3<f32> = ((vec3<f32>(x_1466.x, x_1466.y, x_1466.z) * vec3<f32>(x_1468.x, x_1468.y, x_1468.z)) + vec3<f32>(x_1471.x, x_1471.y, x_1471.z));
  let x_1474 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
  let x_1477 : f32 = u_xlat2.x;
  let x_1479 : f32 = x_1085.unity_LightData.z;
  u_xlat0.x = (x_1477 * x_1479);
  let x_1482 : vec4<f32> = u_xlat1;
  let x_1485 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1482.x, x_1482.y, x_1482.z), vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
  let x_1488 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1488, 0.0f, 1.0f);
  let x_1490 : f32 = u_xlat28;
  let x_1492 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1490 * x_1492);
  let x_1495 : vec3<f32> = u_xlat0;
  let x_1498 : vec4<f32> = x_29.x_MainLightColor;
  let x_1500 : vec3<f32> = (vec3<f32>(x_1495.x, x_1495.x, x_1495.x) * vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
  let x_1501 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
  let x_1503 : vec4<f32> = u_xlat6;
  let x_1506 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat22 = (vec3<f32>(x_1503.x, x_1503.y, x_1503.z) + vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
  let x_1509 : vec3<f32> = u_xlat22;
  let x_1510 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(x_1509, x_1510);
  let x_1514 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1514, 1.17549435e-38f);
  let x_1519 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1519);
  let x_1522 : vec3<f32> = u_xlat0;
  let x_1524 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1522.x, x_1522.x, x_1522.x) * x_1524);
  let x_1526 : vec4<f32> = u_xlat1;
  let x_1528 : vec3<f32> = u_xlat22;
  u_xlat0.x = dot(vec3<f32>(x_1526.x, x_1526.y, x_1526.z), x_1528);
  let x_1532 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1532, 0.0f, 1.0f);
  let x_1536 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1538 : vec3<f32> = u_xlat22;
  u_xlat0.z = dot(vec3<f32>(x_1536.x, x_1536.y, x_1536.z), x_1538);
  let x_1542 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1542, 0.0f, 1.0f);
  let x_1545 : vec3<f32> = u_xlat0;
  let x_1547 : vec3<f32> = u_xlat0;
  let x_1549 : vec2<f32> = (vec2<f32>(x_1545.x, x_1545.z) * vec2<f32>(x_1547.x, x_1547.z));
  let x_1550 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1549.x, x_1550.y, x_1549.y);
  let x_1553 : f32 = u_xlat0.x;
  let x_1555 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1553 * x_1555) + 1.00001001358032226562f);
  let x_1561 : f32 = u_xlat0.x;
  let x_1563 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1561 * x_1563);
  let x_1567 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1567, 0.10000000149011611938f);
  let x_1570 : f32 = u_xlat28;
  let x_1572 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1570 * x_1572);
  let x_1575 : f32 = u_xlat45;
  let x_1577 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1575 * x_1577);
  let x_1580 : f32 = u_xlat46;
  let x_1582 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1580 / x_1582);
  let x_1585 : vec4<f32> = u_xlat5;
  let x_1587 : vec3<f32> = u_xlat0;
  let x_1590 : vec4<f32> = u_xlat4;
  u_xlat22 = ((vec3<f32>(x_1585.x, x_1585.y, x_1585.z) * vec3<f32>(x_1587.x, x_1587.x, x_1587.x)) + vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
  let x_1593 : vec4<f32> = u_xlat7;
  let x_1595 : vec3<f32> = u_xlat22;
  let x_1596 : vec3<f32> = (vec3<f32>(x_1593.x, x_1593.y, x_1593.z) * x_1595);
  let x_1597 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1596.x, x_1596.y, x_1596.z, x_1597.w);
  let x_1600 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1602 : f32 = x_1085.unity_LightData.y;
  u_xlat0.x = min(x_1600, x_1602);
  let x_1607 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1607));
  let x_1611 : f32 = u_xlat16.x;
  let x_1613 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_1616 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1611 * x_1613) + x_1616);
  let x_1618 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1618, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1630 : u32 = u_xlatu_loop_1;
    let x_1631 : u32 = u_xlatu0;
    if ((x_1630 < x_1631)) {
    } else {
      break;
    }
    let x_1634 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1634 >> 2u);
    let x_1637 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1637 & 3u));
    let x_1640 : u32 = u_xlatu47;
    let x_1643 : vec4<f32> = x_1085.unity_LightIndices[bitcast<i32>(x_1640)];
    let x_1653 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1658 : vec4<u32> = indexable[x_1653];
    u_xlat47 = dot(x_1643, bitcast<vec4<f32>>(x_1658));
    let x_1662 : f32 = u_xlat47;
    u_xlati47 = i32(x_1662);
    let x_1664 : vec3<f32> = vs_TEXCOORD7;
    let x_1675 : i32 = u_xlati47;
    let x_1677 : vec4<f32> = x_1674.x_AdditionalLightsPosition[x_1675];
    let x_1680 : i32 = u_xlati47;
    let x_1682 : vec4<f32> = x_1674.x_AdditionalLightsPosition[x_1680];
    u_xlat22 = ((-(x_1664) * vec3<f32>(x_1677.w, x_1677.w, x_1677.w)) + vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
    let x_1686 : vec3<f32> = u_xlat22;
    let x_1687 : vec3<f32> = u_xlat22;
    u_xlat48 = dot(x_1686, x_1687);
    let x_1689 : f32 = u_xlat48;
    u_xlat48 = max(x_1689, 0.00006103515625f);
    let x_1692 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1692);
    let x_1694 : f32 = u_xlat49;
    let x_1696 : vec3<f32> = u_xlat22;
    let x_1697 : vec3<f32> = (vec3<f32>(x_1694, x_1694, x_1694) * x_1696);
    let x_1698 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
    let x_1701 : f32 = u_xlat48;
    u_xlat51 = (1.0f / x_1701);
    let x_1703 : f32 = u_xlat48;
    let x_1704 : i32 = u_xlati47;
    let x_1706 : f32 = x_1674.x_AdditionalLightsAttenuation[x_1704].x;
    u_xlat48 = (x_1703 * x_1706);
    let x_1708 : f32 = u_xlat48;
    let x_1710 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1708) * x_1710) + 1.0f);
    let x_1713 : f32 = u_xlat48;
    u_xlat48 = max(x_1713, 0.0f);
    let x_1715 : f32 = u_xlat48;
    let x_1716 : f32 = u_xlat48;
    u_xlat48 = (x_1715 * x_1716);
    let x_1718 : f32 = u_xlat48;
    let x_1719 : f32 = u_xlat51;
    u_xlat48 = (x_1718 * x_1719);
    let x_1721 : i32 = u_xlati47;
    let x_1723 : vec4<f32> = x_1674.x_AdditionalLightsSpotDir[x_1721];
    let x_1725 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1723.x, x_1723.y, x_1723.z), vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
    let x_1728 : f32 = u_xlat51;
    let x_1729 : i32 = u_xlati47;
    let x_1731 : f32 = x_1674.x_AdditionalLightsAttenuation[x_1729].z;
    let x_1733 : i32 = u_xlati47;
    let x_1735 : f32 = x_1674.x_AdditionalLightsAttenuation[x_1733].w;
    u_xlat51 = ((x_1728 * x_1731) + x_1735);
    let x_1737 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1737, 0.0f, 1.0f);
    let x_1739 : f32 = u_xlat51;
    let x_1740 : f32 = u_xlat51;
    u_xlat51 = (x_1739 * x_1740);
    let x_1742 : f32 = u_xlat48;
    let x_1743 : f32 = u_xlat51;
    u_xlat48 = (x_1742 * x_1743);
    let x_1746 : i32 = u_xlati47;
    let x_1748 : f32 = x_868.x_AdditionalShadowParams[x_1746].w;
    u_xlati51 = i32(x_1748);
    let x_1753 : i32 = u_xlati51;
    u_xlatb10.x = (x_1753 >= 0i);
    let x_1757 : bool = u_xlatb10.x;
    if (x_1757) {
      let x_1761 : i32 = u_xlati47;
      let x_1763 : f32 = x_868.x_AdditionalShadowParams[x_1761].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1763, x_1763, x_1763, x_1763))));
      let x_1769 : bool = u_xlatb10.x;
      if (x_1769) {
        let x_1772 : vec4<f32> = u_xlat9;
        let x_1775 : vec4<f32> = u_xlat9;
        let x_1778 : vec4<bool> = (abs(vec4<f32>(x_1772.z, x_1772.z, x_1772.y, x_1772.z)) >= abs(vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.x)));
        u_xlatb10 = vec3<bool>(x_1778.x, x_1778.y, x_1778.z);
        let x_1781 : bool = u_xlatb10.y;
        let x_1783 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1781 & x_1783);
        let x_1787 : vec4<f32> = u_xlat9;
        let x_1790 : vec4<bool> = (-(vec4<f32>(x_1787.z, x_1787.y, x_1787.x, x_1787.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1790.x, x_1790.y, x_1790.z);
        let x_1794 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1794);
        let x_1799 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1799);
        let x_1803 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1803);
        let x_1808 : bool = u_xlatb10.z;
        if (x_1808) {
          let x_1813 : f32 = u_xlat24.z;
          x_1809 = x_1813;
        } else {
          let x_1816 : f32 = u_xlat11.x;
          x_1809 = x_1816;
        }
        let x_1817 : f32 = x_1809;
        u_xlat38 = x_1817;
        let x_1819 : bool = u_xlatb10.x;
        if (x_1819) {
          let x_1824 : f32 = u_xlat24.x;
          x_1820 = x_1824;
        } else {
          let x_1826 : f32 = u_xlat38;
          x_1820 = x_1826;
        }
        let x_1827 : f32 = x_1820;
        u_xlat10.x = x_1827;
        let x_1829 : i32 = u_xlati47;
        let x_1831 : f32 = x_868.x_AdditionalShadowParams[x_1829].w;
        u_xlat24.x = trunc(x_1831);
        let x_1835 : f32 = u_xlat10.x;
        let x_1837 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1835 + x_1837);
        let x_1841 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1841);
      }
      let x_1843 : i32 = u_xlati51;
      u_xlati51 = (x_1843 << bitcast<u32>(2i));
      let x_1845 : vec3<f32> = vs_TEXCOORD7;
      let x_1847 : i32 = u_xlati51;
      let x_1850 : i32 = u_xlati51;
      let x_1854 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1847 + 1i) / 4i)][((x_1850 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1845.y, x_1845.y, x_1845.y, x_1845.y) * x_1854);
      let x_1856 : i32 = u_xlati51;
      let x_1858 : i32 = u_xlati51;
      let x_1861 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_1856 / 4i)][(x_1858 % 4i)];
      let x_1862 : vec3<f32> = vs_TEXCOORD7;
      let x_1865 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1861 * vec4<f32>(x_1862.x, x_1862.x, x_1862.x, x_1862.x)) + x_1865);
      let x_1867 : i32 = u_xlati51;
      let x_1870 : i32 = u_xlati51;
      let x_1874 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1867 + 2i) / 4i)][((x_1870 + 2i) % 4i)];
      let x_1875 : vec3<f32> = vs_TEXCOORD7;
      let x_1878 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1874 * vec4<f32>(x_1875.z, x_1875.z, x_1875.z, x_1875.z)) + x_1878);
      let x_1880 : vec4<f32> = u_xlat10;
      let x_1881 : i32 = u_xlati51;
      let x_1884 : i32 = u_xlati51;
      let x_1888 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1881 + 3i) / 4i)][((x_1884 + 3i) % 4i)];
      u_xlat10 = (x_1880 + x_1888);
      let x_1890 : vec4<f32> = u_xlat10;
      let x_1892 : vec4<f32> = u_xlat10;
      let x_1894 : vec3<f32> = (vec3<f32>(x_1890.x, x_1890.y, x_1890.z) / vec3<f32>(x_1892.w, x_1892.w, x_1892.w));
      let x_1895 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
      let x_1898 : vec4<f32> = u_xlat10;
      let x_1899 : vec2<f32> = vec2<f32>(x_1898.x, x_1898.y);
      let x_1901 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
      let x_1909 : vec3<f32> = txVec1;
      let x_1911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1909.xy, x_1909.z);
      u_xlat51 = x_1911;
      let x_1912 : i32 = u_xlati47;
      let x_1914 : f32 = x_868.x_AdditionalShadowParams[x_1912].x;
      u_xlat10.x = (1.0f + -(x_1914));
      let x_1918 : f32 = u_xlat51;
      let x_1919 : i32 = u_xlati47;
      let x_1921 : f32 = x_868.x_AdditionalShadowParams[x_1919].x;
      let x_1924 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1918 * x_1921) + x_1924);
      let x_1927 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1927);
      let x_1932 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1932 >= 1.0f);
      let x_1934 : bool = u_xlatb24;
      let x_1936 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1934 | x_1936);
      let x_1940 : bool = u_xlatb10.x;
      let x_1941 : f32 = u_xlat51;
      u_xlat51 = select(x_1941, 1.0f, x_1940);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1944 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1944) + 1.0f);
    let x_1948 : f32 = u_xlat28;
    let x_1950 : f32 = u_xlat10.x;
    let x_1952 : f32 = u_xlat51;
    u_xlat51 = ((x_1948 * x_1950) + x_1952);
    let x_1954 : f32 = u_xlat48;
    let x_1955 : f32 = u_xlat51;
    u_xlat48 = (x_1954 * x_1955);
    let x_1957 : vec4<f32> = u_xlat1;
    let x_1959 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1957.x, x_1957.y, x_1957.z), vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
    let x_1962 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1962, 0.0f, 1.0f);
    let x_1964 : f32 = u_xlat48;
    let x_1965 : f32 = u_xlat51;
    u_xlat48 = (x_1964 * x_1965);
    let x_1967 : f32 = u_xlat48;
    let x_1969 : i32 = u_xlati47;
    let x_1971 : vec4<f32> = x_1674.x_AdditionalLightsColor[x_1969];
    let x_1973 : vec3<f32> = (vec3<f32>(x_1967, x_1967, x_1967) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
    let x_1974 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
    let x_1976 : vec3<f32> = u_xlat22;
    let x_1977 : f32 = u_xlat49;
    let x_1980 : vec4<f32> = u_xlat6;
    u_xlat22 = ((x_1976 * vec3<f32>(x_1977, x_1977, x_1977)) + vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
    let x_1983 : vec3<f32> = u_xlat22;
    let x_1984 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(x_1983, x_1984);
    let x_1986 : f32 = u_xlat47;
    u_xlat47 = max(x_1986, 1.17549435e-38f);
    let x_1988 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1988);
    let x_1990 : f32 = u_xlat47;
    let x_1992 : vec3<f32> = u_xlat22;
    u_xlat22 = (vec3<f32>(x_1990, x_1990, x_1990) * x_1992);
    let x_1994 : vec4<f32> = u_xlat1;
    let x_1996 : vec3<f32> = u_xlat22;
    u_xlat47 = dot(vec3<f32>(x_1994.x, x_1994.y, x_1994.z), x_1996);
    let x_1998 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1998, 0.0f, 1.0f);
    let x_2000 : vec4<f32> = u_xlat9;
    let x_2002 : vec3<f32> = u_xlat22;
    u_xlat48 = dot(vec3<f32>(x_2000.x, x_2000.y, x_2000.z), x_2002);
    let x_2004 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2004, 0.0f, 1.0f);
    let x_2006 : f32 = u_xlat47;
    let x_2007 : f32 = u_xlat47;
    u_xlat47 = (x_2006 * x_2007);
    let x_2009 : f32 = u_xlat47;
    let x_2011 : f32 = u_xlat8.x;
    u_xlat47 = ((x_2009 * x_2011) + 1.00001001358032226562f);
    let x_2014 : f32 = u_xlat48;
    let x_2015 : f32 = u_xlat48;
    u_xlat48 = (x_2014 * x_2015);
    let x_2017 : f32 = u_xlat47;
    let x_2018 : f32 = u_xlat47;
    u_xlat47 = (x_2017 * x_2018);
    let x_2020 : f32 = u_xlat48;
    u_xlat48 = max(x_2020, 0.10000000149011611938f);
    let x_2022 : f32 = u_xlat47;
    let x_2023 : f32 = u_xlat48;
    u_xlat47 = (x_2022 * x_2023);
    let x_2025 : f32 = u_xlat45;
    let x_2026 : f32 = u_xlat47;
    u_xlat47 = (x_2025 * x_2026);
    let x_2028 : f32 = u_xlat46;
    let x_2029 : f32 = u_xlat47;
    u_xlat47 = (x_2028 / x_2029);
    let x_2031 : vec4<f32> = u_xlat5;
    let x_2033 : f32 = u_xlat47;
    let x_2036 : vec4<f32> = u_xlat4;
    u_xlat22 = ((vec3<f32>(x_2031.x, x_2031.y, x_2031.z) * vec3<f32>(x_2033, x_2033, x_2033)) + vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
    let x_2039 : vec3<f32> = u_xlat22;
    let x_2040 : vec4<f32> = u_xlat10;
    let x_2043 : vec4<f32> = u_xlat2;
    let x_2045 : vec3<f32> = ((x_2039 * vec3<f32>(x_2040.x, x_2040.y, x_2040.z)) + vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
    let x_2046 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);

    continuing {
      let x_2048 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2048 + bitcast<u32>(1i));
    }
  }
  let x_2050 : vec4<f32> = u_xlat3;
  let x_2052 : f32 = u_xlat14;
  let x_2055 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2050.x, x_2050.y, x_2050.z) * vec3<f32>(x_2052, x_2052, x_2052)) + vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
  let x_2058 : vec4<f32> = u_xlat2;
  let x_2060 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2058.x, x_2058.y, x_2058.z) + x_2060);
  let x_2062 : f32 = u_xlat42;
  let x_2064 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2062, x_2062, x_2062) * x_2064);
  let x_2066 : f32 = u_xlat44;
  let x_2067 : f32 = u_xlat44;
  u_xlat42 = (x_2066 * -(x_2067));
  let x_2070 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2070);
  let x_2074 : vec3<f32> = u_xlat0;
  let x_2075 : f32 = u_xlat42;
  let x_2077 : vec3<f32> = (x_2074 * vec3<f32>(x_2075, x_2075, x_2075));
  let x_2078 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2077.x, x_2077.y, x_2077.z, x_2078.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


