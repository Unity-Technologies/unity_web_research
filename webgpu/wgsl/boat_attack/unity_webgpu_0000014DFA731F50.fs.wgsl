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

@group(0) @binding(12) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(17) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Splat0 : sampler;

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

@group(0) @binding(19) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1002 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1156 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1422 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1561 : f32;
  var x_1571 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = x_58.x_MaskMapRemapScale0;
  let x_69 : vec4<f32> = x_58.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_62.x, x_62.y, x_62.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_69.x, x_69.y, x_69.w));
  let x_76 : vec4<f32> = x_58.x_MaskMapRemapScale1;
  let x_81 : vec4<f32> = x_58.x_MaskMapRemapOffset1;
  let x_83 : vec3<f32> = ((vec3<f32>(x_76.x, x_76.y, x_76.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_81.x, x_81.y, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = x_58.x_MaskMapRemapScale2;
  let x_94 : vec4<f32> = x_58.x_MaskMapRemapOffset2;
  let x_96 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.y, x_89.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_94.x, x_94.y, x_94.w));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_102 : vec4<f32> = x_58.x_MaskMapRemapScale3;
  let x_107 : vec4<f32> = x_58.x_MaskMapRemapOffset3;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.w, x_102.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_107.x, x_107.w, x_107.y));
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_109.z);
  let x_115 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_119 : vec2<f32> = (vec2<f32>(x_115.z, x_115.w) + vec2<f32>(-1.0f, -1.0f));
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  let x_124 : vec4<f32> = u_xlat4;
  let x_128 : vec2<f32> = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(0.5f, 0.5f));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat4;
  let x_134 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_136 : vec2<f32> = (vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_134.x, x_134.y));
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_136.x, x_136.y, x_137.z, x_137.w);
  let x_144 : vec4<f32> = u_xlat4;
  let x_147 : f32 = x_28.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat4 = x_148;
  let x_150 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_150, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_161 : vec4<f32> = vs_TEXCOORD1;
  let x_164 : f32 = x_28.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_161.x, x_161.y), x_164);
  u_xlat5 = x_165;
  let x_171 : vec4<f32> = vs_TEXCOORD1;
  let x_174 : f32 = x_28.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_171.z, x_171.w), x_174);
  u_xlat6 = x_175;
  let x_182 : vec4<f32> = vs_TEXCOORD2;
  let x_185 : f32 = x_28.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_182.x, x_182.y), x_185);
  u_xlat7 = x_186;
  let x_192 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : f32 = x_28.x_GlobalMipBias.x;
  let x_196 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_192.z, x_192.w), x_195);
  u_xlat8 = x_196;
  let x_200 : f32 = u_xlat5.w;
  u_xlat9.x = x_200;
  let x_203 : f32 = u_xlat6.w;
  u_xlat9.y = x_203;
  let x_207 : f32 = u_xlat7.w;
  u_xlat9.z = x_207;
  let x_211 : f32 = u_xlat8.w;
  u_xlat9.w = x_211;
  let x_214 : vec4<f32> = u_xlat9;
  let x_217 : f32 = x_58.x_Smoothness0;
  let x_220 : f32 = x_58.x_Smoothness1;
  let x_223 : f32 = x_58.x_Smoothness2;
  let x_226 : f32 = x_58.x_Smoothness3;
  u_xlat10 = (x_214 * vec4<f32>(x_217, x_220, x_223, x_226));
  let x_233 : f32 = x_58.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_233);
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_236) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat9;
  let x_240 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_239 + -(x_240));
  let x_243 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_243 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_247 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_247, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_251 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_251 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_255);
  let x_258 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_258 + -(x_259));
  let x_264 : f32 = u_xlat12.x;
  let x_267 : f32 = x_58.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.y;
  let x_274 : f32 = x_58.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_271 * x_274);
  let x_278 : f32 = u_xlat12.z;
  let x_281 : f32 = x_58.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_278 * x_281);
  let x_285 : f32 = u_xlat12.w;
  let x_288 : f32 = x_58.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_285 * x_288);
  let x_291 : vec4<f32> = u_xlat11;
  let x_292 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_291 + x_292);
  let x_294 : bool = u_xlatb43;
  let x_295 : vec4<f32> = u_xlat11;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_296, x_295, vec4<bool>(x_294, x_294, x_294, x_294));
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_301, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_305 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_305);
  let x_307 : bool = u_xlatb44;
  if (((select(0i, 1i, x_307) * -1i) != 0i)) {
    discard;
  }
  let x_314 : f32 = u_xlat43;
  u_xlat43 = (x_314 + 0.00006103515625f);
  let x_317 : vec4<f32> = u_xlat4;
  let x_318 : f32 = u_xlat43;
  u_xlat4 = (x_317 / vec4<f32>(x_318, x_318, x_318, x_318));
  let x_321 : vec4<f32> = u_xlat4;
  let x_324 : vec4<f32> = x_58.x_DiffuseRemapScale0;
  let x_326 : vec3<f32> = (vec3<f32>(x_321.x, x_321.x, x_321.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_58.x_DiffuseRemapScale1;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec4<f32> = u_xlat12;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec4<f32> = u_xlat11;
  let x_349 : vec4<f32> = u_xlat6;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat4;
  let x_357 : vec4<f32> = x_58.x_DiffuseRemapScale2;
  let x_359 : vec3<f32> = (vec3<f32>(x_354.z, x_354.z, x_354.z) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = u_xlat5;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat4;
  let x_375 : vec4<f32> = x_58.x_DiffuseRemapScale3;
  let x_377 : vec3<f32> = (vec3<f32>(x_372.w, x_372.w, x_372.w) * vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat8;
  let x_382 : vec4<f32> = u_xlat6;
  let x_385 : vec4<f32> = u_xlat5;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382.x, x_382.y, x_382.z)) + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_395 : vec4<f32> = vs_TEXCOORD1;
  let x_398 : f32 = x_28.x_GlobalMipBias.x;
  let x_399 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_395.x, x_395.y), x_398);
  let x_400 : vec3<f32> = vec3<f32>(x_399.x, x_399.y, x_399.w);
  let x_401 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : f32 = u_xlat6.x;
  let x_406 : f32 = u_xlat6.z;
  u_xlat6.x = (x_404 * x_406);
  let x_409 : vec4<f32> = u_xlat6;
  let x_414 : vec2<f32> = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_417.x, x_417.y), vec2<f32>(x_419.x, x_419.y));
  let x_422 : f32 = u_xlat43;
  u_xlat43 = min(x_422, 1.0f);
  let x_424 : f32 = u_xlat43;
  u_xlat43 = (-(x_424) + 1.0f);
  let x_427 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_427);
  let x_429 : f32 = u_xlat43;
  u_xlat7.z = max(x_429, 0.0000000000000001f);
  let x_433 : vec4<f32> = u_xlat6;
  let x_436 : f32 = x_58.x_NormalScale0;
  let x_438 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_436, x_436));
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_445 : vec4<f32> = vs_TEXCOORD1;
  let x_448 : f32 = x_28.x_GlobalMipBias.x;
  let x_449 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_445.z, x_445.w), x_448);
  let x_450 : vec3<f32> = vec3<f32>(x_449.x, x_449.y, x_449.w);
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = u_xlat6.x;
  let x_456 : f32 = u_xlat6.z;
  u_xlat6.x = (x_454 * x_456);
  let x_459 : vec4<f32> = u_xlat6;
  let x_462 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat6;
  let x_467 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_465.x, x_465.y), vec2<f32>(x_467.x, x_467.y));
  let x_470 : f32 = u_xlat43;
  u_xlat43 = min(x_470, 1.0f);
  let x_472 : f32 = u_xlat43;
  u_xlat43 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_475);
  let x_477 : f32 = u_xlat43;
  u_xlat8.z = max(x_477, 0.0000000000000001f);
  let x_480 : vec4<f32> = u_xlat6;
  let x_483 : f32 = x_58.x_NormalScale1;
  let x_485 : f32 = x_58.x_NormalScale1;
  let x_486 : vec2<f32> = vec2<f32>(x_483, x_485);
  let x_490 : vec2<f32> = (vec2<f32>(x_480.x, x_480.y) * vec2<f32>(x_486.x, x_486.y));
  let x_491 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat4;
  let x_495 : vec4<f32> = u_xlat8;
  let x_497 : vec3<f32> = (vec3<f32>(x_493.y, x_493.y, x_493.y) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  let x_505 : vec4<f32> = u_xlat6;
  let x_507 : vec3<f32> = ((vec3<f32>(x_500.x, x_500.x, x_500.x) * vec3<f32>(x_502.x, x_502.y, x_502.z)) + vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_514 : vec4<f32> = vs_TEXCOORD2;
  let x_517 : f32 = x_28.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_514.x, x_514.y), x_517);
  let x_519 : vec3<f32> = vec3<f32>(x_518.x, x_518.y, x_518.w);
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = u_xlat7.x;
  let x_525 : f32 = u_xlat7.z;
  u_xlat7.x = (x_523 * x_525);
  let x_528 : vec4<f32> = u_xlat7;
  let x_531 : vec2<f32> = ((vec2<f32>(x_528.x, x_528.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat7;
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_534.x, x_534.y), vec2<f32>(x_536.x, x_536.y));
  let x_539 : f32 = u_xlat43;
  u_xlat43 = min(x_539, 1.0f);
  let x_541 : f32 = u_xlat43;
  u_xlat43 = (-(x_541) + 1.0f);
  let x_544 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_544);
  let x_546 : f32 = u_xlat43;
  u_xlat8.z = max(x_546, 0.0000000000000001f);
  let x_549 : vec4<f32> = u_xlat7;
  let x_553 : f32 = x_58.x_NormalScale2;
  let x_555 : f32 = x_58.x_NormalScale2;
  let x_556 : vec2<f32> = vec2<f32>(x_553, x_555);
  let x_560 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) * vec2<f32>(x_556.x, x_556.y));
  let x_561 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec4<f32> = u_xlat8;
  let x_568 : vec4<f32> = u_xlat6;
  let x_570 : vec3<f32> = ((vec3<f32>(x_563.z, x_563.z, x_563.z) * vec3<f32>(x_565.x, x_565.y, x_565.z)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_577 : vec4<f32> = vs_TEXCOORD2;
  let x_580 : f32 = x_28.x_GlobalMipBias.x;
  let x_581 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_577.z, x_577.w), x_580);
  let x_582 : vec3<f32> = vec3<f32>(x_581.x, x_581.y, x_581.w);
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_586 : f32 = u_xlat7.x;
  let x_588 : f32 = u_xlat7.z;
  u_xlat7.x = (x_586 * x_588);
  let x_591 : vec4<f32> = u_xlat7;
  let x_594 : vec2<f32> = ((vec2<f32>(x_591.x, x_591.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_595 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat7;
  let x_599 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_597.x, x_597.y), vec2<f32>(x_599.x, x_599.y));
  let x_602 : f32 = u_xlat43;
  u_xlat43 = min(x_602, 1.0f);
  let x_604 : f32 = u_xlat43;
  u_xlat43 = (-(x_604) + 1.0f);
  let x_607 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_607);
  let x_609 : f32 = u_xlat43;
  u_xlat8.z = max(x_609, 0.0000000000000001f);
  let x_612 : vec4<f32> = u_xlat7;
  let x_616 : f32 = x_58.x_NormalScale3;
  let x_618 : f32 = x_58.x_NormalScale3;
  let x_619 : vec2<f32> = vec2<f32>(x_616, x_618);
  let x_623 : vec2<f32> = (vec2<f32>(x_612.x, x_612.y) * vec2<f32>(x_619.x, x_619.y));
  let x_624 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat4;
  let x_628 : vec4<f32> = u_xlat8;
  let x_631 : vec4<f32> = u_xlat6;
  let x_633 : vec3<f32> = ((vec3<f32>(x_626.w, x_626.w, x_626.w) * vec3<f32>(x_628.x, x_628.y, x_628.z)) + vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : f32 = u_xlat6.z;
  u_xlat6.w = (x_637 + 0.00000999999974737875f);
  let x_641 : vec4<f32> = u_xlat6;
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_641.x, x_641.y, x_641.w), vec3<f32>(x_643.x, x_643.y, x_643.w));
  let x_646 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat43;
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.w));
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : f32 = x_58.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_656;
  let x_659 : f32 = x_58.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_659;
  let x_662 : f32 = x_58.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_662;
  let x_665 : f32 = x_58.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_665;
  let x_668 : f32 = x_58.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_668;
  let x_671 : f32 = x_58.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_671;
  let x_674 : f32 = x_58.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_674;
  let x_677 : f32 = x_58.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_677;
  let x_679 : vec4<f32> = u_xlat7;
  let x_680 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_679 + x_680);
  let x_683 : f32 = u_xlat0.z;
  u_xlat8.x = x_683;
  let x_686 : f32 = u_xlat1.z;
  u_xlat8.y = x_686;
  let x_689 : f32 = u_xlat2.z;
  u_xlat8.z = x_689;
  let x_692 : f32 = u_xlat3.y;
  u_xlat8.w = x_692;
  let x_694 : vec4<f32> = u_xlat9;
  let x_697 : f32 = x_58.x_Smoothness0;
  let x_699 : f32 = x_58.x_Smoothness1;
  let x_701 : f32 = x_58.x_Smoothness2;
  let x_703 : f32 = x_58.x_Smoothness3;
  let x_706 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_694) * vec4<f32>(x_697, x_699, x_701, x_703)) + x_706);
  let x_710 : f32 = x_58.x_LayerHasMask0;
  let x_713 : f32 = x_58.x_LayerHasMask1;
  let x_716 : f32 = x_58.x_LayerHasMask2;
  let x_719 : f32 = x_58.x_LayerHasMask3;
  let x_721 : vec4<f32> = u_xlat8;
  let x_723 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_710, x_713, x_716, x_719) * x_721) + x_723);
  let x_726 : vec4<f32> = u_xlat4;
  let x_727 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_726, x_727);
  let x_730 : f32 = u_xlat0.x;
  u_xlat8.x = x_730;
  let x_733 : f32 = u_xlat1.x;
  u_xlat8.y = x_733;
  let x_736 : f32 = u_xlat2.x;
  u_xlat8.z = x_736;
  let x_739 : f32 = u_xlat3.x;
  u_xlat8.w = x_739;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_58.x_Metallic0;
  let x_747 : f32 = x_58.x_Metallic1;
  let x_750 : f32 = x_58.x_Metallic2;
  let x_753 : f32 = x_58.x_Metallic3;
  u_xlat8 = (x_741 + -(vec4<f32>(x_744, x_747, x_750, x_753)));
  let x_758 : f32 = x_58.x_LayerHasMask0;
  let x_760 : f32 = x_58.x_LayerHasMask1;
  let x_762 : f32 = x_58.x_LayerHasMask2;
  let x_764 : f32 = x_58.x_LayerHasMask3;
  let x_766 : vec4<f32> = u_xlat8;
  let x_769 : f32 = x_58.x_Metallic0;
  let x_771 : f32 = x_58.x_Metallic1;
  let x_773 : f32 = x_58.x_Metallic2;
  let x_775 : f32 = x_58.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_758, x_760, x_762, x_764) * x_766) + vec4<f32>(x_769, x_771, x_773, x_775));
  let x_778 : vec4<f32> = u_xlat4;
  let x_779 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_778, x_779);
  let x_783 : f32 = u_xlat0.y;
  u_xlat3.x = x_783;
  let x_786 : f32 = u_xlat1.y;
  u_xlat3.y = x_786;
  let x_789 : f32 = u_xlat2.y;
  u_xlat3.z = x_789;
  let x_791 : vec4<f32> = u_xlat7;
  let x_793 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_791) + x_793);
  let x_796 : f32 = x_58.x_LayerHasMask0;
  let x_798 : f32 = x_58.x_LayerHasMask1;
  let x_800 : f32 = x_58.x_LayerHasMask2;
  let x_802 : f32 = x_58.x_LayerHasMask3;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_796, x_798, x_800, x_802) * x_804) + x_806);
  let x_809 : vec4<f32> = u_xlat4;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_809, x_810);
  let x_812 : vec4<f32> = u_xlat6;
  let x_815 : vec4<f32> = vs_TEXCOORD5;
  let x_817 : vec3<f32> = (vec3<f32>(x_812.y, x_812.y, x_812.y) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : vec4<f32> = vs_TEXCOORD4;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.x, x_820.x) * -(vec3<f32>(x_823.x, x_823.y, x_823.z))) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat6;
  let x_835 : vec4<f32> = vs_TEXCOORD3;
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec3<f32> = ((vec3<f32>(x_832.z, x_832.z, x_832.z) * vec3<f32>(x_835.x, x_835.y, x_835.z)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_848);
  let x_850 : f32 = u_xlat43;
  let x_852 : vec4<f32> = u_xlat1;
  let x_854 : vec3<f32> = (vec3<f32>(x_850, x_850, x_850) * vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_862 : vec4<f32> = vs_TEXCOORD0;
  let x_865 : f32 = x_28.x_GlobalMipBias.x;
  let x_866 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_862.z, x_862.w), x_865);
  u_xlat2 = x_866;
  let x_871 : vec4<f32> = vs_TEXCOORD0;
  let x_874 : f32 = x_28.x_GlobalMipBias.x;
  let x_875 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_871.z, x_871.w), x_874);
  let x_876 : vec3<f32> = vec3<f32>(x_875.x, x_875.y, x_875.z);
  let x_877 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat2;
  let x_883 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_884 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat1;
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : f32 = u_xlat43;
  u_xlat43 = (x_891 + 0.5f);
  let x_893 : f32 = u_xlat43;
  let x_895 : vec4<f32> = u_xlat3;
  let x_897 : vec3<f32> = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_901 : f32 = u_xlat2.w;
  u_xlat43 = max(x_901, 0.00009999999747378752f);
  let x_904 : vec4<f32> = u_xlat2;
  let x_906 : f32 = u_xlat43;
  let x_908 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) / vec3<f32>(x_906, x_906, x_906));
  let x_909 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_912 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_912) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_918 : f32 = u_xlat28;
  let x_919 : f32 = u_xlat43;
  u_xlat44 = (x_918 + -(x_919));
  let x_922 : f32 = u_xlat43;
  let x_924 : vec4<f32> = u_xlat5;
  let x_926 : vec3<f32> = (vec3<f32>(x_922, x_922, x_922) * vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat5;
  let x_933 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_934 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec3<f32> = u_xlat0;
  let x_938 : vec4<f32> = u_xlat4;
  let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.x, x_936.x) * vec3<f32>(x_938.x, x_938.y, x_938.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_944 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : f32 = u_xlat28;
  u_xlat0.x = (-(x_946) + 1.0f);
  let x_951 : f32 = u_xlat0.x;
  let x_953 : f32 = u_xlat0.x;
  u_xlat28 = (x_951 * x_953);
  let x_955 : f32 = u_xlat28;
  u_xlat28 = max(x_955, 0.0078125f);
  let x_958 : f32 = u_xlat28;
  let x_959 : f32 = u_xlat28;
  u_xlat43 = (x_958 * x_959);
  let x_961 : f32 = u_xlat44;
  u_xlat44 = (x_961 + 1.0f);
  let x_963 : f32 = u_xlat44;
  u_xlat44 = clamp(x_963, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat28;
  u_xlat45 = ((x_966 * 4.0f) + 2.0f);
  let x_969 : f32 = u_xlat14;
  u_xlat14 = min(x_969, 1.0f);
  let x_974 : vec4<f32> = vs_TEXCOORD8;
  let x_975 : vec2<f32> = vec2<f32>(x_974.x, x_974.y);
  let x_978 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_975.x, x_975.y, x_978);
  let x_991 : vec3<f32> = txVec0;
  let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
  u_xlat46 = x_993;
  let x_1004 : f32 = x_1002.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1004) + 1.0f);
  let x_1008 : f32 = u_xlat46;
  let x_1010 : f32 = x_1002.x_MainLightShadowParams.x;
  let x_1013 : f32 = u_xlat5.x;
  u_xlat46 = ((x_1008 * x_1010) + x_1013);
  let x_1017 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_1017);
  let x_1021 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (x_1021 >= 1.0f);
  let x_1023 : bool = u_xlatb19;
  let x_1024 : bool = u_xlatb5;
  u_xlatb5 = (x_1023 | x_1024);
  let x_1026 : bool = u_xlatb5;
  let x_1027 : f32 = u_xlat46;
  u_xlat46 = select(x_1027, 1.0f, x_1026);
  let x_1031 : vec3<f32> = vs_TEXCOORD7;
  let x_1034 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1036 : vec3<f32> = (x_1031 + -(x_1034));
  let x_1037 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat5;
  let x_1041 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1039.x, x_1039.y, x_1039.z), vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1047 : f32 = u_xlat5.x;
  let x_1049 : f32 = x_1002.x_MainLightShadowParams.z;
  let x_1052 : f32 = x_1002.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1047 * x_1049) + x_1052);
  let x_1056 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1056, 0.0f, 1.0f);
  let x_1060 : f32 = u_xlat46;
  u_xlat33 = (-(x_1060) + 1.0f);
  let x_1064 : f32 = u_xlat19.x;
  let x_1065 : f32 = u_xlat33;
  let x_1067 : f32 = u_xlat46;
  u_xlat46 = ((x_1064 * x_1065) + x_1067);
  let x_1070 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1070;
  let x_1073 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1073;
  let x_1076 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1076;
  let x_1078 : vec4<f32> = u_xlat6;
  let x_1081 : vec4<f32> = u_xlat1;
  u_xlat19.x = dot(-(vec3<f32>(x_1078.x, x_1078.y, x_1078.z)), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1086 : f32 = u_xlat19.x;
  let x_1088 : f32 = u_xlat19.x;
  u_xlat19.x = (x_1086 + x_1088);
  let x_1091 : vec4<f32> = u_xlat1;
  let x_1093 : vec3<f32> = u_xlat19;
  let x_1097 : vec4<f32> = u_xlat6;
  u_xlat19 = ((vec3<f32>(x_1091.x, x_1091.y, x_1091.z) * -(vec3<f32>(x_1093.x, x_1093.x, x_1093.x))) + -(vec3<f32>(x_1097.x, x_1097.y, x_1097.z)));
  let x_1102 : vec4<f32> = u_xlat1;
  let x_1104 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1107, 0.0f, 1.0f);
  let x_1109 : f32 = u_xlat48;
  u_xlat48 = (-(x_1109) + 1.0f);
  let x_1112 : f32 = u_xlat48;
  let x_1113 : f32 = u_xlat48;
  u_xlat48 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat48;
  let x_1116 : f32 = u_xlat48;
  u_xlat48 = (x_1115 * x_1116);
  let x_1119 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_1119) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1127 : f32 = u_xlat0.x;
  let x_1129 : f32 = u_xlat7.x;
  u_xlat0.x = (x_1127 * x_1129);
  let x_1133 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1133 * 6.0f);
  let x_1145 : vec3<f32> = u_xlat19;
  let x_1147 : f32 = u_xlat0.x;
  let x_1148 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1145, x_1147);
  u_xlat7 = x_1148;
  let x_1150 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1150 + -1.0f);
  let x_1158 : f32 = x_1156.unity_SpecCube0_HDR.w;
  let x_1160 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1158 * x_1160) + 1.0f);
  let x_1165 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1165, 0.0f);
  let x_1169 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1169);
  let x_1173 : f32 = u_xlat0.x;
  let x_1175 : f32 = x_1156.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1173 * x_1175);
  let x_1179 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1179);
  let x_1183 : f32 = u_xlat0.x;
  let x_1185 : f32 = x_1156.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1183 * x_1185);
  let x_1188 : vec4<f32> = u_xlat7;
  let x_1190 : vec3<f32> = u_xlat0;
  u_xlat19 = (vec3<f32>(x_1188.x, x_1188.y, x_1188.z) * vec3<f32>(x_1190.x, x_1190.x, x_1190.x));
  let x_1193 : f32 = u_xlat28;
  let x_1195 : f32 = u_xlat28;
  let x_1199 : vec2<f32> = ((vec2<f32>(x_1193, x_1193) * vec2<f32>(x_1195, x_1195)) + vec2<f32>(-1.0f, 1.0f));
  let x_1200 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1199.x, x_1200.y, x_1199.y);
  let x_1203 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1203);
  let x_1205 : vec4<f32> = u_xlat4;
  let x_1208 : f32 = u_xlat44;
  let x_1210 : vec3<f32> = (-(vec3<f32>(x_1205.x, x_1205.y, x_1205.z)) + vec3<f32>(x_1208, x_1208, x_1208));
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : f32 = u_xlat48;
  let x_1215 : vec4<f32> = u_xlat7;
  let x_1218 : vec4<f32> = u_xlat4;
  let x_1220 : vec3<f32> = ((vec3<f32>(x_1213, x_1213, x_1213) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z)) + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1221 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
  let x_1223 : f32 = u_xlat28;
  let x_1225 : vec4<f32> = u_xlat7;
  let x_1227 : vec3<f32> = (vec3<f32>(x_1223, x_1223, x_1223) * vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
  let x_1228 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1230 : vec3<f32> = u_xlat19;
  let x_1231 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1230 * vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat2;
  let x_1236 : vec4<f32> = u_xlat3;
  let x_1239 : vec3<f32> = u_xlat19;
  let x_1240 : vec3<f32> = ((vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * vec3<f32>(x_1236.x, x_1236.y, x_1236.z)) + x_1239);
  let x_1241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : f32 = u_xlat46;
  let x_1245 : f32 = x_1156.unity_LightData.z;
  u_xlat28 = (x_1243 * x_1245);
  let x_1247 : vec4<f32> = u_xlat1;
  let x_1250 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1247.x, x_1247.y, x_1247.z), vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1253, 0.0f, 1.0f);
  let x_1255 : f32 = u_xlat28;
  let x_1256 : f32 = u_xlat44;
  u_xlat28 = (x_1255 * x_1256);
  let x_1258 : f32 = u_xlat28;
  let x_1261 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_1258, x_1258, x_1258) * vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1264 : vec4<f32> = u_xlat6;
  let x_1267 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1269 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) + vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1270 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
  let x_1272 : vec4<f32> = u_xlat7;
  let x_1274 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1272.x, x_1272.y, x_1272.z), vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
  let x_1277 : f32 = u_xlat28;
  u_xlat28 = max(x_1277, 1.17549435e-38f);
  let x_1280 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1280);
  let x_1282 : f32 = u_xlat28;
  let x_1284 : vec4<f32> = u_xlat7;
  let x_1286 : vec3<f32> = (vec3<f32>(x_1282, x_1282, x_1282) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1289 : vec4<f32> = u_xlat1;
  let x_1291 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1289.x, x_1289.y, x_1289.z), vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1294 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1294, 0.0f, 1.0f);
  let x_1297 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1299 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1297.x, x_1297.y, x_1297.z), vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
  let x_1302 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1302, 0.0f, 1.0f);
  let x_1304 : f32 = u_xlat28;
  let x_1305 : f32 = u_xlat28;
  u_xlat28 = (x_1304 * x_1305);
  let x_1307 : f32 = u_xlat28;
  let x_1309 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1307 * x_1309) + 1.00001001358032226562f);
  let x_1313 : f32 = u_xlat44;
  let x_1314 : f32 = u_xlat44;
  u_xlat44 = (x_1313 * x_1314);
  let x_1316 : f32 = u_xlat28;
  let x_1317 : f32 = u_xlat28;
  u_xlat28 = (x_1316 * x_1317);
  let x_1319 : f32 = u_xlat44;
  u_xlat44 = max(x_1319, 0.10000000149011611938f);
  let x_1322 : f32 = u_xlat28;
  let x_1323 : f32 = u_xlat44;
  u_xlat28 = (x_1322 * x_1323);
  let x_1325 : f32 = u_xlat45;
  let x_1326 : f32 = u_xlat28;
  u_xlat28 = (x_1325 * x_1326);
  let x_1328 : f32 = u_xlat43;
  let x_1329 : f32 = u_xlat28;
  u_xlat28 = (x_1328 / x_1329);
  let x_1331 : vec4<f32> = u_xlat4;
  let x_1333 : f32 = u_xlat28;
  let x_1336 : vec4<f32> = u_xlat3;
  let x_1338 : vec3<f32> = ((vec3<f32>(x_1331.x, x_1331.y, x_1331.z) * vec3<f32>(x_1333, x_1333, x_1333)) + vec3<f32>(x_1336.x, x_1336.y, x_1336.z));
  let x_1339 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1341 : vec3<f32> = u_xlat19;
  let x_1342 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1341 * vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
  let x_1346 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1348 : f32 = x_1156.unity_LightData.y;
  u_xlat28 = min(x_1346, x_1348);
  let x_1352 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1352));
  let x_1356 : f32 = u_xlat5.x;
  let x_1358 : f32 = x_1002.x_AdditionalShadowFadeParams.x;
  let x_1361 : f32 = x_1002.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1356 * x_1358) + x_1361);
  let x_1363 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1363, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1375 : u32 = u_xlatu_loop_1;
    let x_1376 : u32 = u_xlatu28;
    if ((x_1375 < x_1376)) {
    } else {
      break;
    }
    let x_1379 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1379 >> 2u);
    let x_1383 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1383 & 3u));
    let x_1386 : u32 = u_xlatu5;
    let x_1389 : vec4<f32> = x_1156.unity_LightIndices[bitcast<i32>(x_1386)];
    let x_1399 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1404 : vec4<u32> = indexable[x_1399];
    u_xlat5.x = dot(x_1389, bitcast<vec4<f32>>(x_1404));
    let x_1410 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1410);
    let x_1412 : vec3<f32> = vs_TEXCOORD7;
    let x_1423 : i32 = u_xlati5;
    let x_1425 : vec4<f32> = x_1422.x_AdditionalLightsPosition[x_1423];
    let x_1428 : i32 = u_xlati5;
    let x_1430 : vec4<f32> = x_1422.x_AdditionalLightsPosition[x_1428];
    let x_1432 : vec3<f32> = ((-(x_1412) * vec3<f32>(x_1425.w, x_1425.w, x_1425.w)) + vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
    let x_1433 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
    let x_1435 : vec4<f32> = u_xlat8;
    let x_1437 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1435.x, x_1435.y, x_1435.z), vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
    let x_1440 : f32 = u_xlat48;
    u_xlat48 = max(x_1440, 0.00006103515625f);
    let x_1443 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1443);
    let x_1445 : f32 = u_xlat49;
    let x_1447 : vec4<f32> = u_xlat8;
    let x_1449 : vec3<f32> = (vec3<f32>(x_1445, x_1445, x_1445) * vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
    let x_1450 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
    let x_1453 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1453);
    let x_1455 : f32 = u_xlat48;
    let x_1456 : i32 = u_xlati5;
    let x_1458 : f32 = x_1422.x_AdditionalLightsAttenuation[x_1456].x;
    u_xlat48 = (x_1455 * x_1458);
    let x_1460 : f32 = u_xlat48;
    let x_1462 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1460) * x_1462) + 1.0f);
    let x_1465 : f32 = u_xlat48;
    u_xlat48 = max(x_1465, 0.0f);
    let x_1467 : f32 = u_xlat48;
    let x_1468 : f32 = u_xlat48;
    u_xlat48 = (x_1467 * x_1468);
    let x_1470 : f32 = u_xlat48;
    let x_1471 : f32 = u_xlat50;
    u_xlat48 = (x_1470 * x_1471);
    let x_1473 : i32 = u_xlati5;
    let x_1475 : vec4<f32> = x_1422.x_AdditionalLightsSpotDir[x_1473];
    let x_1477 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1475.x, x_1475.y, x_1475.z), vec3<f32>(x_1477.x, x_1477.y, x_1477.z));
    let x_1480 : f32 = u_xlat50;
    let x_1481 : i32 = u_xlati5;
    let x_1483 : f32 = x_1422.x_AdditionalLightsAttenuation[x_1481].z;
    let x_1485 : i32 = u_xlati5;
    let x_1487 : f32 = x_1422.x_AdditionalLightsAttenuation[x_1485].w;
    u_xlat50 = ((x_1480 * x_1483) + x_1487);
    let x_1489 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1489, 0.0f, 1.0f);
    let x_1491 : f32 = u_xlat50;
    let x_1492 : f32 = u_xlat50;
    u_xlat50 = (x_1491 * x_1492);
    let x_1494 : f32 = u_xlat48;
    let x_1495 : f32 = u_xlat50;
    u_xlat48 = (x_1494 * x_1495);
    let x_1498 : i32 = u_xlati5;
    let x_1500 : f32 = x_1002.x_AdditionalShadowParams[x_1498].w;
    u_xlati50 = i32(x_1500);
    let x_1503 : i32 = u_xlati50;
    u_xlatb51 = (x_1503 >= 0i);
    let x_1505 : bool = u_xlatb51;
    if (x_1505) {
      let x_1509 : i32 = u_xlati5;
      let x_1511 : f32 = x_1002.x_AdditionalShadowParams[x_1509].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1511, x_1511, x_1511, x_1511))));
      let x_1515 : bool = u_xlatb51;
      if (x_1515) {
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1523 : vec4<f32> = u_xlat9;
        let x_1526 : vec4<bool> = (abs(vec4<f32>(x_1520.z, x_1520.z, x_1520.y, x_1520.z)) >= abs(vec4<f32>(x_1523.x, x_1523.y, x_1523.x, x_1523.x)));
        let x_1528 : vec3<bool> = vec3<bool>(x_1526.x, x_1526.y, x_1526.z);
        let x_1529 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1528.x, x_1528.y, x_1528.z, x_1529.w);
        let x_1532 : bool = u_xlatb10.y;
        let x_1534 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1532 & x_1534);
        let x_1536 : vec4<f32> = u_xlat9;
        let x_1539 : vec4<bool> = (-(vec4<f32>(x_1536.z, x_1536.y, x_1536.z, x_1536.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1540 : vec3<bool> = vec3<bool>(x_1539.x, x_1539.y, x_1539.w);
        let x_1541 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1540.x, x_1540.y, x_1541.z, x_1540.z);
        let x_1544 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1544);
        let x_1549 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1549);
        let x_1555 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1555);
        let x_1559 : bool = u_xlatb10.z;
        if (x_1559) {
          let x_1565 : f32 = u_xlat10.y;
          x_1561 = x_1565;
        } else {
          let x_1567 : f32 = u_xlat52;
          x_1561 = x_1567;
        }
        let x_1568 : f32 = x_1561;
        u_xlat24 = x_1568;
        let x_1570 : bool = u_xlatb51;
        if (x_1570) {
          let x_1575 : f32 = u_xlat10.x;
          x_1571 = x_1575;
        } else {
          let x_1577 : f32 = u_xlat24;
          x_1571 = x_1577;
        }
        let x_1578 : f32 = x_1571;
        u_xlat51 = x_1578;
        let x_1579 : i32 = u_xlati5;
        let x_1581 : f32 = x_1002.x_AdditionalShadowParams[x_1579].w;
        u_xlat10.x = trunc(x_1581);
        let x_1584 : f32 = u_xlat51;
        let x_1586 : f32 = u_xlat10.x;
        u_xlat51 = (x_1584 + x_1586);
        let x_1588 : f32 = u_xlat51;
        u_xlati50 = i32(x_1588);
      }
      let x_1590 : i32 = u_xlati50;
      u_xlati50 = (x_1590 << bitcast<u32>(2i));
      let x_1592 : vec3<f32> = vs_TEXCOORD7;
      let x_1594 : i32 = u_xlati50;
      let x_1597 : i32 = u_xlati50;
      let x_1601 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_1594 + 1i) / 4i)][((x_1597 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1592.y, x_1592.y, x_1592.y, x_1592.y) * x_1601);
      let x_1603 : i32 = u_xlati50;
      let x_1605 : i32 = u_xlati50;
      let x_1608 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[(x_1603 / 4i)][(x_1605 % 4i)];
      let x_1609 : vec3<f32> = vs_TEXCOORD7;
      let x_1612 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1608 * vec4<f32>(x_1609.x, x_1609.x, x_1609.x, x_1609.x)) + x_1612);
      let x_1614 : i32 = u_xlati50;
      let x_1617 : i32 = u_xlati50;
      let x_1621 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_1614 + 2i) / 4i)][((x_1617 + 2i) % 4i)];
      let x_1622 : vec3<f32> = vs_TEXCOORD7;
      let x_1625 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1621 * vec4<f32>(x_1622.z, x_1622.z, x_1622.z, x_1622.z)) + x_1625);
      let x_1627 : vec4<f32> = u_xlat10;
      let x_1628 : i32 = u_xlati50;
      let x_1631 : i32 = u_xlati50;
      let x_1635 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_1628 + 3i) / 4i)][((x_1631 + 3i) % 4i)];
      u_xlat10 = (x_1627 + x_1635);
      let x_1637 : vec4<f32> = u_xlat10;
      let x_1639 : vec4<f32> = u_xlat10;
      let x_1641 : vec3<f32> = (vec3<f32>(x_1637.x, x_1637.y, x_1637.z) / vec3<f32>(x_1639.w, x_1639.w, x_1639.w));
      let x_1642 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);
      let x_1645 : vec4<f32> = u_xlat10;
      let x_1646 : vec2<f32> = vec2<f32>(x_1645.x, x_1645.y);
      let x_1648 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1646.x, x_1646.y, x_1648);
      let x_1656 : vec3<f32> = txVec1;
      let x_1658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1656.xy, x_1656.z);
      u_xlat50 = x_1658;
      let x_1659 : i32 = u_xlati5;
      let x_1661 : f32 = x_1002.x_AdditionalShadowParams[x_1659].x;
      u_xlat51 = (1.0f + -(x_1661));
      let x_1664 : f32 = u_xlat50;
      let x_1665 : i32 = u_xlati5;
      let x_1667 : f32 = x_1002.x_AdditionalShadowParams[x_1665].x;
      let x_1669 : f32 = u_xlat51;
      u_xlat50 = ((x_1664 * x_1667) + x_1669);
      let x_1672 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1672);
      let x_1675 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1675 >= 1.0f);
      let x_1678 : bool = u_xlatb51;
      let x_1680 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1678 | x_1680);
      let x_1682 : bool = u_xlatb51;
      let x_1683 : f32 = u_xlat50;
      u_xlat50 = select(x_1683, 1.0f, x_1682);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1686 : f32 = u_xlat50;
    u_xlat51 = (-(x_1686) + 1.0f);
    let x_1689 : f32 = u_xlat44;
    let x_1690 : f32 = u_xlat51;
    let x_1692 : f32 = u_xlat50;
    u_xlat50 = ((x_1689 * x_1690) + x_1692);
    let x_1694 : f32 = u_xlat48;
    let x_1695 : f32 = u_xlat50;
    u_xlat48 = (x_1694 * x_1695);
    let x_1697 : vec4<f32> = u_xlat1;
    let x_1699 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1697.x, x_1697.y, x_1697.z), vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
    let x_1702 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1702, 0.0f, 1.0f);
    let x_1704 : f32 = u_xlat48;
    let x_1705 : f32 = u_xlat50;
    u_xlat48 = (x_1704 * x_1705);
    let x_1707 : f32 = u_xlat48;
    let x_1709 : i32 = u_xlati5;
    let x_1711 : vec4<f32> = x_1422.x_AdditionalLightsColor[x_1709];
    let x_1713 : vec3<f32> = (vec3<f32>(x_1707, x_1707, x_1707) * vec3<f32>(x_1711.x, x_1711.y, x_1711.z));
    let x_1714 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
    let x_1716 : vec4<f32> = u_xlat8;
    let x_1718 : f32 = u_xlat49;
    let x_1721 : vec4<f32> = u_xlat6;
    let x_1723 : vec3<f32> = ((vec3<f32>(x_1716.x, x_1716.y, x_1716.z) * vec3<f32>(x_1718, x_1718, x_1718)) + vec3<f32>(x_1721.x, x_1721.y, x_1721.z));
    let x_1724 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
    let x_1726 : vec4<f32> = u_xlat8;
    let x_1728 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1726.x, x_1726.y, x_1726.z), vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
    let x_1733 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1733, 1.17549435e-38f);
    let x_1737 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1737);
    let x_1740 : vec4<f32> = u_xlat5;
    let x_1742 : vec4<f32> = u_xlat8;
    let x_1744 : vec3<f32> = (vec3<f32>(x_1740.x, x_1740.x, x_1740.x) * vec3<f32>(x_1742.x, x_1742.y, x_1742.z));
    let x_1745 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
    let x_1747 : vec4<f32> = u_xlat1;
    let x_1749 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1747.x, x_1747.y, x_1747.z), vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
    let x_1754 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1754, 0.0f, 1.0f);
    let x_1757 : vec4<f32> = u_xlat9;
    let x_1759 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1757.x, x_1757.y, x_1757.z), vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
    let x_1762 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1762, 0.0f, 1.0f);
    let x_1765 : f32 = u_xlat5.x;
    let x_1767 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1765 * x_1767);
    let x_1771 : f32 = u_xlat5.x;
    let x_1773 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_1771 * x_1773) + 1.00001001358032226562f);
    let x_1777 : f32 = u_xlat48;
    let x_1778 : f32 = u_xlat48;
    u_xlat48 = (x_1777 * x_1778);
    let x_1781 : f32 = u_xlat5.x;
    let x_1783 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1781 * x_1783);
    let x_1786 : f32 = u_xlat48;
    u_xlat48 = max(x_1786, 0.10000000149011611938f);
    let x_1789 : f32 = u_xlat5.x;
    let x_1790 : f32 = u_xlat48;
    u_xlat5.x = (x_1789 * x_1790);
    let x_1793 : f32 = u_xlat45;
    let x_1795 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1793 * x_1795);
    let x_1798 : f32 = u_xlat43;
    let x_1800 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1798 / x_1800);
    let x_1803 : vec4<f32> = u_xlat4;
    let x_1805 : vec4<f32> = u_xlat5;
    let x_1808 : vec4<f32> = u_xlat3;
    let x_1810 : vec3<f32> = ((vec3<f32>(x_1803.x, x_1803.y, x_1803.z) * vec3<f32>(x_1805.x, x_1805.x, x_1805.x)) + vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
    let x_1811 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
    let x_1813 : vec4<f32> = u_xlat8;
    let x_1815 : vec4<f32> = u_xlat10;
    let x_1818 : vec4<f32> = u_xlat7;
    let x_1820 : vec3<f32> = ((vec3<f32>(x_1813.x, x_1813.y, x_1813.z) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z)) + vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
    let x_1821 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);

    continuing {
      let x_1823 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1823 + bitcast<u32>(1i));
    }
  }
  let x_1825 : vec4<f32> = u_xlat2;
  let x_1827 : f32 = u_xlat14;
  let x_1830 : vec3<f32> = u_xlat19;
  u_xlat0 = ((vec3<f32>(x_1825.x, x_1825.y, x_1825.z) * vec3<f32>(x_1827, x_1827, x_1827)) + x_1830);
  let x_1832 : vec4<f32> = u_xlat7;
  let x_1834 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1832.x, x_1832.y, x_1832.z) + x_1834);
  let x_1838 : f32 = u_xlat42;
  let x_1840 : vec3<f32> = u_xlat0;
  let x_1841 : vec3<f32> = (vec3<f32>(x_1838, x_1838, x_1838) * x_1840);
  let x_1842 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


