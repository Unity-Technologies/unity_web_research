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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

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

@group(0) @binding(18) var sampler_Normal0 : sampler;

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

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1024 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlat47 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1176 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu48 : u32;

var<private> u_xlati49 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1467 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlati51 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlat38 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb24 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1052 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1608 : f32;
  var x_1619 : f32;
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
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_53 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_58 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_63 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_65 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.w, x_58.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_63.x, x_63.w, x_63.y));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_65.z);
  let x_72 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_76 : vec2<f32> = (vec2<f32>(x_72.z, x_72.w) + vec2<f32>(-1.0f, -1.0f));
  let x_77 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_83.x, x_83.y)) + vec2<f32>(0.5f, 0.5f));
  let x_88 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_95 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) * vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_108 : vec4<f32> = u_xlat4;
  let x_119 : f32 = x_113.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_119);
  u_xlat4 = x_120;
  let x_123 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_134 : vec4<f32> = vs_TEXCOORD1;
  let x_137 : f32 = x_113.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat5 = x_138;
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_113.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_144.z, x_144.w), x_147);
  u_xlat6 = x_148;
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : f32 = x_113.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat7 = x_159;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_113.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat8 = x_169;
  let x_173 : f32 = u_xlat5.w;
  u_xlat9.x = x_173;
  let x_176 : f32 = u_xlat6.w;
  u_xlat9.y = x_176;
  let x_180 : f32 = u_xlat7.w;
  u_xlat9.z = x_180;
  let x_184 : f32 = u_xlat8.w;
  u_xlat9.w = x_184;
  let x_187 : vec4<f32> = u_xlat9;
  let x_190 : f32 = x_13.x_Smoothness0;
  let x_193 : f32 = x_13.x_Smoothness1;
  let x_196 : f32 = x_13.x_Smoothness2;
  let x_199 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_187 * vec4<f32>(x_190, x_193, x_196, x_199));
  let x_208 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_208);
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_211) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_214 + -(x_215));
  let x_218 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_218 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_222 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_227 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_234 + -(x_235));
  let x_240 : f32 = u_xlat12.x;
  let x_243 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_240 * x_243);
  let x_247 : f32 = u_xlat12.y;
  let x_250 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_247 * x_250);
  let x_254 : f32 = u_xlat12.z;
  let x_257 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_254 * x_257);
  let x_261 : f32 = u_xlat12.w;
  let x_264 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_261 * x_264);
  let x_267 : vec4<f32> = u_xlat11;
  let x_268 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_267 + x_268);
  let x_270 : bool = u_xlatb43;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_281 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_281);
  let x_283 : bool = u_xlatb44;
  if (((select(0i, 1i, x_283) * -1i) != 0i)) {
    discard;
  }
  let x_292 : f32 = u_xlat43;
  u_xlat43 = (x_292 + 0.00006103515625f);
  let x_295 : vec4<f32> = u_xlat4;
  let x_296 : f32 = u_xlat43;
  u_xlat4 = (x_295 / vec4<f32>(x_296, x_296, x_296, x_296));
  let x_299 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_312 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = u_xlat12;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = u_xlat11;
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.z, x_332.z, x_332.z) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat7;
  let x_342 : vec4<f32> = u_xlat6;
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat4;
  let x_353 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.w, x_350.w, x_350.w) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat8;
  let x_360 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_373 : vec4<f32> = vs_TEXCOORD1;
  let x_376 : f32 = x_113.x_GlobalMipBias.x;
  let x_377 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_373.x, x_373.y), x_376);
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = u_xlat6.x;
  let x_384 : f32 = u_xlat6.z;
  u_xlat6.x = (x_382 * x_384);
  let x_387 : vec4<f32> = u_xlat6;
  let x_392 : vec2<f32> = ((vec2<f32>(x_387.x, x_387.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_395.x, x_395.y), vec2<f32>(x_397.x, x_397.y));
  let x_400 : f32 = u_xlat43;
  u_xlat43 = min(x_400, 1.0f);
  let x_402 : f32 = u_xlat43;
  u_xlat43 = (-(x_402) + 1.0f);
  let x_405 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_405);
  let x_407 : f32 = u_xlat43;
  u_xlat7.z = max(x_407, 0.0000000000000001f);
  let x_411 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_13.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_113.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat43;
  u_xlat43 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_453);
  let x_455 : f32 = u_xlat43;
  u_xlat8.z = max(x_455, 0.0000000000000001f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_13.x_NormalScale1;
  let x_463 : f32 = x_13.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_113.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat43;
  u_xlat43 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_522);
  let x_524 : f32 = u_xlat43;
  u_xlat8.z = max(x_524, 0.0000000000000001f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_13.x_NormalScale2;
  let x_533 : f32 = x_13.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_113.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat43;
  u_xlat43 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_585);
  let x_587 : f32 = u_xlat43;
  u_xlat8.z = max(x_587, 0.0000000000000001f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_13.x_NormalScale3;
  let x_596 : f32 = x_13.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00000999999974737875f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat43;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_13.x_Smoothness0;
  let x_677 : f32 = x_13.x_Smoothness1;
  let x_679 : f32 = x_13.x_Smoothness2;
  let x_681 : f32 = x_13.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_13.x_LayerHasMask0;
  let x_691 : f32 = x_13.x_LayerHasMask1;
  let x_694 : f32 = x_13.x_LayerHasMask2;
  let x_697 : f32 = x_13.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_13.x_Metallic0;
  let x_725 : f32 = x_13.x_Metallic1;
  let x_728 : f32 = x_13.x_Metallic2;
  let x_731 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_13.x_LayerHasMask0;
  let x_738 : f32 = x_13.x_LayerHasMask1;
  let x_740 : f32 = x_13.x_LayerHasMask2;
  let x_742 : f32 = x_13.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_13.x_Metallic0;
  let x_749 : f32 = x_13.x_Metallic1;
  let x_751 : f32 = x_13.x_Metallic2;
  let x_753 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_13.x_LayerHasMask0;
  let x_776 : f32 = x_13.x_LayerHasMask1;
  let x_778 : f32 = x_13.x_LayerHasMask2;
  let x_780 : f32 = x_13.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat43;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_839 : f32 = vs_TEXCOORD7.y;
  let x_841 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_839 * x_841);
  let x_844 : f32 = x_113.unity_MatrixV[0i].z;
  let x_846 : f32 = vs_TEXCOORD7.x;
  let x_848 : f32 = u_xlat43;
  u_xlat43 = ((x_844 * x_846) + x_848);
  let x_851 : f32 = x_113.unity_MatrixV[2i].z;
  let x_853 : f32 = vs_TEXCOORD7.z;
  let x_855 : f32 = u_xlat43;
  u_xlat43 = ((x_851 * x_853) + x_855);
  let x_857 : f32 = u_xlat43;
  let x_859 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_857 + x_859);
  let x_861 : f32 = u_xlat43;
  let x_864 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_861) + -(x_864));
  let x_867 : f32 = u_xlat43;
  u_xlat43 = max(x_867, 0.0f);
  let x_869 : f32 = u_xlat43;
  let x_871 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_869 * x_871);
  let x_878 : vec4<f32> = vs_TEXCOORD0;
  let x_881 : f32 = x_113.x_GlobalMipBias.x;
  let x_882 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_878.z, x_878.w), x_881);
  u_xlat2 = x_882;
  let x_887 : vec4<f32> = vs_TEXCOORD0;
  let x_890 : f32 = x_113.x_GlobalMipBias.x;
  let x_891 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_887.z, x_887.w), x_890);
  let x_892 : vec3<f32> = vec3<f32>(x_891.x, x_891.y, x_891.z);
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat2;
  let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat1;
  let x_904 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_902.x, x_902.y, x_902.z), vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_909 : f32 = u_xlat2.x;
  u_xlat2.x = (x_909 + 0.5f);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec4<f32> = u_xlat3;
  let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_921 : f32 = u_xlat2.w;
  u_xlat44 = max(x_921, 0.00009999999747378752f);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : f32 = u_xlat44;
  let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) / vec3<f32>(x_926, x_926, x_926));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_932 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_932) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_937 : f32 = u_xlat28;
  let x_938 : f32 = u_xlat44;
  u_xlat3.x = (x_937 + -(x_938));
  let x_943 : f32 = u_xlat44;
  let x_945 : vec4<f32> = u_xlat5;
  u_xlat17 = (vec3<f32>(x_943, x_943, x_943) * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat5;
  let x_952 : vec3<f32> = (vec3<f32>(x_948.x, x_948.y, x_948.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_953 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec3<f32> = u_xlat0;
  let x_957 : vec4<f32> = u_xlat4;
  let x_962 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.x, x_955.x) * vec3<f32>(x_957.x, x_957.y, x_957.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_963 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : f32 = u_xlat28;
  u_xlat0.x = (-(x_965) + 1.0f);
  let x_970 : f32 = u_xlat0.x;
  let x_972 : f32 = u_xlat0.x;
  u_xlat28 = (x_970 * x_972);
  let x_974 : f32 = u_xlat28;
  u_xlat28 = max(x_974, 0.0078125f);
  let x_977 : f32 = u_xlat28;
  let x_978 : f32 = u_xlat28;
  u_xlat44 = (x_977 * x_978);
  let x_981 : f32 = u_xlat3.x;
  u_xlat3.x = (x_981 + 1.0f);
  let x_985 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_985, 0.0f, 1.0f);
  let x_989 : f32 = u_xlat28;
  u_xlat46 = ((x_989 * 4.0f) + 2.0f);
  let x_992 : f32 = u_xlat14;
  u_xlat14 = min(x_992, 1.0f);
  let x_997 : vec4<f32> = vs_TEXCOORD8;
  let x_998 : vec2<f32> = vec2<f32>(x_997.x, x_997.y);
  let x_1000 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_998.x, x_998.y, x_1000);
  let x_1012 : vec3<f32> = txVec0;
  let x_1014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1012.xy, x_1012.z);
  u_xlat5.x = x_1014;
  let x_1026 : f32 = x_1024.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_1026) + 1.0f);
  let x_1031 : f32 = u_xlat5.x;
  let x_1033 : f32 = x_1024.x_MainLightShadowParams.x;
  let x_1036 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_1031 * x_1033) + x_1036);
  let x_1041 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_1041);
  let x_1045 : f32 = vs_TEXCOORD8.z;
  u_xlatb33 = (x_1045 >= 1.0f);
  let x_1047 : bool = u_xlatb33;
  let x_1048 : bool = u_xlatb19;
  u_xlatb19 = (x_1047 | x_1048);
  let x_1050 : bool = u_xlatb19;
  if (x_1050) {
    x_1052 = 1.0f;
  } else {
    let x_1057 : f32 = u_xlat5.x;
    x_1052 = x_1057;
  }
  let x_1058 : f32 = x_1052;
  u_xlat5.x = x_1058;
  let x_1060 : vec3<f32> = vs_TEXCOORD7;
  let x_1063 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1060 + -(x_1063));
  let x_1066 : vec3<f32> = u_xlat19;
  let x_1067 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_1066, x_1067);
  let x_1072 : f32 = u_xlat19.x;
  let x_1074 : f32 = x_1024.x_MainLightShadowParams.z;
  let x_1077 : f32 = x_1024.x_MainLightShadowParams.w;
  u_xlat33 = ((x_1072 * x_1074) + x_1077);
  let x_1079 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1079, 0.0f, 1.0f);
  let x_1083 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_1083) + 1.0f);
  let x_1086 : f32 = u_xlat33;
  let x_1087 : f32 = u_xlat47;
  let x_1090 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1086 * x_1087) + x_1090);
  let x_1094 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1094;
  let x_1097 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1097;
  let x_1100 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1100;
  let x_1102 : vec4<f32> = u_xlat6;
  let x_1105 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(-(vec3<f32>(x_1102.x, x_1102.y, x_1102.z)), vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : f32 = u_xlat33;
  let x_1109 : f32 = u_xlat33;
  u_xlat33 = (x_1108 + x_1109);
  let x_1111 : vec4<f32> = u_xlat1;
  let x_1113 : f32 = u_xlat33;
  let x_1117 : vec4<f32> = u_xlat6;
  let x_1120 : vec3<f32> = ((vec3<f32>(x_1111.x, x_1111.y, x_1111.z) * -(vec3<f32>(x_1113, x_1113, x_1113))) + -(vec3<f32>(x_1117.x, x_1117.y, x_1117.z)));
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec4<f32> = u_xlat1;
  let x_1125 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_1123.x, x_1123.y, x_1123.z), vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : f32 = u_xlat33;
  u_xlat33 = clamp(x_1128, 0.0f, 1.0f);
  let x_1130 : f32 = u_xlat33;
  u_xlat33 = (-(x_1130) + 1.0f);
  let x_1133 : f32 = u_xlat33;
  let x_1134 : f32 = u_xlat33;
  u_xlat33 = (x_1133 * x_1134);
  let x_1136 : f32 = u_xlat33;
  let x_1137 : f32 = u_xlat33;
  u_xlat33 = (x_1136 * x_1137);
  let x_1140 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1140) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1147 : f32 = u_xlat0.x;
  let x_1148 : f32 = u_xlat47;
  u_xlat0.x = (x_1147 * x_1148);
  let x_1152 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1152 * 6.0f);
  let x_1164 : vec4<f32> = u_xlat7;
  let x_1167 : f32 = u_xlat0.x;
  let x_1168 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1164.x, x_1164.y, x_1164.z), x_1167);
  u_xlat7 = x_1168;
  let x_1170 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1170 + -1.0f);
  let x_1178 : f32 = x_1176.unity_SpecCube0_HDR.w;
  let x_1180 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1178 * x_1180) + 1.0f);
  let x_1185 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1185, 0.0f);
  let x_1189 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1189);
  let x_1193 : f32 = u_xlat0.x;
  let x_1195 : f32 = x_1176.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1193 * x_1195);
  let x_1199 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1199);
  let x_1203 : f32 = u_xlat0.x;
  let x_1205 : f32 = x_1176.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1203 * x_1205);
  let x_1208 : vec4<f32> = u_xlat7;
  let x_1210 : vec3<f32> = u_xlat0;
  let x_1212 : vec3<f32> = (vec3<f32>(x_1208.x, x_1208.y, x_1208.z) * vec3<f32>(x_1210.x, x_1210.x, x_1210.x));
  let x_1213 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1215 : f32 = u_xlat28;
  let x_1217 : f32 = u_xlat28;
  let x_1221 : vec2<f32> = ((vec2<f32>(x_1215, x_1215) * vec2<f32>(x_1217, x_1217)) + vec2<f32>(-1.0f, 1.0f));
  let x_1222 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1221.x, x_1222.y, x_1221.y);
  let x_1225 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1225);
  let x_1227 : vec4<f32> = u_xlat4;
  let x_1230 : vec4<f32> = u_xlat3;
  let x_1232 : vec3<f32> = (-(vec3<f32>(x_1227.x, x_1227.y, x_1227.z)) + vec3<f32>(x_1230.x, x_1230.x, x_1230.x));
  let x_1233 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1235 : f32 = u_xlat33;
  let x_1237 : vec4<f32> = u_xlat8;
  let x_1240 : vec4<f32> = u_xlat4;
  let x_1242 : vec3<f32> = ((vec3<f32>(x_1235, x_1235, x_1235) * vec3<f32>(x_1237.x, x_1237.y, x_1237.z)) + vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1245 : f32 = u_xlat28;
  let x_1247 : vec4<f32> = u_xlat8;
  let x_1249 : vec3<f32> = (vec3<f32>(x_1245, x_1245, x_1245) * vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec4<f32> = u_xlat7;
  let x_1254 : vec4<f32> = u_xlat8;
  let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1257 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec4<f32> = u_xlat2;
  let x_1261 : vec3<f32> = u_xlat17;
  let x_1263 : vec4<f32> = u_xlat7;
  let x_1265 : vec3<f32> = ((vec3<f32>(x_1259.x, x_1259.y, x_1259.z) * x_1261) + vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
  let x_1266 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  let x_1269 : f32 = u_xlat5.x;
  let x_1271 : f32 = x_1176.unity_LightData.z;
  u_xlat28 = (x_1269 * x_1271);
  let x_1273 : vec4<f32> = u_xlat1;
  let x_1276 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1273.x, x_1273.y, x_1273.z), vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1281 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1281, 0.0f, 1.0f);
  let x_1284 : f32 = u_xlat28;
  let x_1286 : f32 = u_xlat3.x;
  u_xlat28 = (x_1284 * x_1286);
  let x_1288 : f32 = u_xlat28;
  let x_1291 : vec4<f32> = x_113.x_MainLightColor;
  let x_1293 : vec3<f32> = (vec3<f32>(x_1288, x_1288, x_1288) * vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1294 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1293.x, x_1294.y, x_1293.y, x_1293.z);
  let x_1296 : vec4<f32> = u_xlat6;
  let x_1299 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1301 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.y, x_1296.z) + vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
  let x_1302 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
  let x_1304 : vec4<f32> = u_xlat7;
  let x_1306 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1304.x, x_1304.y, x_1304.z), vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
  let x_1309 : f32 = u_xlat28;
  u_xlat28 = max(x_1309, 1.17549435e-38f);
  let x_1312 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1312);
  let x_1314 : f32 = u_xlat28;
  let x_1316 : vec4<f32> = u_xlat7;
  let x_1318 : vec3<f32> = (vec3<f32>(x_1314, x_1314, x_1314) * vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1319 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
  let x_1321 : vec4<f32> = u_xlat1;
  let x_1323 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1321.x, x_1321.y, x_1321.z), vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1326, 0.0f, 1.0f);
  let x_1329 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1331 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1329.x, x_1329.y, x_1329.z), vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1336 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1336, 0.0f, 1.0f);
  let x_1339 : f32 = u_xlat28;
  let x_1340 : f32 = u_xlat28;
  u_xlat28 = (x_1339 * x_1340);
  let x_1342 : f32 = u_xlat28;
  let x_1344 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1342 * x_1344) + 1.00001001358032226562f);
  let x_1349 : f32 = u_xlat3.x;
  let x_1351 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1349 * x_1351);
  let x_1354 : f32 = u_xlat28;
  let x_1355 : f32 = u_xlat28;
  u_xlat28 = (x_1354 * x_1355);
  let x_1358 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1358, 0.10000000149011611938f);
  let x_1362 : f32 = u_xlat28;
  let x_1364 : f32 = u_xlat3.x;
  u_xlat28 = (x_1362 * x_1364);
  let x_1366 : f32 = u_xlat46;
  let x_1367 : f32 = u_xlat28;
  u_xlat28 = (x_1366 * x_1367);
  let x_1369 : f32 = u_xlat44;
  let x_1370 : f32 = u_xlat28;
  u_xlat28 = (x_1369 / x_1370);
  let x_1372 : vec4<f32> = u_xlat4;
  let x_1374 : f32 = u_xlat28;
  let x_1377 : vec3<f32> = u_xlat17;
  let x_1378 : vec3<f32> = ((vec3<f32>(x_1372.x, x_1372.y, x_1372.z) * vec3<f32>(x_1374, x_1374, x_1374)) + x_1377);
  let x_1379 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
  let x_1381 : vec4<f32> = u_xlat5;
  let x_1383 : vec4<f32> = u_xlat7;
  let x_1385 : vec3<f32> = (vec3<f32>(x_1381.x, x_1381.z, x_1381.w) * vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
  let x_1386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1385.x, x_1386.y, x_1385.y, x_1385.z);
  let x_1389 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1391 : f32 = x_1176.unity_LightData.y;
  u_xlat28 = min(x_1389, x_1391);
  let x_1395 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1395));
  let x_1399 : f32 = u_xlat19.x;
  let x_1401 : f32 = x_1024.x_AdditionalShadowFadeParams.x;
  let x_1404 : f32 = x_1024.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1399 * x_1401) + x_1404);
  let x_1408 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1408, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1421 : u32 = u_xlatu_loop_1;
    let x_1422 : u32 = u_xlatu28;
    if ((x_1421 < x_1422)) {
    } else {
      break;
    }
    let x_1425 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1425 >> 2u);
    let x_1429 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1429 & 3u));
    let x_1433 : u32 = u_xlatu48;
    let x_1436 : vec4<f32> = x_1176.unity_LightIndices[bitcast<i32>(x_1433)];
    let x_1446 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1451 : vec4<u32> = indexable[x_1446];
    u_xlat48 = dot(x_1436, bitcast<vec4<f32>>(x_1451));
    let x_1455 : f32 = u_xlat48;
    u_xlati48 = i32(x_1455);
    let x_1457 : vec3<f32> = vs_TEXCOORD7;
    let x_1468 : i32 = u_xlati48;
    let x_1470 : vec4<f32> = x_1467.x_AdditionalLightsPosition[x_1468];
    let x_1473 : i32 = u_xlati48;
    let x_1475 : vec4<f32> = x_1467.x_AdditionalLightsPosition[x_1473];
    let x_1477 : vec3<f32> = ((-(x_1457) * vec3<f32>(x_1470.w, x_1470.w, x_1470.w)) + vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
    let x_1478 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1478.w);
    let x_1481 : vec4<f32> = u_xlat8;
    let x_1483 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1481.x, x_1481.y, x_1481.z), vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
    let x_1486 : f32 = u_xlat49;
    u_xlat49 = max(x_1486, 0.00006103515625f);
    let x_1489 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1489);
    let x_1491 : f32 = u_xlat50;
    let x_1493 : vec4<f32> = u_xlat8;
    let x_1495 : vec3<f32> = (vec3<f32>(x_1491, x_1491, x_1491) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
    let x_1496 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
    let x_1499 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1499);
    let x_1501 : f32 = u_xlat49;
    let x_1502 : i32 = u_xlati48;
    let x_1504 : f32 = x_1467.x_AdditionalLightsAttenuation[x_1502].x;
    u_xlat49 = (x_1501 * x_1504);
    let x_1506 : f32 = u_xlat49;
    let x_1508 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1506) * x_1508) + 1.0f);
    let x_1511 : f32 = u_xlat49;
    u_xlat49 = max(x_1511, 0.0f);
    let x_1513 : f32 = u_xlat49;
    let x_1514 : f32 = u_xlat49;
    u_xlat49 = (x_1513 * x_1514);
    let x_1516 : f32 = u_xlat49;
    let x_1517 : f32 = u_xlat51;
    u_xlat49 = (x_1516 * x_1517);
    let x_1519 : i32 = u_xlati48;
    let x_1521 : vec4<f32> = x_1467.x_AdditionalLightsSpotDir[x_1519];
    let x_1523 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1521.x, x_1521.y, x_1521.z), vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
    let x_1526 : f32 = u_xlat51;
    let x_1527 : i32 = u_xlati48;
    let x_1529 : f32 = x_1467.x_AdditionalLightsAttenuation[x_1527].z;
    let x_1531 : i32 = u_xlati48;
    let x_1533 : f32 = x_1467.x_AdditionalLightsAttenuation[x_1531].w;
    u_xlat51 = ((x_1526 * x_1529) + x_1533);
    let x_1535 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1535, 0.0f, 1.0f);
    let x_1537 : f32 = u_xlat51;
    let x_1538 : f32 = u_xlat51;
    u_xlat51 = (x_1537 * x_1538);
    let x_1540 : f32 = u_xlat49;
    let x_1541 : f32 = u_xlat51;
    u_xlat49 = (x_1540 * x_1541);
    let x_1544 : i32 = u_xlati48;
    let x_1546 : f32 = x_1024.x_AdditionalShadowParams[x_1544].w;
    u_xlati51 = i32(x_1546);
    let x_1551 : i32 = u_xlati51;
    u_xlatb10.x = (x_1551 >= 0i);
    let x_1555 : bool = u_xlatb10.x;
    if (x_1555) {
      let x_1559 : i32 = u_xlati48;
      let x_1561 : f32 = x_1024.x_AdditionalShadowParams[x_1559].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1561, x_1561, x_1561, x_1561))));
      let x_1567 : bool = u_xlatb10.x;
      if (x_1567) {
        let x_1570 : vec4<f32> = u_xlat9;
        let x_1573 : vec4<f32> = u_xlat9;
        let x_1576 : vec4<bool> = (abs(vec4<f32>(x_1570.z, x_1570.z, x_1570.y, x_1570.z)) >= abs(vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.x)));
        u_xlatb10 = vec3<bool>(x_1576.x, x_1576.y, x_1576.z);
        let x_1579 : bool = u_xlatb10.y;
        let x_1581 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1579 & x_1581);
        let x_1585 : vec4<f32> = u_xlat9;
        let x_1588 : vec4<bool> = (-(vec4<f32>(x_1585.z, x_1585.y, x_1585.x, x_1585.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1588.x, x_1588.y, x_1588.z);
        let x_1592 : bool = u_xlatb11.x;
        u_xlat24.x = select(4.0f, 5.0f, x_1592);
        let x_1597 : bool = u_xlatb11.y;
        u_xlat24.z = select(2.0f, 3.0f, x_1597);
        let x_1602 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_1602);
        let x_1607 : bool = u_xlatb10.z;
        if (x_1607) {
          let x_1612 : f32 = u_xlat24.z;
          x_1608 = x_1612;
        } else {
          let x_1615 : f32 = u_xlat11.x;
          x_1608 = x_1615;
        }
        let x_1616 : f32 = x_1608;
        u_xlat38 = x_1616;
        let x_1618 : bool = u_xlatb10.x;
        if (x_1618) {
          let x_1623 : f32 = u_xlat24.x;
          x_1619 = x_1623;
        } else {
          let x_1625 : f32 = u_xlat38;
          x_1619 = x_1625;
        }
        let x_1626 : f32 = x_1619;
        u_xlat10.x = x_1626;
        let x_1628 : i32 = u_xlati48;
        let x_1630 : f32 = x_1024.x_AdditionalShadowParams[x_1628].w;
        u_xlat24.x = trunc(x_1630);
        let x_1634 : f32 = u_xlat10.x;
        let x_1636 : f32 = u_xlat24.x;
        u_xlat10.x = (x_1634 + x_1636);
        let x_1640 : f32 = u_xlat10.x;
        u_xlati51 = i32(x_1640);
      }
      let x_1642 : i32 = u_xlati51;
      u_xlati51 = (x_1642 << bitcast<u32>(2i));
      let x_1644 : vec3<f32> = vs_TEXCOORD7;
      let x_1646 : i32 = u_xlati51;
      let x_1649 : i32 = u_xlati51;
      let x_1653 : vec4<f32> = x_1024.x_AdditionalLightsWorldToShadow[((x_1646 + 1i) / 4i)][((x_1649 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1644.y, x_1644.y, x_1644.y, x_1644.y) * x_1653);
      let x_1655 : i32 = u_xlati51;
      let x_1657 : i32 = u_xlati51;
      let x_1660 : vec4<f32> = x_1024.x_AdditionalLightsWorldToShadow[(x_1655 / 4i)][(x_1657 % 4i)];
      let x_1661 : vec3<f32> = vs_TEXCOORD7;
      let x_1664 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1660 * vec4<f32>(x_1661.x, x_1661.x, x_1661.x, x_1661.x)) + x_1664);
      let x_1666 : i32 = u_xlati51;
      let x_1669 : i32 = u_xlati51;
      let x_1673 : vec4<f32> = x_1024.x_AdditionalLightsWorldToShadow[((x_1666 + 2i) / 4i)][((x_1669 + 2i) % 4i)];
      let x_1674 : vec3<f32> = vs_TEXCOORD7;
      let x_1677 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1673 * vec4<f32>(x_1674.z, x_1674.z, x_1674.z, x_1674.z)) + x_1677);
      let x_1679 : vec4<f32> = u_xlat10;
      let x_1680 : i32 = u_xlati51;
      let x_1683 : i32 = u_xlati51;
      let x_1687 : vec4<f32> = x_1024.x_AdditionalLightsWorldToShadow[((x_1680 + 3i) / 4i)][((x_1683 + 3i) % 4i)];
      u_xlat10 = (x_1679 + x_1687);
      let x_1689 : vec4<f32> = u_xlat10;
      let x_1691 : vec4<f32> = u_xlat10;
      let x_1693 : vec3<f32> = (vec3<f32>(x_1689.x, x_1689.y, x_1689.z) / vec3<f32>(x_1691.w, x_1691.w, x_1691.w));
      let x_1694 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1694.w);
      let x_1697 : vec4<f32> = u_xlat10;
      let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
      let x_1700 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
      let x_1708 : vec3<f32> = txVec1;
      let x_1710 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1708.xy, x_1708.z);
      u_xlat51 = x_1710;
      let x_1711 : i32 = u_xlati48;
      let x_1713 : f32 = x_1024.x_AdditionalShadowParams[x_1711].x;
      u_xlat10.x = (1.0f + -(x_1713));
      let x_1717 : f32 = u_xlat51;
      let x_1718 : i32 = u_xlati48;
      let x_1720 : f32 = x_1024.x_AdditionalShadowParams[x_1718].x;
      let x_1723 : f32 = u_xlat10.x;
      u_xlat51 = ((x_1717 * x_1720) + x_1723);
      let x_1726 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1726);
      let x_1731 : f32 = u_xlat10.z;
      u_xlatb24 = (x_1731 >= 1.0f);
      let x_1733 : bool = u_xlatb24;
      let x_1735 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1733 | x_1735);
      let x_1739 : bool = u_xlatb10.x;
      let x_1740 : f32 = u_xlat51;
      u_xlat51 = select(x_1740, 1.0f, x_1739);
    } else {
      u_xlat51 = 1.0f;
    }
    let x_1743 : f32 = u_xlat51;
    u_xlat10.x = (-(x_1743) + 1.0f);
    let x_1748 : f32 = u_xlat3.x;
    let x_1750 : f32 = u_xlat10.x;
    let x_1752 : f32 = u_xlat51;
    u_xlat51 = ((x_1748 * x_1750) + x_1752);
    let x_1754 : f32 = u_xlat49;
    let x_1755 : f32 = u_xlat51;
    u_xlat49 = (x_1754 * x_1755);
    let x_1757 : vec4<f32> = u_xlat1;
    let x_1759 : vec4<f32> = u_xlat9;
    u_xlat51 = dot(vec3<f32>(x_1757.x, x_1757.y, x_1757.z), vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
    let x_1762 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1762, 0.0f, 1.0f);
    let x_1764 : f32 = u_xlat49;
    let x_1765 : f32 = u_xlat51;
    u_xlat49 = (x_1764 * x_1765);
    let x_1767 : f32 = u_xlat49;
    let x_1769 : i32 = u_xlati48;
    let x_1771 : vec4<f32> = x_1467.x_AdditionalLightsColor[x_1769];
    let x_1773 : vec3<f32> = (vec3<f32>(x_1767, x_1767, x_1767) * vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
    let x_1774 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
    let x_1776 : vec4<f32> = u_xlat8;
    let x_1778 : f32 = u_xlat50;
    let x_1781 : vec4<f32> = u_xlat6;
    let x_1783 : vec3<f32> = ((vec3<f32>(x_1776.x, x_1776.y, x_1776.z) * vec3<f32>(x_1778, x_1778, x_1778)) + vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
    let x_1784 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
    let x_1786 : vec4<f32> = u_xlat8;
    let x_1788 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1786.x, x_1786.y, x_1786.z), vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
    let x_1791 : f32 = u_xlat48;
    u_xlat48 = max(x_1791, 1.17549435e-38f);
    let x_1793 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1793);
    let x_1795 : f32 = u_xlat48;
    let x_1797 : vec4<f32> = u_xlat8;
    let x_1799 : vec3<f32> = (vec3<f32>(x_1795, x_1795, x_1795) * vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
    let x_1800 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
    let x_1802 : vec4<f32> = u_xlat1;
    let x_1804 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1802.x, x_1802.y, x_1802.z), vec3<f32>(x_1804.x, x_1804.y, x_1804.z));
    let x_1807 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1807, 0.0f, 1.0f);
    let x_1809 : vec4<f32> = u_xlat9;
    let x_1811 : vec4<f32> = u_xlat8;
    u_xlat49 = dot(vec3<f32>(x_1809.x, x_1809.y, x_1809.z), vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
    let x_1814 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1814, 0.0f, 1.0f);
    let x_1816 : f32 = u_xlat48;
    let x_1817 : f32 = u_xlat48;
    u_xlat48 = (x_1816 * x_1817);
    let x_1819 : f32 = u_xlat48;
    let x_1821 : f32 = u_xlat0.x;
    u_xlat48 = ((x_1819 * x_1821) + 1.00001001358032226562f);
    let x_1824 : f32 = u_xlat49;
    let x_1825 : f32 = u_xlat49;
    u_xlat49 = (x_1824 * x_1825);
    let x_1827 : f32 = u_xlat48;
    let x_1828 : f32 = u_xlat48;
    u_xlat48 = (x_1827 * x_1828);
    let x_1830 : f32 = u_xlat49;
    u_xlat49 = max(x_1830, 0.10000000149011611938f);
    let x_1832 : f32 = u_xlat48;
    let x_1833 : f32 = u_xlat49;
    u_xlat48 = (x_1832 * x_1833);
    let x_1835 : f32 = u_xlat46;
    let x_1836 : f32 = u_xlat48;
    u_xlat48 = (x_1835 * x_1836);
    let x_1838 : f32 = u_xlat44;
    let x_1839 : f32 = u_xlat48;
    u_xlat48 = (x_1838 / x_1839);
    let x_1841 : vec4<f32> = u_xlat4;
    let x_1843 : f32 = u_xlat48;
    let x_1846 : vec3<f32> = u_xlat17;
    let x_1847 : vec3<f32> = ((vec3<f32>(x_1841.x, x_1841.y, x_1841.z) * vec3<f32>(x_1843, x_1843, x_1843)) + x_1846);
    let x_1848 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
    let x_1850 : vec4<f32> = u_xlat8;
    let x_1852 : vec4<f32> = u_xlat10;
    let x_1855 : vec4<f32> = u_xlat7;
    let x_1857 : vec3<f32> = ((vec3<f32>(x_1850.x, x_1850.y, x_1850.z) * vec3<f32>(x_1852.x, x_1852.y, x_1852.z)) + vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
    let x_1858 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);

    continuing {
      let x_1860 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1860 + bitcast<u32>(1i));
    }
  }
  let x_1862 : vec4<f32> = u_xlat2;
  let x_1864 : f32 = u_xlat14;
  let x_1867 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1862.x, x_1862.y, x_1862.z) * vec3<f32>(x_1864, x_1864, x_1864)) + vec3<f32>(x_1867.x, x_1867.z, x_1867.w));
  let x_1870 : vec4<f32> = u_xlat7;
  let x_1872 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1870.x, x_1870.y, x_1870.z) + x_1872);
  let x_1874 : f32 = u_xlat42;
  let x_1876 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1874, x_1874, x_1874) * x_1876);
  let x_1878 : f32 = u_xlat43;
  let x_1879 : f32 = u_xlat43;
  u_xlat42 = (x_1878 * -(x_1879));
  let x_1882 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1882);
  let x_1886 : vec3<f32> = u_xlat0;
  let x_1887 : f32 = u_xlat42;
  let x_1889 : vec3<f32> = (x_1886 * vec3<f32>(x_1887, x_1887, x_1887));
  let x_1890 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
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


