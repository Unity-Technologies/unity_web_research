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
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
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

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

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

@group(1) @binding(2) var<uniform> x_860 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1018 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1431 : AdditionalLights;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(12) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1570 : f32;
  var x_1580 : f32;
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
  u_xlat2 = ((vec3<f32>(x_89.x, x_89.y, x_89.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_94.x, x_94.y, x_94.w));
  let x_100 : vec4<f32> = x_58.x_MaskMapRemapScale3;
  let x_105 : vec4<f32> = x_58.x_MaskMapRemapOffset3;
  let x_107 : vec3<f32> = ((vec3<f32>(x_100.x, x_100.w, x_100.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_105.x, x_105.w, x_105.y));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_107.z);
  let x_113 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_117 : vec2<f32> = (vec2<f32>(x_113.z, x_113.w) + vec2<f32>(-1.0f, -1.0f));
  let x_118 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = vs_TEXCOORD0;
  let x_122 : vec4<f32> = u_xlat4;
  let x_126 : vec2<f32> = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.y)) + vec2<f32>(0.5f, 0.5f));
  let x_127 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_126.x, x_126.y, x_127.z, x_127.w);
  let x_129 : vec4<f32> = u_xlat4;
  let x_132 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_134 : vec2<f32> = (vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_132.x, x_132.y));
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
  let x_142 : vec4<f32> = u_xlat4;
  let x_145 : f32 = x_28.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_142.x, x_142.y), x_145);
  u_xlat4 = x_146;
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_148, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_159 : vec4<f32> = vs_TEXCOORD1;
  let x_162 : f32 = x_28.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_159.x, x_159.y), x_162);
  u_xlat5 = x_163;
  let x_169 : vec4<f32> = vs_TEXCOORD1;
  let x_172 : f32 = x_28.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_169.z, x_169.w), x_172);
  u_xlat6 = x_173;
  let x_180 : vec4<f32> = vs_TEXCOORD2;
  let x_183 : f32 = x_28.x_GlobalMipBias.x;
  let x_184 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_180.x, x_180.y), x_183);
  u_xlat7 = x_184;
  let x_190 : vec4<f32> = vs_TEXCOORD2;
  let x_193 : f32 = x_28.x_GlobalMipBias.x;
  let x_194 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_190.z, x_190.w), x_193);
  u_xlat8 = x_194;
  let x_198 : f32 = u_xlat5.w;
  u_xlat9.x = x_198;
  let x_201 : f32 = u_xlat6.w;
  u_xlat9.y = x_201;
  let x_205 : f32 = u_xlat7.w;
  u_xlat9.z = x_205;
  let x_209 : f32 = u_xlat8.w;
  u_xlat9.w = x_209;
  let x_212 : vec4<f32> = u_xlat9;
  let x_215 : f32 = x_58.x_Smoothness0;
  let x_218 : f32 = x_58.x_Smoothness1;
  let x_221 : f32 = x_58.x_Smoothness2;
  let x_224 : f32 = x_58.x_Smoothness3;
  u_xlat10 = (x_212 * vec4<f32>(x_215, x_218, x_221, x_224));
  let x_231 : f32 = x_58.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_231);
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_234) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat9;
  let x_238 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_237 + -(x_238));
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_241 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_245, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_249 : vec4<f32> = u_xlat4;
  let x_253 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_249 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_253);
  let x_256 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_256 + -(x_257));
  let x_262 : f32 = u_xlat12.x;
  let x_265 : f32 = x_58.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_262 * x_265);
  let x_269 : f32 = u_xlat12.y;
  let x_272 : f32 = x_58.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_269 * x_272);
  let x_276 : f32 = u_xlat12.z;
  let x_279 : f32 = x_58.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_276 * x_279);
  let x_283 : f32 = u_xlat12.w;
  let x_286 : f32 = x_58.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_283 * x_286);
  let x_289 : vec4<f32> = u_xlat11;
  let x_290 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_289 + x_290);
  let x_292 : bool = u_xlatb43;
  let x_293 : vec4<f32> = u_xlat11;
  let x_294 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_294, x_293, vec4<bool>(x_292, x_292, x_292, x_292));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_299, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_303 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_303);
  let x_305 : bool = u_xlatb44;
  if (((select(0i, 1i, x_305) * -1i) != 0i)) {
    discard;
  }
  let x_312 : f32 = u_xlat43;
  u_xlat43 = (x_312 + 0.00006103515625f);
  let x_315 : vec4<f32> = u_xlat4;
  let x_316 : f32 = u_xlat43;
  u_xlat4 = (x_315 / vec4<f32>(x_316, x_316, x_316, x_316));
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_58.x_DiffuseRemapScale0;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.x, x_319.x, x_319.x) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat4;
  let x_330 : vec4<f32> = x_58.x_DiffuseRemapScale1;
  let x_332 : vec3<f32> = (vec3<f32>(x_327.y, x_327.y, x_327.y) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat6;
  let x_337 : vec4<f32> = u_xlat12;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec4<f32> = u_xlat11;
  let x_347 : vec4<f32> = u_xlat6;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.y, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat4;
  let x_355 : vec4<f32> = x_58.x_DiffuseRemapScale2;
  let x_357 : vec3<f32> = (vec3<f32>(x_352.z, x_352.z, x_352.z) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat7;
  let x_362 : vec4<f32> = u_xlat6;
  let x_365 : vec4<f32> = u_xlat5;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_362.x, x_362.y, x_362.z)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat4;
  let x_373 : vec4<f32> = x_58.x_DiffuseRemapScale3;
  let x_375 : vec3<f32> = (vec3<f32>(x_370.w, x_370.w, x_370.w) * vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec4<f32> = u_xlat8;
  let x_380 : vec4<f32> = u_xlat6;
  let x_383 : vec4<f32> = u_xlat5;
  let x_385 : vec3<f32> = ((vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_380.x, x_380.y, x_380.z)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_393 : vec4<f32> = vs_TEXCOORD1;
  let x_396 : f32 = x_28.x_GlobalMipBias.x;
  let x_397 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_393.x, x_393.y), x_396);
  let x_398 : vec3<f32> = vec3<f32>(x_397.x, x_397.y, x_397.w);
  let x_399 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_402 : f32 = u_xlat6.x;
  let x_404 : f32 = u_xlat6.z;
  u_xlat6.x = (x_402 * x_404);
  let x_407 : vec4<f32> = u_xlat6;
  let x_412 : vec2<f32> = ((vec2<f32>(x_407.x, x_407.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  let x_417 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_415.x, x_415.y), vec2<f32>(x_417.x, x_417.y));
  let x_420 : f32 = u_xlat43;
  u_xlat43 = min(x_420, 1.0f);
  let x_422 : f32 = u_xlat43;
  u_xlat43 = (-(x_422) + 1.0f);
  let x_425 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_425);
  let x_427 : f32 = u_xlat43;
  u_xlat7.z = max(x_427, 0.0000000000000001f);
  let x_431 : vec4<f32> = u_xlat6;
  let x_434 : f32 = x_58.x_NormalScale0;
  let x_436 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_434, x_434));
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
  let x_443 : vec4<f32> = vs_TEXCOORD1;
  let x_446 : f32 = x_28.x_GlobalMipBias.x;
  let x_447 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_443.z, x_443.w), x_446);
  let x_448 : vec3<f32> = vec3<f32>(x_447.x, x_447.y, x_447.w);
  let x_449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : f32 = u_xlat6.x;
  let x_454 : f32 = u_xlat6.z;
  u_xlat6.x = (x_452 * x_454);
  let x_457 : vec4<f32> = u_xlat6;
  let x_460 : vec2<f32> = ((vec2<f32>(x_457.x, x_457.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat6;
  let x_465 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_463.x, x_463.y), vec2<f32>(x_465.x, x_465.y));
  let x_468 : f32 = u_xlat43;
  u_xlat43 = min(x_468, 1.0f);
  let x_470 : f32 = u_xlat43;
  u_xlat43 = (-(x_470) + 1.0f);
  let x_473 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_473);
  let x_475 : f32 = u_xlat43;
  u_xlat8.z = max(x_475, 0.0000000000000001f);
  let x_478 : vec4<f32> = u_xlat6;
  let x_481 : f32 = x_58.x_NormalScale1;
  let x_483 : f32 = x_58.x_NormalScale1;
  let x_484 : vec2<f32> = vec2<f32>(x_481, x_483);
  let x_488 : vec2<f32> = (vec2<f32>(x_478.x, x_478.y) * vec2<f32>(x_484.x, x_484.y));
  let x_489 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat4;
  let x_493 : vec4<f32> = u_xlat8;
  let x_495 : vec3<f32> = (vec3<f32>(x_491.y, x_491.y, x_491.y) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec4<f32> = u_xlat7;
  let x_503 : vec4<f32> = u_xlat6;
  let x_505 : vec3<f32> = ((vec3<f32>(x_498.x, x_498.x, x_498.x) * vec3<f32>(x_500.x, x_500.y, x_500.z)) + vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_512 : vec4<f32> = vs_TEXCOORD2;
  let x_515 : f32 = x_28.x_GlobalMipBias.x;
  let x_516 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_512.x, x_512.y), x_515);
  let x_517 : vec3<f32> = vec3<f32>(x_516.x, x_516.y, x_516.w);
  let x_518 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_521 : f32 = u_xlat7.x;
  let x_523 : f32 = u_xlat7.z;
  u_xlat7.x = (x_521 * x_523);
  let x_526 : vec4<f32> = u_xlat7;
  let x_529 : vec2<f32> = ((vec2<f32>(x_526.x, x_526.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_530 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat7;
  let x_534 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_532.x, x_532.y), vec2<f32>(x_534.x, x_534.y));
  let x_537 : f32 = u_xlat43;
  u_xlat43 = min(x_537, 1.0f);
  let x_539 : f32 = u_xlat43;
  u_xlat43 = (-(x_539) + 1.0f);
  let x_542 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_542);
  let x_544 : f32 = u_xlat43;
  u_xlat8.z = max(x_544, 0.0000000000000001f);
  let x_547 : vec4<f32> = u_xlat7;
  let x_551 : f32 = x_58.x_NormalScale2;
  let x_553 : f32 = x_58.x_NormalScale2;
  let x_554 : vec2<f32> = vec2<f32>(x_551, x_553);
  let x_558 : vec2<f32> = (vec2<f32>(x_547.x, x_547.y) * vec2<f32>(x_554.x, x_554.y));
  let x_559 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat4;
  let x_563 : vec4<f32> = u_xlat8;
  let x_566 : vec4<f32> = u_xlat6;
  let x_568 : vec3<f32> = ((vec3<f32>(x_561.z, x_561.z, x_561.z) * vec3<f32>(x_563.x, x_563.y, x_563.z)) + vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_575 : vec4<f32> = vs_TEXCOORD2;
  let x_578 : f32 = x_28.x_GlobalMipBias.x;
  let x_579 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_575.z, x_575.w), x_578);
  let x_580 : vec3<f32> = vec3<f32>(x_579.x, x_579.y, x_579.w);
  let x_581 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : f32 = u_xlat7.x;
  let x_586 : f32 = u_xlat7.z;
  u_xlat7.x = (x_584 * x_586);
  let x_589 : vec4<f32> = u_xlat7;
  let x_592 : vec2<f32> = ((vec2<f32>(x_589.x, x_589.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_593 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat7;
  let x_597 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_595.x, x_595.y), vec2<f32>(x_597.x, x_597.y));
  let x_600 : f32 = u_xlat43;
  u_xlat43 = min(x_600, 1.0f);
  let x_602 : f32 = u_xlat43;
  u_xlat43 = (-(x_602) + 1.0f);
  let x_605 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_605);
  let x_607 : f32 = u_xlat43;
  u_xlat8.z = max(x_607, 0.0000000000000001f);
  let x_610 : vec4<f32> = u_xlat7;
  let x_614 : f32 = x_58.x_NormalScale3;
  let x_616 : f32 = x_58.x_NormalScale3;
  let x_617 : vec2<f32> = vec2<f32>(x_614, x_616);
  let x_621 : vec2<f32> = (vec2<f32>(x_610.x, x_610.y) * vec2<f32>(x_617.x, x_617.y));
  let x_622 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : vec4<f32> = u_xlat8;
  let x_629 : vec4<f32> = u_xlat6;
  let x_631 : vec3<f32> = ((vec3<f32>(x_624.w, x_624.w, x_624.w) * vec3<f32>(x_626.x, x_626.y, x_626.z)) + vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_635 : f32 = u_xlat6.z;
  u_xlat6.w = (x_635 + 0.00000999999974737875f);
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_639.x, x_639.y, x_639.w), vec3<f32>(x_641.x, x_641.y, x_641.w));
  let x_644 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_644);
  let x_646 : f32 = u_xlat43;
  let x_648 : vec4<f32> = u_xlat6;
  let x_650 : vec3<f32> = (vec3<f32>(x_646, x_646, x_646) * vec3<f32>(x_648.x, x_648.y, x_648.w));
  let x_651 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_654 : f32 = x_58.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_654;
  let x_657 : f32 = x_58.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_657;
  let x_660 : f32 = x_58.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_660;
  let x_663 : f32 = x_58.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_663;
  let x_666 : f32 = x_58.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_666;
  let x_669 : f32 = x_58.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_669;
  let x_672 : f32 = x_58.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_672;
  let x_675 : f32 = x_58.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_675;
  let x_677 : vec4<f32> = u_xlat7;
  let x_678 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_677 + x_678);
  let x_681 : f32 = u_xlat0.z;
  u_xlat8.x = x_681;
  let x_684 : f32 = u_xlat1.z;
  u_xlat8.y = x_684;
  let x_687 : f32 = u_xlat2.z;
  u_xlat8.z = x_687;
  let x_690 : f32 = u_xlat3.y;
  u_xlat8.w = x_690;
  let x_692 : vec4<f32> = u_xlat9;
  let x_695 : f32 = x_58.x_Smoothness0;
  let x_697 : f32 = x_58.x_Smoothness1;
  let x_699 : f32 = x_58.x_Smoothness2;
  let x_701 : f32 = x_58.x_Smoothness3;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_692) * vec4<f32>(x_695, x_697, x_699, x_701)) + x_704);
  let x_708 : f32 = x_58.x_LayerHasMask0;
  let x_711 : f32 = x_58.x_LayerHasMask1;
  let x_714 : f32 = x_58.x_LayerHasMask2;
  let x_717 : f32 = x_58.x_LayerHasMask3;
  let x_719 : vec4<f32> = u_xlat8;
  let x_721 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_708, x_711, x_714, x_717) * x_719) + x_721);
  let x_724 : vec4<f32> = u_xlat4;
  let x_725 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_724, x_725);
  let x_728 : f32 = u_xlat0.x;
  u_xlat8.x = x_728;
  let x_731 : f32 = u_xlat1.x;
  u_xlat8.y = x_731;
  let x_734 : f32 = u_xlat2.x;
  u_xlat8.z = x_734;
  let x_737 : f32 = u_xlat3.x;
  u_xlat8.w = x_737;
  let x_739 : vec4<f32> = u_xlat8;
  let x_742 : f32 = x_58.x_Metallic0;
  let x_745 : f32 = x_58.x_Metallic1;
  let x_748 : f32 = x_58.x_Metallic2;
  let x_751 : f32 = x_58.x_Metallic3;
  u_xlat8 = (x_739 + -(vec4<f32>(x_742, x_745, x_748, x_751)));
  let x_756 : f32 = x_58.x_LayerHasMask0;
  let x_758 : f32 = x_58.x_LayerHasMask1;
  let x_760 : f32 = x_58.x_LayerHasMask2;
  let x_762 : f32 = x_58.x_LayerHasMask3;
  let x_764 : vec4<f32> = u_xlat8;
  let x_767 : f32 = x_58.x_Metallic0;
  let x_769 : f32 = x_58.x_Metallic1;
  let x_771 : f32 = x_58.x_Metallic2;
  let x_773 : f32 = x_58.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_756, x_758, x_760, x_762) * x_764) + vec4<f32>(x_767, x_769, x_771, x_773));
  let x_776 : vec4<f32> = u_xlat4;
  let x_777 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_776, x_777);
  let x_781 : f32 = u_xlat0.y;
  u_xlat3.x = x_781;
  let x_784 : f32 = u_xlat1.y;
  u_xlat3.y = x_784;
  let x_787 : f32 = u_xlat2.y;
  u_xlat3.z = x_787;
  let x_789 : vec4<f32> = u_xlat7;
  let x_791 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_789) + x_791);
  let x_794 : f32 = x_58.x_LayerHasMask0;
  let x_796 : f32 = x_58.x_LayerHasMask1;
  let x_798 : f32 = x_58.x_LayerHasMask2;
  let x_800 : f32 = x_58.x_LayerHasMask3;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_794, x_796, x_798, x_800) * x_802) + x_804);
  let x_807 : vec4<f32> = u_xlat4;
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_807, x_808);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD5;
  let x_815 : vec3<f32> = (vec3<f32>(x_810.y, x_810.y, x_810.y) * vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat6;
  let x_821 : vec4<f32> = vs_TEXCOORD4;
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec3<f32> = ((vec3<f32>(x_818.x, x_818.x, x_818.x) * -(vec3<f32>(x_821.x, x_821.y, x_821.z))) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat6;
  let x_833 : vec4<f32> = vs_TEXCOORD3;
  let x_836 : vec4<f32> = u_xlat1;
  let x_838 : vec3<f32> = ((vec3<f32>(x_830.z, x_830.z, x_830.z) * vec3<f32>(x_833.x, x_833.y, x_833.z)) + vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_841.x, x_841.y, x_841.z), vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_846);
  let x_848 : f32 = u_xlat43;
  let x_850 : vec4<f32> = u_xlat1;
  let x_852 : vec3<f32> = (vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  u_xlat1.w = 1.0f;
  let x_862 : vec4<f32> = x_860.unity_SHAr;
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_862, x_863);
  let x_867 : vec4<f32> = x_860.unity_SHAg;
  let x_868 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_867, x_868);
  let x_872 : vec4<f32> = x_860.unity_SHAb;
  let x_873 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_872, x_873);
  let x_876 : vec4<f32> = u_xlat1;
  let x_878 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_876.y, x_876.z, x_876.z, x_876.x) * vec4<f32>(x_878.x, x_878.y, x_878.z, x_878.z));
  let x_882 : vec4<f32> = x_860.unity_SHBr;
  let x_883 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_882, x_883);
  let x_887 : vec4<f32> = x_860.unity_SHBg;
  let x_888 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_887, x_888);
  let x_892 : vec4<f32> = x_860.unity_SHBb;
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_892, x_893);
  let x_897 : f32 = u_xlat1.y;
  let x_899 : f32 = u_xlat1.y;
  u_xlat43 = (x_897 * x_899);
  let x_902 : f32 = u_xlat1.x;
  let x_904 : f32 = u_xlat1.x;
  let x_906 : f32 = u_xlat43;
  u_xlat43 = ((x_902 * x_904) + -(x_906));
  let x_911 : vec4<f32> = x_860.unity_SHC;
  let x_913 : f32 = u_xlat43;
  let x_916 : vec4<f32> = u_xlat4;
  let x_918 : vec3<f32> = ((vec3<f32>(x_911.x, x_911.y, x_911.z) * vec3<f32>(x_913, x_913, x_913)) + vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec3<f32> = u_xlat2;
  let x_922 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_921 + vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_925, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_929 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_929) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_935 : f32 = u_xlat28;
  let x_936 : f32 = u_xlat43;
  u_xlat44 = (x_935 + -(x_936));
  let x_939 : f32 = u_xlat43;
  let x_941 : vec4<f32> = u_xlat5;
  let x_943 : vec3<f32> = (vec3<f32>(x_939, x_939, x_939) * vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_944 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec4<f32> = u_xlat5;
  let x_950 : vec3<f32> = (vec3<f32>(x_946.x, x_946.y, x_946.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_951 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec3<f32> = u_xlat0;
  let x_955 : vec4<f32> = u_xlat4;
  let x_960 : vec3<f32> = ((vec3<f32>(x_953.x, x_953.x, x_953.x) * vec3<f32>(x_955.x, x_955.y, x_955.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_961 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : f32 = u_xlat28;
  u_xlat0.x = (-(x_963) + 1.0f);
  let x_968 : f32 = u_xlat0.x;
  let x_970 : f32 = u_xlat0.x;
  u_xlat28 = (x_968 * x_970);
  let x_972 : f32 = u_xlat28;
  u_xlat28 = max(x_972, 0.0078125f);
  let x_975 : f32 = u_xlat28;
  let x_976 : f32 = u_xlat28;
  u_xlat43 = (x_975 * x_976);
  let x_978 : f32 = u_xlat44;
  u_xlat44 = (x_978 + 1.0f);
  let x_980 : f32 = u_xlat44;
  u_xlat44 = clamp(x_980, 0.0f, 1.0f);
  let x_983 : f32 = u_xlat28;
  u_xlat45 = ((x_983 * 4.0f) + 2.0f);
  let x_986 : f32 = u_xlat14;
  u_xlat14 = min(x_986, 1.0f);
  let x_991 : vec4<f32> = vs_TEXCOORD8;
  let x_992 : vec2<f32> = vec2<f32>(x_991.x, x_991.y);
  let x_995 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_992.x, x_992.y, x_995);
  let x_1008 : vec3<f32> = txVec0;
  let x_1010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1008.xy, x_1008.z);
  u_xlat46 = x_1010;
  let x_1020 : f32 = x_1018.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1020) + 1.0f);
  let x_1024 : f32 = u_xlat46;
  let x_1026 : f32 = x_1018.x_MainLightShadowParams.x;
  let x_1029 : f32 = u_xlat5.x;
  u_xlat46 = ((x_1024 * x_1026) + x_1029);
  let x_1033 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_1033);
  let x_1037 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (x_1037 >= 1.0f);
  let x_1039 : bool = u_xlatb19;
  let x_1040 : bool = u_xlatb5;
  u_xlatb5 = (x_1039 | x_1040);
  let x_1042 : bool = u_xlatb5;
  let x_1043 : f32 = u_xlat46;
  u_xlat46 = select(x_1043, 1.0f, x_1042);
  let x_1047 : vec3<f32> = vs_TEXCOORD7;
  let x_1050 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1052 : vec3<f32> = (x_1047 + -(x_1050));
  let x_1053 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat5;
  let x_1057 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1055.x, x_1055.y, x_1055.z), vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1063 : f32 = u_xlat5.x;
  let x_1065 : f32 = x_1018.x_MainLightShadowParams.z;
  let x_1068 : f32 = x_1018.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1063 * x_1065) + x_1068);
  let x_1072 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1072, 0.0f, 1.0f);
  let x_1076 : f32 = u_xlat46;
  u_xlat33 = (-(x_1076) + 1.0f);
  let x_1080 : f32 = u_xlat19.x;
  let x_1081 : f32 = u_xlat33;
  let x_1083 : f32 = u_xlat46;
  u_xlat46 = ((x_1080 * x_1081) + x_1083);
  let x_1086 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1086;
  let x_1089 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1089;
  let x_1092 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1092;
  let x_1094 : vec4<f32> = u_xlat6;
  let x_1097 : vec4<f32> = u_xlat1;
  u_xlat19.x = dot(-(vec3<f32>(x_1094.x, x_1094.y, x_1094.z)), vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1102 : f32 = u_xlat19.x;
  let x_1104 : f32 = u_xlat19.x;
  u_xlat19.x = (x_1102 + x_1104);
  let x_1107 : vec4<f32> = u_xlat1;
  let x_1109 : vec3<f32> = u_xlat19;
  let x_1113 : vec4<f32> = u_xlat6;
  u_xlat19 = ((vec3<f32>(x_1107.x, x_1107.y, x_1107.z) * -(vec3<f32>(x_1109.x, x_1109.x, x_1109.x))) + -(vec3<f32>(x_1113.x, x_1113.y, x_1113.z)));
  let x_1118 : vec4<f32> = u_xlat1;
  let x_1120 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1123 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1123, 0.0f, 1.0f);
  let x_1125 : f32 = u_xlat48;
  u_xlat48 = (-(x_1125) + 1.0f);
  let x_1128 : f32 = u_xlat48;
  let x_1129 : f32 = u_xlat48;
  u_xlat48 = (x_1128 * x_1129);
  let x_1131 : f32 = u_xlat48;
  let x_1132 : f32 = u_xlat48;
  u_xlat48 = (x_1131 * x_1132);
  let x_1135 : f32 = u_xlat0.x;
  u_xlat7.x = ((-(x_1135) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1143 : f32 = u_xlat0.x;
  let x_1145 : f32 = u_xlat7.x;
  u_xlat0.x = (x_1143 * x_1145);
  let x_1149 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1149 * 6.0f);
  let x_1161 : vec3<f32> = u_xlat19;
  let x_1163 : f32 = u_xlat0.x;
  let x_1164 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1161, x_1163);
  u_xlat7 = x_1164;
  let x_1166 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1166 + -1.0f);
  let x_1170 : f32 = x_860.unity_SpecCube0_HDR.w;
  let x_1172 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1170 * x_1172) + 1.0f);
  let x_1177 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1177, 0.0f);
  let x_1181 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1181);
  let x_1185 : f32 = u_xlat0.x;
  let x_1187 : f32 = x_860.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1185 * x_1187);
  let x_1191 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1191);
  let x_1195 : f32 = u_xlat0.x;
  let x_1197 : f32 = x_860.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1195 * x_1197);
  let x_1200 : vec4<f32> = u_xlat7;
  let x_1202 : vec3<f32> = u_xlat0;
  u_xlat19 = (vec3<f32>(x_1200.x, x_1200.y, x_1200.z) * vec3<f32>(x_1202.x, x_1202.x, x_1202.x));
  let x_1205 : f32 = u_xlat28;
  let x_1207 : f32 = u_xlat28;
  let x_1211 : vec2<f32> = ((vec2<f32>(x_1205, x_1205) * vec2<f32>(x_1207, x_1207)) + vec2<f32>(-1.0f, 1.0f));
  let x_1212 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1211.x, x_1212.y, x_1211.y);
  let x_1215 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1215);
  let x_1217 : vec4<f32> = u_xlat4;
  let x_1220 : f32 = u_xlat44;
  let x_1222 : vec3<f32> = (-(vec3<f32>(x_1217.x, x_1217.y, x_1217.z)) + vec3<f32>(x_1220, x_1220, x_1220));
  let x_1223 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1225 : f32 = u_xlat48;
  let x_1227 : vec4<f32> = u_xlat7;
  let x_1230 : vec4<f32> = u_xlat4;
  let x_1232 : vec3<f32> = ((vec3<f32>(x_1225, x_1225, x_1225) * vec3<f32>(x_1227.x, x_1227.y, x_1227.z)) + vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
  let x_1233 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1235 : f32 = u_xlat28;
  let x_1237 : vec4<f32> = u_xlat7;
  let x_1239 : vec3<f32> = (vec3<f32>(x_1235, x_1235, x_1235) * vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1240 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec3<f32> = u_xlat19;
  let x_1243 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1242 * vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec3<f32> = u_xlat2;
  let x_1247 : vec4<f32> = u_xlat3;
  let x_1250 : vec3<f32> = u_xlat19;
  u_xlat2 = ((x_1246 * vec3<f32>(x_1247.x, x_1247.y, x_1247.z)) + x_1250);
  let x_1252 : f32 = u_xlat46;
  let x_1254 : f32 = x_860.unity_LightData.z;
  u_xlat28 = (x_1252 * x_1254);
  let x_1256 : vec4<f32> = u_xlat1;
  let x_1259 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1256.x, x_1256.y, x_1256.z), vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1262, 0.0f, 1.0f);
  let x_1264 : f32 = u_xlat28;
  let x_1265 : f32 = u_xlat44;
  u_xlat28 = (x_1264 * x_1265);
  let x_1267 : f32 = u_xlat28;
  let x_1270 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat19 = (vec3<f32>(x_1267, x_1267, x_1267) * vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
  let x_1273 : vec4<f32> = u_xlat6;
  let x_1276 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1278 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) + vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : vec4<f32> = u_xlat7;
  let x_1283 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1281.x, x_1281.y, x_1281.z), vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1286 : f32 = u_xlat28;
  u_xlat28 = max(x_1286, 1.17549435e-38f);
  let x_1289 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1289);
  let x_1291 : f32 = u_xlat28;
  let x_1293 : vec4<f32> = u_xlat7;
  let x_1295 : vec3<f32> = (vec3<f32>(x_1291, x_1291, x_1291) * vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
  let x_1296 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1298 : vec4<f32> = u_xlat1;
  let x_1300 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1298.x, x_1298.y, x_1298.z), vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
  let x_1303 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1303, 0.0f, 1.0f);
  let x_1306 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1308 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1311, 0.0f, 1.0f);
  let x_1313 : f32 = u_xlat28;
  let x_1314 : f32 = u_xlat28;
  u_xlat28 = (x_1313 * x_1314);
  let x_1316 : f32 = u_xlat28;
  let x_1318 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1316 * x_1318) + 1.00001001358032226562f);
  let x_1322 : f32 = u_xlat44;
  let x_1323 : f32 = u_xlat44;
  u_xlat44 = (x_1322 * x_1323);
  let x_1325 : f32 = u_xlat28;
  let x_1326 : f32 = u_xlat28;
  u_xlat28 = (x_1325 * x_1326);
  let x_1328 : f32 = u_xlat44;
  u_xlat44 = max(x_1328, 0.10000000149011611938f);
  let x_1331 : f32 = u_xlat28;
  let x_1332 : f32 = u_xlat44;
  u_xlat28 = (x_1331 * x_1332);
  let x_1334 : f32 = u_xlat45;
  let x_1335 : f32 = u_xlat28;
  u_xlat28 = (x_1334 * x_1335);
  let x_1337 : f32 = u_xlat43;
  let x_1338 : f32 = u_xlat28;
  u_xlat28 = (x_1337 / x_1338);
  let x_1340 : vec4<f32> = u_xlat4;
  let x_1342 : f32 = u_xlat28;
  let x_1345 : vec4<f32> = u_xlat3;
  let x_1347 : vec3<f32> = ((vec3<f32>(x_1340.x, x_1340.y, x_1340.z) * vec3<f32>(x_1342, x_1342, x_1342)) + vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1348 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
  let x_1350 : vec3<f32> = u_xlat19;
  let x_1351 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1350 * vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
  let x_1355 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1357 : f32 = x_860.unity_LightData.y;
  u_xlat28 = min(x_1355, x_1357);
  let x_1361 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1361));
  let x_1365 : f32 = u_xlat5.x;
  let x_1367 : f32 = x_1018.x_AdditionalShadowFadeParams.x;
  let x_1370 : f32 = x_1018.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1365 * x_1367) + x_1370);
  let x_1372 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1372, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1384 : u32 = u_xlatu_loop_1;
    let x_1385 : u32 = u_xlatu28;
    if ((x_1384 < x_1385)) {
    } else {
      break;
    }
    let x_1388 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1388 >> 2u);
    let x_1392 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1392 & 3u));
    let x_1395 : u32 = u_xlatu5;
    let x_1398 : vec4<f32> = x_860.unity_LightIndices[bitcast<i32>(x_1395)];
    let x_1408 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1413 : vec4<u32> = indexable[x_1408];
    u_xlat5.x = dot(x_1398, bitcast<vec4<f32>>(x_1413));
    let x_1419 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1419);
    let x_1421 : vec3<f32> = vs_TEXCOORD7;
    let x_1432 : i32 = u_xlati5;
    let x_1434 : vec4<f32> = x_1431.x_AdditionalLightsPosition[x_1432];
    let x_1437 : i32 = u_xlati5;
    let x_1439 : vec4<f32> = x_1431.x_AdditionalLightsPosition[x_1437];
    let x_1441 : vec3<f32> = ((-(x_1421) * vec3<f32>(x_1434.w, x_1434.w, x_1434.w)) + vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
    let x_1442 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
    let x_1444 : vec4<f32> = u_xlat8;
    let x_1446 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1444.x, x_1444.y, x_1444.z), vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
    let x_1449 : f32 = u_xlat48;
    u_xlat48 = max(x_1449, 0.00006103515625f);
    let x_1452 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1452);
    let x_1454 : f32 = u_xlat49;
    let x_1456 : vec4<f32> = u_xlat8;
    let x_1458 : vec3<f32> = (vec3<f32>(x_1454, x_1454, x_1454) * vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
    let x_1459 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
    let x_1462 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1462);
    let x_1464 : f32 = u_xlat48;
    let x_1465 : i32 = u_xlati5;
    let x_1467 : f32 = x_1431.x_AdditionalLightsAttenuation[x_1465].x;
    u_xlat48 = (x_1464 * x_1467);
    let x_1469 : f32 = u_xlat48;
    let x_1471 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1469) * x_1471) + 1.0f);
    let x_1474 : f32 = u_xlat48;
    u_xlat48 = max(x_1474, 0.0f);
    let x_1476 : f32 = u_xlat48;
    let x_1477 : f32 = u_xlat48;
    u_xlat48 = (x_1476 * x_1477);
    let x_1479 : f32 = u_xlat48;
    let x_1480 : f32 = u_xlat50;
    u_xlat48 = (x_1479 * x_1480);
    let x_1482 : i32 = u_xlati5;
    let x_1484 : vec4<f32> = x_1431.x_AdditionalLightsSpotDir[x_1482];
    let x_1486 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1484.x, x_1484.y, x_1484.z), vec3<f32>(x_1486.x, x_1486.y, x_1486.z));
    let x_1489 : f32 = u_xlat50;
    let x_1490 : i32 = u_xlati5;
    let x_1492 : f32 = x_1431.x_AdditionalLightsAttenuation[x_1490].z;
    let x_1494 : i32 = u_xlati5;
    let x_1496 : f32 = x_1431.x_AdditionalLightsAttenuation[x_1494].w;
    u_xlat50 = ((x_1489 * x_1492) + x_1496);
    let x_1498 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1498, 0.0f, 1.0f);
    let x_1500 : f32 = u_xlat50;
    let x_1501 : f32 = u_xlat50;
    u_xlat50 = (x_1500 * x_1501);
    let x_1503 : f32 = u_xlat48;
    let x_1504 : f32 = u_xlat50;
    u_xlat48 = (x_1503 * x_1504);
    let x_1507 : i32 = u_xlati5;
    let x_1509 : f32 = x_1018.x_AdditionalShadowParams[x_1507].w;
    u_xlati50 = i32(x_1509);
    let x_1512 : i32 = u_xlati50;
    u_xlatb51 = (x_1512 >= 0i);
    let x_1514 : bool = u_xlatb51;
    if (x_1514) {
      let x_1518 : i32 = u_xlati5;
      let x_1520 : f32 = x_1018.x_AdditionalShadowParams[x_1518].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1520, x_1520, x_1520, x_1520))));
      let x_1524 : bool = u_xlatb51;
      if (x_1524) {
        let x_1529 : vec4<f32> = u_xlat9;
        let x_1532 : vec4<f32> = u_xlat9;
        let x_1535 : vec4<bool> = (abs(vec4<f32>(x_1529.z, x_1529.z, x_1529.y, x_1529.z)) >= abs(vec4<f32>(x_1532.x, x_1532.y, x_1532.x, x_1532.x)));
        let x_1537 : vec3<bool> = vec3<bool>(x_1535.x, x_1535.y, x_1535.z);
        let x_1538 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
        let x_1541 : bool = u_xlatb10.y;
        let x_1543 : bool = u_xlatb10.x;
        u_xlatb51 = (x_1541 & x_1543);
        let x_1545 : vec4<f32> = u_xlat9;
        let x_1548 : vec4<bool> = (-(vec4<f32>(x_1545.z, x_1545.y, x_1545.z, x_1545.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1549 : vec3<bool> = vec3<bool>(x_1548.x, x_1548.y, x_1548.w);
        let x_1550 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1549.x, x_1549.y, x_1550.z, x_1549.z);
        let x_1553 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1553);
        let x_1558 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1558);
        let x_1564 : bool = u_xlatb10.w;
        u_xlat52 = select(0.0f, 1.0f, x_1564);
        let x_1568 : bool = u_xlatb10.z;
        if (x_1568) {
          let x_1574 : f32 = u_xlat10.y;
          x_1570 = x_1574;
        } else {
          let x_1576 : f32 = u_xlat52;
          x_1570 = x_1576;
        }
        let x_1577 : f32 = x_1570;
        u_xlat24 = x_1577;
        let x_1579 : bool = u_xlatb51;
        if (x_1579) {
          let x_1584 : f32 = u_xlat10.x;
          x_1580 = x_1584;
        } else {
          let x_1586 : f32 = u_xlat24;
          x_1580 = x_1586;
        }
        let x_1587 : f32 = x_1580;
        u_xlat51 = x_1587;
        let x_1588 : i32 = u_xlati5;
        let x_1590 : f32 = x_1018.x_AdditionalShadowParams[x_1588].w;
        u_xlat10.x = trunc(x_1590);
        let x_1593 : f32 = u_xlat51;
        let x_1595 : f32 = u_xlat10.x;
        u_xlat51 = (x_1593 + x_1595);
        let x_1597 : f32 = u_xlat51;
        u_xlati50 = i32(x_1597);
      }
      let x_1599 : i32 = u_xlati50;
      u_xlati50 = (x_1599 << bitcast<u32>(2i));
      let x_1601 : vec3<f32> = vs_TEXCOORD7;
      let x_1603 : i32 = u_xlati50;
      let x_1606 : i32 = u_xlati50;
      let x_1610 : vec4<f32> = x_1018.x_AdditionalLightsWorldToShadow[((x_1603 + 1i) / 4i)][((x_1606 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1601.y, x_1601.y, x_1601.y, x_1601.y) * x_1610);
      let x_1612 : i32 = u_xlati50;
      let x_1614 : i32 = u_xlati50;
      let x_1617 : vec4<f32> = x_1018.x_AdditionalLightsWorldToShadow[(x_1612 / 4i)][(x_1614 % 4i)];
      let x_1618 : vec3<f32> = vs_TEXCOORD7;
      let x_1621 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1617 * vec4<f32>(x_1618.x, x_1618.x, x_1618.x, x_1618.x)) + x_1621);
      let x_1623 : i32 = u_xlati50;
      let x_1626 : i32 = u_xlati50;
      let x_1630 : vec4<f32> = x_1018.x_AdditionalLightsWorldToShadow[((x_1623 + 2i) / 4i)][((x_1626 + 2i) % 4i)];
      let x_1631 : vec3<f32> = vs_TEXCOORD7;
      let x_1634 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1630 * vec4<f32>(x_1631.z, x_1631.z, x_1631.z, x_1631.z)) + x_1634);
      let x_1636 : vec4<f32> = u_xlat10;
      let x_1637 : i32 = u_xlati50;
      let x_1640 : i32 = u_xlati50;
      let x_1644 : vec4<f32> = x_1018.x_AdditionalLightsWorldToShadow[((x_1637 + 3i) / 4i)][((x_1640 + 3i) % 4i)];
      u_xlat10 = (x_1636 + x_1644);
      let x_1646 : vec4<f32> = u_xlat10;
      let x_1648 : vec4<f32> = u_xlat10;
      let x_1650 : vec3<f32> = (vec3<f32>(x_1646.x, x_1646.y, x_1646.z) / vec3<f32>(x_1648.w, x_1648.w, x_1648.w));
      let x_1651 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
      let x_1654 : vec4<f32> = u_xlat10;
      let x_1655 : vec2<f32> = vec2<f32>(x_1654.x, x_1654.y);
      let x_1657 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
      let x_1665 : vec3<f32> = txVec1;
      let x_1667 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1665.xy, x_1665.z);
      u_xlat50 = x_1667;
      let x_1668 : i32 = u_xlati5;
      let x_1670 : f32 = x_1018.x_AdditionalShadowParams[x_1668].x;
      u_xlat51 = (1.0f + -(x_1670));
      let x_1673 : f32 = u_xlat50;
      let x_1674 : i32 = u_xlati5;
      let x_1676 : f32 = x_1018.x_AdditionalShadowParams[x_1674].x;
      let x_1678 : f32 = u_xlat51;
      u_xlat50 = ((x_1673 * x_1676) + x_1678);
      let x_1681 : f32 = u_xlat10.z;
      u_xlatb51 = (0.0f >= x_1681);
      let x_1684 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1684 >= 1.0f);
      let x_1687 : bool = u_xlatb51;
      let x_1689 : bool = u_xlatb10.x;
      u_xlatb51 = (x_1687 | x_1689);
      let x_1691 : bool = u_xlatb51;
      let x_1692 : f32 = u_xlat50;
      u_xlat50 = select(x_1692, 1.0f, x_1691);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1695 : f32 = u_xlat50;
    u_xlat51 = (-(x_1695) + 1.0f);
    let x_1698 : f32 = u_xlat44;
    let x_1699 : f32 = u_xlat51;
    let x_1701 : f32 = u_xlat50;
    u_xlat50 = ((x_1698 * x_1699) + x_1701);
    let x_1703 : f32 = u_xlat48;
    let x_1704 : f32 = u_xlat50;
    u_xlat48 = (x_1703 * x_1704);
    let x_1706 : vec4<f32> = u_xlat1;
    let x_1708 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1706.x, x_1706.y, x_1706.z), vec3<f32>(x_1708.x, x_1708.y, x_1708.z));
    let x_1711 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1711, 0.0f, 1.0f);
    let x_1713 : f32 = u_xlat48;
    let x_1714 : f32 = u_xlat50;
    u_xlat48 = (x_1713 * x_1714);
    let x_1716 : f32 = u_xlat48;
    let x_1718 : i32 = u_xlati5;
    let x_1720 : vec4<f32> = x_1431.x_AdditionalLightsColor[x_1718];
    let x_1722 : vec3<f32> = (vec3<f32>(x_1716, x_1716, x_1716) * vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
    let x_1723 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
    let x_1725 : vec4<f32> = u_xlat8;
    let x_1727 : f32 = u_xlat49;
    let x_1730 : vec4<f32> = u_xlat6;
    let x_1732 : vec3<f32> = ((vec3<f32>(x_1725.x, x_1725.y, x_1725.z) * vec3<f32>(x_1727, x_1727, x_1727)) + vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
    let x_1733 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
    let x_1735 : vec4<f32> = u_xlat8;
    let x_1737 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1735.x, x_1735.y, x_1735.z), vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
    let x_1742 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1742, 1.17549435e-38f);
    let x_1746 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_1746);
    let x_1749 : vec4<f32> = u_xlat5;
    let x_1751 : vec4<f32> = u_xlat8;
    let x_1753 : vec3<f32> = (vec3<f32>(x_1749.x, x_1749.x, x_1749.x) * vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
    let x_1754 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
    let x_1756 : vec4<f32> = u_xlat1;
    let x_1758 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_1756.x, x_1756.y, x_1756.z), vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
    let x_1763 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1763, 0.0f, 1.0f);
    let x_1766 : vec4<f32> = u_xlat9;
    let x_1768 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1766.x, x_1766.y, x_1766.z), vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
    let x_1771 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1771, 0.0f, 1.0f);
    let x_1774 : f32 = u_xlat5.x;
    let x_1776 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1774 * x_1776);
    let x_1780 : f32 = u_xlat5.x;
    let x_1782 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_1780 * x_1782) + 1.00001001358032226562f);
    let x_1786 : f32 = u_xlat48;
    let x_1787 : f32 = u_xlat48;
    u_xlat48 = (x_1786 * x_1787);
    let x_1790 : f32 = u_xlat5.x;
    let x_1792 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1790 * x_1792);
    let x_1795 : f32 = u_xlat48;
    u_xlat48 = max(x_1795, 0.10000000149011611938f);
    let x_1798 : f32 = u_xlat5.x;
    let x_1799 : f32 = u_xlat48;
    u_xlat5.x = (x_1798 * x_1799);
    let x_1802 : f32 = u_xlat45;
    let x_1804 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1802 * x_1804);
    let x_1807 : f32 = u_xlat43;
    let x_1809 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1807 / x_1809);
    let x_1812 : vec4<f32> = u_xlat4;
    let x_1814 : vec4<f32> = u_xlat5;
    let x_1817 : vec4<f32> = u_xlat3;
    let x_1819 : vec3<f32> = ((vec3<f32>(x_1812.x, x_1812.y, x_1812.z) * vec3<f32>(x_1814.x, x_1814.x, x_1814.x)) + vec3<f32>(x_1817.x, x_1817.y, x_1817.z));
    let x_1820 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1820.w);
    let x_1822 : vec4<f32> = u_xlat8;
    let x_1824 : vec4<f32> = u_xlat10;
    let x_1827 : vec4<f32> = u_xlat7;
    let x_1829 : vec3<f32> = ((vec3<f32>(x_1822.x, x_1822.y, x_1822.z) * vec3<f32>(x_1824.x, x_1824.y, x_1824.z)) + vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
    let x_1830 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);

    continuing {
      let x_1832 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1832 + bitcast<u32>(1i));
    }
  }
  let x_1834 : vec3<f32> = u_xlat2;
  let x_1835 : f32 = u_xlat14;
  let x_1838 : vec3<f32> = u_xlat19;
  u_xlat0 = ((x_1834 * vec3<f32>(x_1835, x_1835, x_1835)) + x_1838);
  let x_1840 : vec4<f32> = u_xlat7;
  let x_1842 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1840.x, x_1840.y, x_1840.z) + x_1842);
  let x_1846 : f32 = u_xlat42;
  let x_1848 : vec3<f32> = u_xlat0;
  let x_1849 : vec3<f32> = (vec3<f32>(x_1846, x_1846, x_1846) * x_1848);
  let x_1850 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
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


