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
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_110 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

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

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_825 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_983 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1396 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1535 : f32;
  var x_1545 : f32;
  var txVec1 : vec3<f32>;
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
  let x_116 : f32 = x_110.x_GlobalMipBias.x;
  let x_117 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_116);
  u_xlat4 = x_117;
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_120, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_131 : vec4<f32> = vs_TEXCOORD1;
  let x_134 : f32 = x_110.x_GlobalMipBias.x;
  let x_135 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_131.x, x_131.y), x_134);
  u_xlat5 = x_135;
  let x_141 : vec4<f32> = vs_TEXCOORD1;
  let x_144 : f32 = x_110.x_GlobalMipBias.x;
  let x_145 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_141.z, x_141.w), x_144);
  u_xlat6 = x_145;
  let x_152 : vec4<f32> = vs_TEXCOORD2;
  let x_155 : f32 = x_110.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_152.x, x_152.y), x_155);
  u_xlat7 = x_156;
  let x_162 : vec4<f32> = vs_TEXCOORD2;
  let x_165 : f32 = x_110.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_162.z, x_162.w), x_165);
  u_xlat8 = x_166;
  let x_170 : f32 = u_xlat5.w;
  u_xlat9.x = x_170;
  let x_173 : f32 = u_xlat6.w;
  u_xlat9.y = x_173;
  let x_177 : f32 = u_xlat7.w;
  u_xlat9.z = x_177;
  let x_181 : f32 = u_xlat8.w;
  u_xlat9.w = x_181;
  let x_184 : vec4<f32> = u_xlat9;
  let x_187 : f32 = x_13.x_Smoothness0;
  let x_190 : f32 = x_13.x_Smoothness1;
  let x_193 : f32 = x_13.x_Smoothness2;
  let x_196 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_184 * vec4<f32>(x_187, x_190, x_193, x_196));
  let x_205 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_205);
  let x_208 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_208) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_211 : vec4<f32> = u_xlat9;
  let x_212 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_211 + -(x_212));
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_215 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_219 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_219, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_224 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_228);
  let x_231 : vec4<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_231 + -(x_232));
  let x_237 : f32 = u_xlat12.x;
  let x_240 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_237 * x_240);
  let x_244 : f32 = u_xlat12.y;
  let x_247 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_244 * x_247);
  let x_251 : f32 = u_xlat12.z;
  let x_254 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_251 * x_254);
  let x_258 : f32 = u_xlat12.w;
  let x_261 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_258 * x_261);
  let x_264 : vec4<f32> = u_xlat11;
  let x_265 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_264 + x_265);
  let x_267 : bool = u_xlatb43;
  let x_268 : vec4<f32> = u_xlat11;
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_269, x_268, vec4<bool>(x_267, x_267, x_267, x_267));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_274, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_276 : f32 = u_xlat43;
  u_xlat43 = (x_276 + 0.00006103515625f);
  let x_279 : vec4<f32> = u_xlat4;
  let x_280 : f32 = u_xlat43;
  u_xlat4 = (x_279 / vec4<f32>(x_280, x_280, x_280, x_280));
  let x_283 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_288 : vec3<f32> = (vec3<f32>(x_283.x, x_283.x, x_283.x) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_296 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat12;
  let x_303 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat5;
  let x_308 : vec4<f32> = u_xlat11;
  let x_311 : vec4<f32> = u_xlat6;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.x, x_308.y, x_308.z)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_321 : vec3<f32> = (vec3<f32>(x_316.z, x_316.z, x_316.z) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat7;
  let x_326 : vec4<f32> = u_xlat6;
  let x_329 : vec4<f32> = u_xlat5;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_339 : vec3<f32> = (vec3<f32>(x_334.w, x_334.w, x_334.w) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat8;
  let x_344 : vec4<f32> = u_xlat6;
  let x_347 : vec4<f32> = u_xlat5;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.y, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_357 : vec4<f32> = vs_TEXCOORD1;
  let x_360 : f32 = x_110.x_GlobalMipBias.x;
  let x_361 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_357.x, x_357.y), x_360);
  let x_362 : vec3<f32> = vec3<f32>(x_361.x, x_361.y, x_361.w);
  let x_363 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = u_xlat6.x;
  let x_368 : f32 = u_xlat6.z;
  u_xlat6.x = (x_366 * x_368);
  let x_371 : vec4<f32> = u_xlat6;
  let x_376 : vec2<f32> = ((vec2<f32>(x_371.x, x_371.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  let x_381 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_379.x, x_379.y), vec2<f32>(x_381.x, x_381.y));
  let x_384 : f32 = u_xlat43;
  u_xlat43 = min(x_384, 1.0f);
  let x_386 : f32 = u_xlat43;
  u_xlat43 = (-(x_386) + 1.0f);
  let x_389 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_389);
  let x_391 : f32 = u_xlat43;
  u_xlat7.z = max(x_391, 0.0000000000000001f);
  let x_395 : vec4<f32> = u_xlat6;
  let x_398 : f32 = x_13.x_NormalScale0;
  let x_400 : vec2<f32> = (vec2<f32>(x_395.x, x_395.y) * vec2<f32>(x_398, x_398));
  let x_401 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
  let x_407 : vec4<f32> = vs_TEXCOORD1;
  let x_410 : f32 = x_110.x_GlobalMipBias.x;
  let x_411 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_407.z, x_407.w), x_410);
  let x_412 : vec3<f32> = vec3<f32>(x_411.x, x_411.y, x_411.w);
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat6.x;
  let x_418 : f32 = u_xlat6.z;
  u_xlat6.x = (x_416 * x_418);
  let x_421 : vec4<f32> = u_xlat6;
  let x_424 : vec2<f32> = ((vec2<f32>(x_421.x, x_421.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_425 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_427.x, x_427.y), vec2<f32>(x_429.x, x_429.y));
  let x_432 : f32 = u_xlat43;
  u_xlat43 = min(x_432, 1.0f);
  let x_434 : f32 = u_xlat43;
  u_xlat43 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_437);
  let x_439 : f32 = u_xlat43;
  u_xlat8.z = max(x_439, 0.0000000000000001f);
  let x_442 : vec4<f32> = u_xlat6;
  let x_446 : f32 = x_13.x_NormalScale1;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_449 : vec2<f32> = vec2<f32>(x_446, x_448);
  let x_453 : vec2<f32> = (vec2<f32>(x_442.x, x_442.y) * vec2<f32>(x_449.x, x_449.y));
  let x_454 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat4;
  let x_458 : vec4<f32> = u_xlat8;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.y, x_456.y, x_456.y) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat4;
  let x_465 : vec4<f32> = u_xlat7;
  let x_468 : vec4<f32> = u_xlat6;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.x, x_463.x) * vec3<f32>(x_465.x, x_465.y, x_465.z)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_477 : vec4<f32> = vs_TEXCOORD2;
  let x_480 : f32 = x_110.x_GlobalMipBias.x;
  let x_481 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_477.x, x_477.y), x_480);
  let x_482 : vec3<f32> = vec3<f32>(x_481.x, x_481.y, x_481.w);
  let x_483 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : f32 = u_xlat7.x;
  let x_488 : f32 = u_xlat7.z;
  u_xlat7.x = (x_486 * x_488);
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : vec2<f32> = ((vec2<f32>(x_491.x, x_491.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  let x_499 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_497.x, x_497.y), vec2<f32>(x_499.x, x_499.y));
  let x_502 : f32 = u_xlat43;
  u_xlat43 = min(x_502, 1.0f);
  let x_504 : f32 = u_xlat43;
  u_xlat43 = (-(x_504) + 1.0f);
  let x_507 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_507);
  let x_509 : f32 = u_xlat43;
  u_xlat8.z = max(x_509, 0.0000000000000001f);
  let x_512 : vec4<f32> = u_xlat7;
  let x_516 : f32 = x_13.x_NormalScale2;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_519 : vec2<f32> = vec2<f32>(x_516, x_518);
  let x_523 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(x_519.x, x_519.y));
  let x_524 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec4<f32> = u_xlat8;
  let x_531 : vec4<f32> = u_xlat6;
  let x_533 : vec3<f32> = ((vec3<f32>(x_526.z, x_526.z, x_526.z) * vec3<f32>(x_528.x, x_528.y, x_528.z)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_540 : vec4<f32> = vs_TEXCOORD2;
  let x_543 : f32 = x_110.x_GlobalMipBias.x;
  let x_544 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_540.z, x_540.w), x_543);
  let x_545 : vec3<f32> = vec3<f32>(x_544.x, x_544.y, x_544.w);
  let x_546 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : f32 = u_xlat7.x;
  let x_551 : f32 = u_xlat7.z;
  u_xlat7.x = (x_549 * x_551);
  let x_554 : vec4<f32> = u_xlat7;
  let x_557 : vec2<f32> = ((vec2<f32>(x_554.x, x_554.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  let x_562 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_560.x, x_560.y), vec2<f32>(x_562.x, x_562.y));
  let x_565 : f32 = u_xlat43;
  u_xlat43 = min(x_565, 1.0f);
  let x_567 : f32 = u_xlat43;
  u_xlat43 = (-(x_567) + 1.0f);
  let x_570 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_570);
  let x_572 : f32 = u_xlat43;
  u_xlat8.z = max(x_572, 0.0000000000000001f);
  let x_575 : vec4<f32> = u_xlat7;
  let x_579 : f32 = x_13.x_NormalScale3;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_582 : vec2<f32> = vec2<f32>(x_579, x_581);
  let x_586 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_582.x, x_582.y));
  let x_587 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec4<f32> = u_xlat8;
  let x_594 : vec4<f32> = u_xlat6;
  let x_596 : vec3<f32> = ((vec3<f32>(x_589.w, x_589.w, x_589.w) * vec3<f32>(x_591.x, x_591.y, x_591.z)) + vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_600 : f32 = u_xlat6.z;
  u_xlat6.w = (x_600 + 0.00000999999974737875f);
  let x_604 : vec4<f32> = u_xlat6;
  let x_606 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_604.x, x_604.y, x_604.w), vec3<f32>(x_606.x, x_606.y, x_606.w));
  let x_609 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_609);
  let x_611 : f32 = u_xlat43;
  let x_613 : vec4<f32> = u_xlat6;
  let x_615 : vec3<f32> = (vec3<f32>(x_611, x_611, x_611) * vec3<f32>(x_613.x, x_613.y, x_613.w));
  let x_616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_619 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_619;
  let x_622 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_622;
  let x_625 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_625;
  let x_628 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_628;
  let x_631 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_640;
  let x_642 : vec4<f32> = u_xlat7;
  let x_643 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_642 + x_643);
  let x_646 : f32 = u_xlat0.z;
  u_xlat8.x = x_646;
  let x_649 : f32 = u_xlat1.z;
  u_xlat8.y = x_649;
  let x_652 : f32 = u_xlat2.z;
  u_xlat8.z = x_652;
  let x_655 : f32 = u_xlat3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat9;
  let x_660 : f32 = x_13.x_Smoothness0;
  let x_662 : f32 = x_13.x_Smoothness1;
  let x_664 : f32 = x_13.x_Smoothness2;
  let x_666 : f32 = x_13.x_Smoothness3;
  let x_669 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_657) * vec4<f32>(x_660, x_662, x_664, x_666)) + x_669);
  let x_673 : f32 = x_13.x_LayerHasMask0;
  let x_676 : f32 = x_13.x_LayerHasMask1;
  let x_679 : f32 = x_13.x_LayerHasMask2;
  let x_682 : f32 = x_13.x_LayerHasMask3;
  let x_684 : vec4<f32> = u_xlat8;
  let x_686 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_673, x_676, x_679, x_682) * x_684) + x_686);
  let x_689 : vec4<f32> = u_xlat4;
  let x_690 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_689, x_690);
  let x_693 : f32 = u_xlat0.x;
  u_xlat8.x = x_693;
  let x_696 : f32 = u_xlat1.x;
  u_xlat8.y = x_696;
  let x_699 : f32 = u_xlat2.x;
  u_xlat8.z = x_699;
  let x_702 : f32 = u_xlat3.x;
  u_xlat8.w = x_702;
  let x_704 : vec4<f32> = u_xlat8;
  let x_707 : f32 = x_13.x_Metallic0;
  let x_710 : f32 = x_13.x_Metallic1;
  let x_713 : f32 = x_13.x_Metallic2;
  let x_716 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_704 + -(vec4<f32>(x_707, x_710, x_713, x_716)));
  let x_721 : f32 = x_13.x_LayerHasMask0;
  let x_723 : f32 = x_13.x_LayerHasMask1;
  let x_725 : f32 = x_13.x_LayerHasMask2;
  let x_727 : f32 = x_13.x_LayerHasMask3;
  let x_729 : vec4<f32> = u_xlat8;
  let x_732 : f32 = x_13.x_Metallic0;
  let x_734 : f32 = x_13.x_Metallic1;
  let x_736 : f32 = x_13.x_Metallic2;
  let x_738 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_721, x_723, x_725, x_727) * x_729) + vec4<f32>(x_732, x_734, x_736, x_738));
  let x_741 : vec4<f32> = u_xlat4;
  let x_742 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_741, x_742);
  let x_746 : f32 = u_xlat0.y;
  u_xlat3.x = x_746;
  let x_749 : f32 = u_xlat1.y;
  u_xlat3.y = x_749;
  let x_752 : f32 = u_xlat2.y;
  u_xlat3.z = x_752;
  let x_754 : vec4<f32> = u_xlat7;
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_754) + x_756);
  let x_759 : f32 = x_13.x_LayerHasMask0;
  let x_761 : f32 = x_13.x_LayerHasMask1;
  let x_763 : f32 = x_13.x_LayerHasMask2;
  let x_765 : f32 = x_13.x_LayerHasMask3;
  let x_767 : vec4<f32> = u_xlat1;
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_759, x_761, x_763, x_765) * x_767) + x_769);
  let x_772 : vec4<f32> = u_xlat4;
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_772, x_773);
  let x_775 : vec4<f32> = u_xlat6;
  let x_778 : vec4<f32> = vs_TEXCOORD5;
  let x_780 : vec3<f32> = (vec3<f32>(x_775.y, x_775.y, x_775.y) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat6;
  let x_786 : vec4<f32> = vs_TEXCOORD4;
  let x_790 : vec4<f32> = u_xlat1;
  let x_792 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.x, x_783.x) * -(vec3<f32>(x_786.x, x_786.y, x_786.z))) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat6;
  let x_798 : vec4<f32> = vs_TEXCOORD3;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec3<f32> = ((vec3<f32>(x_795.z, x_795.z, x_795.z) * vec3<f32>(x_798.x, x_798.y, x_798.z)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat1;
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_806.x, x_806.y, x_806.z), vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_811);
  let x_813 : f32 = u_xlat43;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = (vec3<f32>(x_813, x_813, x_813) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  u_xlat1.w = 1.0f;
  let x_827 : vec4<f32> = x_825.unity_SHAr;
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_827, x_828);
  let x_832 : vec4<f32> = x_825.unity_SHAg;
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_832, x_833);
  let x_837 : vec4<f32> = x_825.unity_SHAb;
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_837, x_838);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_841.y, x_841.z, x_841.z, x_841.x) * vec4<f32>(x_843.x, x_843.y, x_843.z, x_843.z));
  let x_847 : vec4<f32> = x_825.unity_SHBr;
  let x_848 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_847, x_848);
  let x_852 : vec4<f32> = x_825.unity_SHBg;
  let x_853 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_852, x_853);
  let x_857 : vec4<f32> = x_825.unity_SHBb;
  let x_858 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_857, x_858);
  let x_862 : f32 = u_xlat1.y;
  let x_864 : f32 = u_xlat1.y;
  u_xlat43 = (x_862 * x_864);
  let x_867 : f32 = u_xlat1.x;
  let x_869 : f32 = u_xlat1.x;
  let x_871 : f32 = u_xlat43;
  u_xlat43 = ((x_867 * x_869) + -(x_871));
  let x_876 : vec4<f32> = x_825.unity_SHC;
  let x_878 : f32 = u_xlat43;
  let x_881 : vec4<f32> = u_xlat4;
  let x_883 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(x_878, x_878, x_878)) + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec3<f32> = u_xlat2;
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_886 + vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_890, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_894 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_894) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_900 : f32 = u_xlat28;
  let x_901 : f32 = u_xlat43;
  u_xlat44 = (x_900 + -(x_901));
  let x_904 : f32 = u_xlat43;
  let x_906 : vec4<f32> = u_xlat5;
  let x_908 : vec3<f32> = (vec3<f32>(x_904, x_904, x_904) * vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat5;
  let x_915 : vec3<f32> = (vec3<f32>(x_911.x, x_911.y, x_911.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_916 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec3<f32> = u_xlat0;
  let x_920 : vec4<f32> = u_xlat4;
  let x_925 : vec3<f32> = ((vec3<f32>(x_918.x, x_918.x, x_918.x) * vec3<f32>(x_920.x, x_920.y, x_920.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_926 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : f32 = u_xlat28;
  u_xlat0.x = (-(x_928) + 1.0f);
  let x_933 : f32 = u_xlat0.x;
  let x_935 : f32 = u_xlat0.x;
  u_xlat28 = (x_933 * x_935);
  let x_937 : f32 = u_xlat28;
  u_xlat28 = max(x_937, 0.0078125f);
  let x_940 : f32 = u_xlat28;
  let x_941 : f32 = u_xlat28;
  u_xlat43 = (x_940 * x_941);
  let x_943 : f32 = u_xlat44;
  u_xlat44 = (x_943 + 1.0f);
  let x_945 : f32 = u_xlat44;
  u_xlat44 = clamp(x_945, 0.0f, 1.0f);
  let x_948 : f32 = u_xlat28;
  u_xlat45 = ((x_948 * 4.0f) + 2.0f);
  let x_951 : f32 = u_xlat14;
  u_xlat14 = min(x_951, 1.0f);
  let x_956 : vec4<f32> = vs_TEXCOORD8;
  let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
  let x_960 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_957.x, x_957.y, x_960);
  let x_973 : vec3<f32> = txVec0;
  let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_973.xy, x_973.z);
  u_xlat46 = x_975;
  let x_985 : f32 = x_983.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_985) + 1.0f);
  let x_989 : f32 = u_xlat46;
  let x_991 : f32 = x_983.x_MainLightShadowParams.x;
  let x_994 : f32 = u_xlat5.x;
  u_xlat46 = ((x_989 * x_991) + x_994);
  let x_998 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_998);
  let x_1002 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (x_1002 >= 1.0f);
  let x_1004 : bool = u_xlatb19;
  let x_1005 : bool = u_xlatb5;
  u_xlatb5 = (x_1004 | x_1005);
  let x_1007 : bool = u_xlatb5;
  let x_1008 : f32 = u_xlat46;
  u_xlat46 = select(x_1008, 1.0f, x_1007);
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = x_110.x_WorldSpaceCameraPos;
  let x_1017 : vec3<f32> = (x_1012 + -(x_1015));
  let x_1018 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat5;
  let x_1022 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1028 : f32 = u_xlat5.x;
  let x_1030 : f32 = x_983.x_MainLightShadowParams.z;
  let x_1033 : f32 = x_983.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1028 * x_1030) + x_1033);
  let x_1037 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1037, 0.0f, 1.0f);
  let x_1041 : f32 = u_xlat46;
  u_xlat33 = (-(x_1041) + 1.0f);
  let x_1045 : f32 = u_xlat19.x;
  let x_1046 : f32 = u_xlat33;
  let x_1048 : f32 = u_xlat46;
  u_xlat46 = ((x_1045 * x_1046) + x_1048);
  let x_1051 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1051;
  let x_1054 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1054;
  let x_1057 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1057;
  let x_1059 : vec4<f32> = u_xlat6;
  let x_1062 : vec4<f32> = u_xlat1;
  u_xlat19.x = dot(-(vec3<f32>(x_1059.x, x_1059.y, x_1059.z)), vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
  let x_1067 : f32 = u_xlat19.x;
  let x_1069 : f32 = u_xlat19.x;
  u_xlat19.x = (x_1067 + x_1069);
  let x_1072 : vec4<f32> = u_xlat1;
  let x_1074 : vec3<f32> = u_xlat19;
  let x_1078 : vec4<f32> = u_xlat6;
  u_xlat19 = ((vec3<f32>(x_1072.x, x_1072.y, x_1072.z) * -(vec3<f32>(x_1074.x, x_1074.x, x_1074.x))) + -(vec3<f32>(x_1078.x, x_1078.y, x_1078.z)));
  let x_1083 : vec4<f32> = u_xlat1;
  let x_1085 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1083.x, x_1083.y, x_1083.z), vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1088, 0.0f, 1.0f);
  let x_1090 : f32 = u_xlat48;
  u_xlat48 = (-(x_1090) + 1.0f);
  let x_1093 : f32 = u_xlat48;
  let x_1094 : f32 = u_xlat48;
  u_xlat48 = (x_1093 * x_1094);
  let x_1096 : f32 = u_xlat48;
  let x_1097 : f32 = u_xlat48;
  u_xlat48 = (x_1096 * x_1097);
  let x_1100 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_1100) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1108 : f32 = u_xlat0.x;
  let x_1110 : f32 = u_xlat7.x;
  u_xlat0.x = (x_1108 * x_1110);
  let x_1114 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1114 * 6.0f);
  let x_1126 : vec3<f32> = u_xlat19;
  let x_1128 : f32 = u_xlat0.x;
  let x_1129 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1126, x_1128);
  u_xlat7 = x_1129;
  let x_1131 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1131 + -1.0f);
  let x_1135 : f32 = x_825.unity_SpecCube0_HDR.w;
  let x_1137 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1135 * x_1137) + 1.0f);
  let x_1142 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1142, 0.0f);
  let x_1146 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1146);
  let x_1150 : f32 = u_xlat0.x;
  let x_1152 : f32 = x_825.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1150 * x_1152);
  let x_1156 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1156);
  let x_1160 : f32 = u_xlat0.x;
  let x_1162 : f32 = x_825.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1160 * x_1162);
  let x_1165 : vec4<f32> = u_xlat7;
  let x_1167 : vec3<f32> = u_xlat0;
  u_xlat19 = (vec3<f32>(x_1165.x, x_1165.y, x_1165.z) * vec3<f32>(x_1167.x, x_1167.x, x_1167.x));
  let x_1170 : f32 = u_xlat28;
  let x_1172 : f32 = u_xlat28;
  let x_1176 : vec2<f32> = ((vec2<f32>(x_1170, x_1170) * vec2<f32>(x_1172, x_1172)) + vec2<f32>(-1.0f, 1.0f));
  let x_1177 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1176.x, x_1177.y, x_1176.y);
  let x_1180 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1180);
  let x_1182 : vec4<f32> = u_xlat4;
  let x_1185 : f32 = u_xlat44;
  let x_1187 : vec3<f32> = (-(vec3<f32>(x_1182.x, x_1182.y, x_1182.z)) + vec3<f32>(x_1185, x_1185, x_1185));
  let x_1188 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1190 : f32 = u_xlat48;
  let x_1192 : vec4<f32> = u_xlat7;
  let x_1195 : vec4<f32> = u_xlat4;
  let x_1197 : vec3<f32> = ((vec3<f32>(x_1190, x_1190, x_1190) * vec3<f32>(x_1192.x, x_1192.y, x_1192.z)) + vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
  let x_1198 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
  let x_1200 : f32 = u_xlat28;
  let x_1202 : vec4<f32> = u_xlat7;
  let x_1204 : vec3<f32> = (vec3<f32>(x_1200, x_1200, x_1200) * vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1205 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1207 : vec3<f32> = u_xlat19;
  let x_1208 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1207 * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec3<f32> = u_xlat2;
  let x_1212 : vec4<f32> = u_xlat3;
  let x_1215 : vec3<f32> = u_xlat19;
  u_xlat2 = ((x_1211 * vec3<f32>(x_1212.x, x_1212.y, x_1212.z)) + x_1215);
  let x_1217 : f32 = u_xlat46;
  let x_1219 : f32 = x_825.unity_LightData.z;
  u_xlat28 = (x_1217 * x_1219);
  let x_1221 : vec4<f32> = u_xlat1;
  let x_1224 : vec4<f32> = x_110.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1221.x, x_1221.y, x_1221.z), vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1227, 0.0f, 1.0f);
  let x_1229 : f32 = u_xlat28;
  let x_1230 : f32 = u_xlat44;
  u_xlat28 = (x_1229 * x_1230);
  let x_1232 : f32 = u_xlat28;
  let x_1235 : vec4<f32> = x_110.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_1232, x_1232, x_1232) * vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : vec4<f32> = u_xlat6;
  let x_1241 : vec4<f32> = x_110.x_MainLightPosition;
  let x_1243 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.y, x_1238.z) + vec3<f32>(x_1241.x, x_1241.y, x_1241.z));
  let x_1244 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
  let x_1246 : vec4<f32> = u_xlat7;
  let x_1248 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1246.x, x_1246.y, x_1246.z), vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
  let x_1251 : f32 = u_xlat28;
  u_xlat28 = max(x_1251, 1.17549435e-38f);
  let x_1254 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1254);
  let x_1256 : f32 = u_xlat28;
  let x_1258 : vec4<f32> = u_xlat7;
  let x_1260 : vec3<f32> = (vec3<f32>(x_1256, x_1256, x_1256) * vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  let x_1263 : vec4<f32> = u_xlat1;
  let x_1265 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1263.x, x_1263.y, x_1263.z), vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
  let x_1268 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1268, 0.0f, 1.0f);
  let x_1271 : vec4<f32> = x_110.x_MainLightPosition;
  let x_1273 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1271.x, x_1271.y, x_1271.z), vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
  let x_1276 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1276, 0.0f, 1.0f);
  let x_1278 : f32 = u_xlat28;
  let x_1279 : f32 = u_xlat28;
  u_xlat28 = (x_1278 * x_1279);
  let x_1281 : f32 = u_xlat28;
  let x_1283 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1281 * x_1283) + 1.00001001358032226562f);
  let x_1287 : f32 = u_xlat44;
  let x_1288 : f32 = u_xlat44;
  u_xlat44 = (x_1287 * x_1288);
  let x_1290 : f32 = u_xlat28;
  let x_1291 : f32 = u_xlat28;
  u_xlat28 = (x_1290 * x_1291);
  let x_1293 : f32 = u_xlat44;
  u_xlat44 = max(x_1293, 0.10000000149011611938f);
  let x_1296 : f32 = u_xlat28;
  let x_1297 : f32 = u_xlat44;
  u_xlat28 = (x_1296 * x_1297);
  let x_1299 : f32 = u_xlat45;
  let x_1300 : f32 = u_xlat28;
  u_xlat28 = (x_1299 * x_1300);
  let x_1302 : f32 = u_xlat43;
  let x_1303 : f32 = u_xlat28;
  u_xlat28 = (x_1302 / x_1303);
  let x_1305 : vec4<f32> = u_xlat4;
  let x_1307 : f32 = u_xlat28;
  let x_1310 : vec4<f32> = u_xlat3;
  let x_1312 : vec3<f32> = ((vec3<f32>(x_1305.x, x_1305.y, x_1305.z) * vec3<f32>(x_1307, x_1307, x_1307)) + vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
  let x_1313 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec3<f32> = u_xlat19;
  let x_1316 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1315 * vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1320 : f32 = x_110.x_AdditionalLightsCount.x;
  let x_1322 : f32 = x_825.unity_LightData.y;
  u_xlat28 = min(x_1320, x_1322);
  let x_1326 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1326));
  let x_1330 : f32 = u_xlat5.x;
  let x_1332 : f32 = x_983.x_AdditionalShadowFadeParams.x;
  let x_1335 : f32 = x_983.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1330 * x_1332) + x_1335);
  let x_1337 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1337, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1349 : u32 = u_xlatu_loop_1;
    let x_1350 : u32 = u_xlatu28;
    if ((x_1349 < x_1350)) {
    } else {
      break;
    }
    let x_1353 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1353 >> 2u);
    let x_1357 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1357 & 3u));
    let x_1360 : u32 = u_xlatu5;
    let x_1363 : vec4<f32> = x_825.unity_LightIndices[bitcast<i32>(x_1360)];
    let x_1373 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1378 : vec4<u32> = indexable[x_1373];
    u_xlat5.x = dot(x_1363, bitcast<vec4<f32>>(x_1378));
    let x_1384 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1384);
    let x_1386 : vec3<f32> = vs_TEXCOORD7;
    let x_1397 : i32 = u_xlati5;
    let x_1399 : vec4<f32> = x_1396.x_AdditionalLightsPosition[x_1397];
    let x_1402 : i32 = u_xlati5;
    let x_1404 : vec4<f32> = x_1396.x_AdditionalLightsPosition[x_1402];
    let x_1406 : vec3<f32> = ((-(x_1386) * vec3<f32>(x_1399.w, x_1399.w, x_1399.w)) + vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
    let x_1407 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
    let x_1409 : vec4<f32> = u_xlat8;
    let x_1411 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1409.x, x_1409.y, x_1409.z), vec3<f32>(x_1411.x, x_1411.y, x_1411.z));
    let x_1414 : f32 = u_xlat48;
    u_xlat48 = max(x_1414, 0.00006103515625f);
    let x_1417 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1417);
    let x_1419 : f32 = u_xlat49;
    let x_1421 : vec4<f32> = u_xlat8;
    let x_1423 : vec3<f32> = (vec3<f32>(x_1419, x_1419, x_1419) * vec3<f32>(x_1421.x, x_1421.y, x_1421.z));
    let x_1424 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
    let x_1427 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1427);
    let x_1429 : f32 = u_xlat48;
    let x_1430 : i32 = u_xlati5;
    let x_1432 : f32 = x_1396.x_AdditionalLightsAttenuation[x_1430].x;
    u_xlat48 = (x_1429 * x_1432);
    let x_1434 : f32 = u_xlat48;
    let x_1436 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1434) * x_1436) + 1.0f);
    let x_1439 : f32 = u_xlat48;
    u_xlat48 = max(x_1439, 0.0f);
    let x_1441 : f32 = u_xlat48;
    let x_1442 : f32 = u_xlat48;
    u_xlat48 = (x_1441 * x_1442);
    let x_1444 : f32 = u_xlat48;
    let x_1445 : f32 = u_xlat50;
    u_xlat48 = (x_1444 * x_1445);
    let x_1447 : i32 = u_xlati5;
    let x_1449 : vec4<f32> = x_1396.x_AdditionalLightsSpotDir[x_1447];
    let x_1451 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1449.x, x_1449.y, x_1449.z), vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
    let x_1454 : f32 = u_xlat50;
    let x_1455 : i32 = u_xlati5;
    let x_1457 : f32 = x_1396.x_AdditionalLightsAttenuation[x_1455].z;
    let x_1459 : i32 = u_xlati5;
    let x_1461 : f32 = x_1396.x_AdditionalLightsAttenuation[x_1459].w;
    u_xlat50 = ((x_1454 * x_1457) + x_1461);
    let x_1463 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1463, 0.0f, 1.0f);
    let x_1465 : f32 = u_xlat50;
    let x_1466 : f32 = u_xlat50;
    u_xlat50 = (x_1465 * x_1466);
    let x_1468 : f32 = u_xlat48;
    let x_1469 : f32 = u_xlat50;
    u_xlat48 = (x_1468 * x_1469);
    let x_1472 : i32 = u_xlati5;
    let x_1474 : f32 = x_983.x_AdditionalShadowParams[x_1472].w;
    u_xlati50 = i32(x_1474);
    let x_1477 : i32 = u_xlati50;
    u_xlatb51 = (x_1477 >= 0i);
    let x_1479 : bool = u_xlatb51;
    if (x_1479) {
      let x_1483 : i32 = u_xlati5;
      let x_1485 : f32 = x_983.x_AdditionalShadowParams[x_1483].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1485, x_1485, x_1485, x_1485))));
      let x_1489 : bool = u_xlatb51;
      if (x_1489) {
        let x_1494 : vec4<f32> = u_xlat9;
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1500 : vec4<bool> = (abs(vec4<f32>(x_1494.z, x_1494.z, x_1494.y, x_1494.z)) >= abs(vec4<f32>(x_1497.x, x_1497.y, x_1497.x, x_1497.x)));
        let x_1502 : vec3<bool> = vec3<bool>(x_1500.x, x_1500.y, x_1500.z);
        let x_1503 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
        let x_1506 : bool = u_xlatb10.y;
        let x_1508 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1506 & x_1508);
        let x_1510 : vec4<f32> = u_xlat9;
        let x_1513 : vec4<bool> = (-(vec4<f32>(x_1510.z, x_1510.y, x_1510.z, x_1510.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1514 : vec3<bool> = vec3<bool>(x_1513.x, x_1513.y, x_1513.w);
        let x_1515 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1514.x, x_1514.y, x_1515.z, x_1514.z);
        let x_1518 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1518);
        let x_1523 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1523);
        let x_1529 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1529);
        let x_1533 : bool = u_xlatb10.z;
        if (x_1533) {
          let x_1539 : f32 = u_xlat10.y;
          x_1535 = x_1539;
        } else {
          let x_1541 : f32 = u_xlat52;
          x_1535 = x_1541;
        }
        let x_1542 : f32 = x_1535;
        u_xlat24 = x_1542;
        let x_1544 : bool = u_xlatb51;
        if (x_1544) {
          let x_1549 : f32 = u_xlat10.x;
          x_1545 = x_1549;
        } else {
          let x_1551 : f32 = u_xlat24;
          x_1545 = x_1551;
        }
        let x_1552 : f32 = x_1545;
        u_xlat51 = x_1552;
        let x_1553 : i32 = u_xlati5;
        let x_1555 : f32 = x_983.x_AdditionalShadowParams[x_1553].w;
        u_xlat10.x = trunc(x_1555);
        let x_1558 : f32 = u_xlat51;
        let x_1560 : f32 = u_xlat10.x;
        u_xlat51 = (x_1558 + x_1560);
        let x_1562 : f32 = u_xlat51;
        u_xlati50 = i32(x_1562);
      }
      let x_1564 : i32 = u_xlati50;
      u_xlati50 = (x_1564 << bitcast<u32>(2i));
      let x_1566 : vec3<f32> = vs_TEXCOORD7;
      let x_1568 : i32 = u_xlati50;
      let x_1571 : i32 = u_xlati50;
      let x_1575 : vec4<f32> = x_983.x_AdditionalLightsWorldToShadow[((x_1568 + 1i) / 4i)][((x_1571 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1566.y, x_1566.y, x_1566.y, x_1566.y) * x_1575);
      let x_1577 : i32 = u_xlati50;
      let x_1579 : i32 = u_xlati50;
      let x_1582 : vec4<f32> = x_983.x_AdditionalLightsWorldToShadow[(x_1577 / 4i)][(x_1579 % 4i)];
      let x_1583 : vec3<f32> = vs_TEXCOORD7;
      let x_1586 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1582 * vec4<f32>(x_1583.x, x_1583.x, x_1583.x, x_1583.x)) + x_1586);
      let x_1588 : i32 = u_xlati50;
      let x_1591 : i32 = u_xlati50;
      let x_1595 : vec4<f32> = x_983.x_AdditionalLightsWorldToShadow[((x_1588 + 2i) / 4i)][((x_1591 + 2i) % 4i)];
      let x_1596 : vec3<f32> = vs_TEXCOORD7;
      let x_1599 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1595 * vec4<f32>(x_1596.z, x_1596.z, x_1596.z, x_1596.z)) + x_1599);
      let x_1601 : vec4<f32> = u_xlat10;
      let x_1602 : i32 = u_xlati50;
      let x_1605 : i32 = u_xlati50;
      let x_1609 : vec4<f32> = x_983.x_AdditionalLightsWorldToShadow[((x_1602 + 3i) / 4i)][((x_1605 + 3i) % 4i)];
      u_xlat10 = (x_1601 + x_1609);
      let x_1611 : vec4<f32> = u_xlat10;
      let x_1613 : vec4<f32> = u_xlat10;
      let x_1615 : vec3<f32> = (vec3<f32>(x_1611.x, x_1611.y, x_1611.z) / vec3<f32>(x_1613.w, x_1613.w, x_1613.w));
      let x_1616 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
      let x_1619 : vec4<f32> = u_xlat10;
      let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
      let x_1622 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
      let x_1630 : vec3<f32> = txVec1;
      let x_1632 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1630.xy, x_1630.z);
      u_xlat50 = x_1632;
      let x_1633 : i32 = u_xlati5;
      let x_1635 : f32 = x_983.x_AdditionalShadowParams[x_1633].x;
      u_xlat51 = (1.0f + -(x_1635));
      let x_1638 : f32 = u_xlat50;
      let x_1639 : i32 = u_xlati5;
      let x_1641 : f32 = x_983.x_AdditionalShadowParams[x_1639].x;
      let x_1643 : f32 = u_xlat51;
      u_xlat50 = ((x_1638 * x_1641) + x_1643);
      let x_1646 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1646);
      let x_1649 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1649 >= 1.0f);
      let x_1652 : bool = u_xlatb51;
      let x_1654 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1652 | x_1654);
      let x_1656 : bool = u_xlatb51;
      let x_1657 : f32 = u_xlat50;
      u_xlat50 = select(x_1657, 1.0f, x_1656);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1660 : f32 = u_xlat50;
    u_xlat51 = (-(x_1660) + 1.0f);
    let x_1663 : f32 = u_xlat44;
    let x_1664 : f32 = u_xlat51;
    let x_1666 : f32 = u_xlat50;
    u_xlat50 = ((x_1663 * x_1664) + x_1666);
    let x_1668 : f32 = u_xlat48;
    let x_1669 : f32 = u_xlat50;
    u_xlat48 = (x_1668 * x_1669);
    let x_1671 : vec4<f32> = u_xlat1;
    let x_1673 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1671.x, x_1671.y, x_1671.z), vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
    let x_1676 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1676, 0.0f, 1.0f);
    let x_1678 : f32 = u_xlat48;
    let x_1679 : f32 = u_xlat50;
    u_xlat48 = (x_1678 * x_1679);
    let x_1681 : f32 = u_xlat48;
    let x_1683 : i32 = u_xlati5;
    let x_1685 : vec4<f32> = x_1396.x_AdditionalLightsColor[x_1683];
    let x_1687 : vec3<f32> = (vec3<f32>(x_1681, x_1681, x_1681) * vec3<f32>(x_1685.x, x_1685.y, x_1685.z));
    let x_1688 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1688.w);
    let x_1690 : vec4<f32> = u_xlat8;
    let x_1692 : f32 = u_xlat49;
    let x_1695 : vec4<f32> = u_xlat6;
    let x_1697 : vec3<f32> = ((vec3<f32>(x_1690.x, x_1690.y, x_1690.z) * vec3<f32>(x_1692, x_1692, x_1692)) + vec3<f32>(x_1695.x, x_1695.y, x_1695.z));
    let x_1698 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
    let x_1700 : vec4<f32> = u_xlat8;
    let x_1702 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1700.x, x_1700.y, x_1700.z), vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
    let x_1707 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1707, 1.17549435e-38f);
    let x_1711 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1711);
    let x_1714 : vec4<f32> = u_xlat5;
    let x_1716 : vec4<f32> = u_xlat8;
    let x_1718 : vec3<f32> = (vec3<f32>(x_1714.x, x_1714.x, x_1714.x) * vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
    let x_1719 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1719.w);
    let x_1721 : vec4<f32> = u_xlat1;
    let x_1723 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1721.x, x_1721.y, x_1721.z), vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
    let x_1728 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1728, 0.0f, 1.0f);
    let x_1731 : vec4<f32> = u_xlat9;
    let x_1733 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1731.x, x_1731.y, x_1731.z), vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
    let x_1736 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1736, 0.0f, 1.0f);
    let x_1739 : f32 = u_xlat5.x;
    let x_1741 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1739 * x_1741);
    let x_1745 : f32 = u_xlat5.x;
    let x_1747 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_1745 * x_1747) + 1.00001001358032226562f);
    let x_1751 : f32 = u_xlat48;
    let x_1752 : f32 = u_xlat48;
    u_xlat48 = (x_1751 * x_1752);
    let x_1755 : f32 = u_xlat5.x;
    let x_1757 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1755 * x_1757);
    let x_1760 : f32 = u_xlat48;
    u_xlat48 = max(x_1760, 0.10000000149011611938f);
    let x_1763 : f32 = u_xlat5.x;
    let x_1764 : f32 = u_xlat48;
    u_xlat5.x = (x_1763 * x_1764);
    let x_1767 : f32 = u_xlat45;
    let x_1769 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1767 * x_1769);
    let x_1772 : f32 = u_xlat43;
    let x_1774 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1772 / x_1774);
    let x_1777 : vec4<f32> = u_xlat4;
    let x_1779 : vec4<f32> = u_xlat5;
    let x_1782 : vec4<f32> = u_xlat3;
    let x_1784 : vec3<f32> = ((vec3<f32>(x_1777.x, x_1777.y, x_1777.z) * vec3<f32>(x_1779.x, x_1779.x, x_1779.x)) + vec3<f32>(x_1782.x, x_1782.y, x_1782.z));
    let x_1785 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1784.x, x_1784.y, x_1784.z, x_1785.w);
    let x_1787 : vec4<f32> = u_xlat8;
    let x_1789 : vec4<f32> = u_xlat10;
    let x_1792 : vec4<f32> = u_xlat7;
    let x_1794 : vec3<f32> = ((vec3<f32>(x_1787.x, x_1787.y, x_1787.z) * vec3<f32>(x_1789.x, x_1789.y, x_1789.z)) + vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
    let x_1795 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);

    continuing {
      let x_1797 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1797 + bitcast<u32>(1i));
    }
  }
  let x_1799 : vec3<f32> = u_xlat2;
  let x_1800 : f32 = u_xlat14;
  let x_1803 : vec3<f32> = u_xlat19;
  u_xlat0 = ((x_1799 * vec3<f32>(x_1800, x_1800, x_1800)) + x_1803);
  let x_1805 : vec4<f32> = u_xlat7;
  let x_1807 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1805.x, x_1805.y, x_1805.z) + x_1807);
  let x_1811 : f32 = u_xlat42;
  let x_1813 : vec3<f32> = u_xlat0;
  let x_1814 : vec3<f32> = (vec3<f32>(x_1811, x_1811, x_1811) * x_1813);
  let x_1815 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
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


