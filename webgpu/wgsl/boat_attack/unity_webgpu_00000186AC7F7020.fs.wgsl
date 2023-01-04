struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_887 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1071 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2717 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat60 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb61 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat61 : f32;
  var u_xlat40 : f32;
  var u_xlat20 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat63 : f32;
  var u_xlat43 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb64 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat64 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb65 : bool;
  var x_2314 : f32;
  var u_xlatu40 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu23 : u32;
  var u_xlati64 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati23 : i32;
  var u_xlat66 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_35 : vec4<f32> = x_30.x_MaskMapRemapScale0;
  let x_42 : vec4<f32> = x_30.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_35.x, x_35.y, x_35.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_42.x, x_42.y, x_42.w));
  let x_48 : vec4<f32> = x_30.x_MaskMapRemapScale1;
  let x_53 : vec4<f32> = x_30.x_MaskMapRemapOffset1;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_53.x, x_53.y, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = x_30.x_MaskMapRemapScale2;
  let x_66 : vec4<f32> = x_30.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_72 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_77 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_79 : vec3<f32> = ((vec3<f32>(x_72.x, x_72.w, x_72.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_77.x, x_77.w, x_77.y));
  let x_80 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_79.z);
  let x_86 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.z, x_86.w) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = u_xlat4;
  let x_100 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(0.5f, 0.5f));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_108 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_121 : vec4<f32> = u_xlat4;
  let x_131 : f32 = x_126.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_131);
  u_xlat4 = x_132;
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat60 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_145 : vec4<f32> = vs_TEXCOORD1;
  let x_148 : f32 = x_126.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat5 = x_149;
  let x_155 : vec4<f32> = vs_TEXCOORD1;
  let x_158 : f32 = x_126.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_155.z, x_155.w), x_158);
  u_xlat6 = x_159;
  let x_166 : vec4<f32> = vs_TEXCOORD2;
  let x_169 : f32 = x_126.x_GlobalMipBias.x;
  let x_170 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_166.x, x_166.y), x_169);
  u_xlat7 = x_170;
  let x_176 : vec4<f32> = vs_TEXCOORD2;
  let x_179 : f32 = x_126.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat8 = x_180;
  let x_183 : f32 = u_xlat5.w;
  u_xlat9.x = x_183;
  let x_186 : f32 = u_xlat6.w;
  u_xlat9.y = x_186;
  let x_190 : f32 = u_xlat7.w;
  u_xlat9.z = x_190;
  let x_194 : f32 = u_xlat8.w;
  u_xlat9.w = x_194;
  let x_197 : vec4<f32> = u_xlat9;
  let x_200 : f32 = x_30.x_Smoothness0;
  let x_203 : f32 = x_30.x_Smoothness1;
  let x_206 : f32 = x_30.x_Smoothness2;
  let x_209 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_197 * vec4<f32>(x_200, x_203, x_206, x_209));
  let x_218 : f32 = x_30.x_NumLayersCount;
  u_xlatb61 = (4.0f >= x_218);
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_221) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat9;
  let x_225 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_224 + -(x_225));
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_228 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_232, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat4;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_237 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_241);
  let x_244 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_244 + -(x_245));
  let x_250 : f32 = u_xlat12.x;
  let x_253 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_250 * x_253);
  let x_257 : f32 = u_xlat12.y;
  let x_260 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_257 * x_260);
  let x_264 : f32 = u_xlat12.z;
  let x_267 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.w;
  let x_274 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_271 * x_274);
  let x_277 : vec4<f32> = u_xlat11;
  let x_278 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_277 + x_278);
  let x_280 : bool = u_xlatb61;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat61;
  u_xlat61 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat61;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_370 : vec4<f32> = vs_TEXCOORD1;
  let x_373 : f32 = x_126.x_GlobalMipBias.x;
  let x_374 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_370.x, x_370.y), x_373);
  let x_375 : vec3<f32> = vec3<f32>(x_374.x, x_374.y, x_374.w);
  let x_376 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = u_xlat6.x;
  let x_381 : f32 = u_xlat6.z;
  u_xlat6.x = (x_379 * x_381);
  let x_384 : vec4<f32> = u_xlat6;
  let x_389 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(x_394.x, x_394.y));
  let x_397 : f32 = u_xlat61;
  u_xlat61 = min(x_397, 1.0f);
  let x_399 : f32 = u_xlat61;
  u_xlat61 = (-(x_399) + 1.0f);
  let x_402 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_402);
  let x_404 : f32 = u_xlat61;
  u_xlat7.z = max(x_404, 1.00000002e-16f);
  let x_408 : vec4<f32> = u_xlat6;
  let x_412 : f32 = x_30.x_NormalScale0;
  let x_414 : vec2<f32> = (vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_412, x_412));
  let x_415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_421 : vec4<f32> = vs_TEXCOORD1;
  let x_424 : f32 = x_126.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_421.z, x_421.w), x_424);
  let x_426 : vec3<f32> = vec3<f32>(x_425.x, x_425.y, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = u_xlat6.x;
  let x_432 : f32 = u_xlat6.z;
  u_xlat6.x = (x_430 * x_432);
  let x_435 : vec4<f32> = u_xlat6;
  let x_438 : vec2<f32> = ((vec2<f32>(x_435.x, x_435.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_441.x, x_441.y), vec2<f32>(x_443.x, x_443.y));
  let x_446 : f32 = u_xlat61;
  u_xlat61 = min(x_446, 1.0f);
  let x_448 : f32 = u_xlat61;
  u_xlat61 = (-(x_448) + 1.0f);
  let x_451 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_451);
  let x_453 : f32 = u_xlat61;
  u_xlat8.z = max(x_453, 1.00000002e-16f);
  let x_456 : vec4<f32> = u_xlat6;
  let x_459 : f32 = x_30.x_NormalScale1;
  let x_461 : f32 = x_30.x_NormalScale1;
  let x_462 : vec2<f32> = vec2<f32>(x_459, x_461);
  let x_466 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_462.x, x_462.y));
  let x_467 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec4<f32> = u_xlat8;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.y, x_469.y, x_469.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : vec4<f32> = u_xlat6;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * vec3<f32>(x_478.x, x_478.y, x_478.z)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_490 : vec4<f32> = vs_TEXCOORD2;
  let x_493 : f32 = x_126.x_GlobalMipBias.x;
  let x_494 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_490.x, x_490.y), x_493);
  let x_495 : vec3<f32> = vec3<f32>(x_494.x, x_494.y, x_494.w);
  let x_496 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : f32 = u_xlat7.x;
  let x_501 : f32 = u_xlat7.z;
  u_xlat7.x = (x_499 * x_501);
  let x_504 : vec4<f32> = u_xlat7;
  let x_507 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  let x_512 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_510.x, x_510.y), vec2<f32>(x_512.x, x_512.y));
  let x_515 : f32 = u_xlat61;
  u_xlat61 = min(x_515, 1.0f);
  let x_517 : f32 = u_xlat61;
  u_xlat61 = (-(x_517) + 1.0f);
  let x_520 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_520);
  let x_522 : f32 = u_xlat61;
  u_xlat8.z = max(x_522, 1.00000002e-16f);
  let x_525 : vec4<f32> = u_xlat7;
  let x_529 : f32 = x_30.x_NormalScale2;
  let x_531 : f32 = x_30.x_NormalScale2;
  let x_532 : vec2<f32> = vec2<f32>(x_529, x_531);
  let x_536 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_532.x, x_532.y));
  let x_537 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat8;
  let x_544 : vec4<f32> = u_xlat6;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.z, x_539.z, x_539.z) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_553 : vec4<f32> = vs_TEXCOORD2;
  let x_556 : f32 = x_126.x_GlobalMipBias.x;
  let x_557 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_553.z, x_553.w), x_556);
  let x_558 : vec3<f32> = vec3<f32>(x_557.x, x_557.y, x_557.w);
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = u_xlat7.x;
  let x_564 : f32 = u_xlat7.z;
  u_xlat7.x = (x_562 * x_564);
  let x_567 : vec4<f32> = u_xlat7;
  let x_570 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  let x_575 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_573.x, x_573.y), vec2<f32>(x_575.x, x_575.y));
  let x_578 : f32 = u_xlat61;
  u_xlat61 = min(x_578, 1.0f);
  let x_580 : f32 = u_xlat61;
  u_xlat61 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_583);
  let x_585 : f32 = u_xlat61;
  u_xlat8.z = max(x_585, 1.00000002e-16f);
  let x_588 : vec4<f32> = u_xlat7;
  let x_592 : f32 = x_30.x_NormalScale3;
  let x_594 : f32 = x_30.x_NormalScale3;
  let x_595 : vec2<f32> = vec2<f32>(x_592, x_594);
  let x_599 : vec2<f32> = (vec2<f32>(x_588.x, x_588.y) * vec2<f32>(x_595.x, x_595.y));
  let x_600 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : vec4<f32> = u_xlat8;
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.w, x_602.w, x_602.w) * vec3<f32>(x_604.x, x_604.y, x_604.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = u_xlat6.z;
  u_xlat6.w = (x_613 + 0.00001f);
  let x_617 : vec4<f32> = u_xlat6;
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_617.x, x_617.y, x_617.w), vec3<f32>(x_619.x, x_619.y, x_619.w));
  let x_622 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_622);
  let x_624 : f32 = u_xlat61;
  let x_626 : vec4<f32> = u_xlat6;
  let x_628 : vec3<f32> = (vec3<f32>(x_624, x_624, x_624) * vec3<f32>(x_626.x, x_626.y, x_626.w));
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_632 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_632;
  let x_635 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_635;
  let x_638 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_638;
  let x_641 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_641;
  let x_644 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_644;
  let x_647 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_647;
  let x_650 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_650;
  let x_653 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_653;
  let x_655 : vec4<f32> = u_xlat7;
  let x_656 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_655 + x_656);
  let x_659 : f32 = u_xlat0.z;
  u_xlat8.x = x_659;
  let x_662 : f32 = u_xlat1.z;
  u_xlat8.y = x_662;
  let x_665 : f32 = u_xlat2.z;
  u_xlat8.z = x_665;
  let x_668 : f32 = u_xlat3.y;
  u_xlat8.w = x_668;
  let x_670 : vec4<f32> = u_xlat9;
  let x_673 : f32 = x_30.x_Smoothness0;
  let x_675 : f32 = x_30.x_Smoothness1;
  let x_677 : f32 = x_30.x_Smoothness2;
  let x_679 : f32 = x_30.x_Smoothness3;
  let x_682 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_670) * vec4<f32>(x_673, x_675, x_677, x_679)) + x_682);
  let x_686 : f32 = x_30.x_LayerHasMask0;
  let x_689 : f32 = x_30.x_LayerHasMask1;
  let x_692 : f32 = x_30.x_LayerHasMask2;
  let x_695 : f32 = x_30.x_LayerHasMask3;
  let x_697 : vec4<f32> = u_xlat8;
  let x_699 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_686, x_689, x_692, x_695) * x_697) + x_699);
  let x_702 : vec4<f32> = u_xlat4;
  let x_703 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_702, x_703);
  let x_706 : f32 = u_xlat0.x;
  u_xlat8.x = x_706;
  let x_709 : f32 = u_xlat1.x;
  u_xlat8.y = x_709;
  let x_712 : f32 = u_xlat2.x;
  u_xlat8.z = x_712;
  let x_715 : f32 = u_xlat3.x;
  u_xlat8.w = x_715;
  let x_717 : vec4<f32> = u_xlat8;
  let x_720 : f32 = x_30.x_Metallic0;
  let x_723 : f32 = x_30.x_Metallic1;
  let x_726 : f32 = x_30.x_Metallic2;
  let x_729 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_717 + -(vec4<f32>(x_720, x_723, x_726, x_729)));
  let x_734 : f32 = x_30.x_LayerHasMask0;
  let x_736 : f32 = x_30.x_LayerHasMask1;
  let x_738 : f32 = x_30.x_LayerHasMask2;
  let x_740 : f32 = x_30.x_LayerHasMask3;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_30.x_Metallic0;
  let x_747 : f32 = x_30.x_Metallic1;
  let x_749 : f32 = x_30.x_Metallic2;
  let x_751 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_734, x_736, x_738, x_740) * x_742) + vec4<f32>(x_745, x_747, x_749, x_751));
  let x_754 : vec4<f32> = u_xlat4;
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_754, x_755);
  let x_759 : f32 = u_xlat0.y;
  u_xlat3.x = x_759;
  let x_762 : f32 = u_xlat1.y;
  u_xlat3.y = x_762;
  let x_765 : f32 = u_xlat2.y;
  u_xlat3.z = x_765;
  let x_767 : vec4<f32> = u_xlat7;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_767) + x_769);
  let x_772 : f32 = x_30.x_LayerHasMask0;
  let x_774 : f32 = x_30.x_LayerHasMask1;
  let x_776 : f32 = x_30.x_LayerHasMask2;
  let x_778 : f32 = x_30.x_LayerHasMask3;
  let x_780 : vec4<f32> = u_xlat1;
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_772, x_774, x_776, x_778) * x_780) + x_782);
  let x_785 : vec4<f32> = u_xlat4;
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_785, x_786);
  let x_788 : vec4<f32> = u_xlat6;
  let x_791 : vec4<f32> = vs_TEXCOORD5;
  let x_793 : vec3<f32> = (vec3<f32>(x_788.y, x_788.y, x_788.y) * vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat6;
  let x_799 : vec4<f32> = vs_TEXCOORD4;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * -(vec3<f32>(x_799.x, x_799.y, x_799.z))) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD3;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = ((vec3<f32>(x_808.z, x_808.z, x_808.z) * vec3<f32>(x_811.x, x_811.y, x_811.z)) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat1;
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_824);
  let x_826 : f32 = u_xlat61;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = (vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_836 : f32 = vs_TEXCOORD7.y;
  let x_838 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.x = (x_836 * x_838);
  let x_842 : f32 = x_126.unity_MatrixV[0i].z;
  let x_844 : f32 = vs_TEXCOORD7.x;
  let x_847 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_842 * x_844) + x_847);
  let x_851 : f32 = x_126.unity_MatrixV[2i].z;
  let x_853 : f32 = vs_TEXCOORD7.z;
  let x_856 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_851 * x_853) + x_856);
  let x_860 : f32 = u_xlat2.x;
  let x_862 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat2.x = (x_860 + x_862);
  let x_866 : f32 = u_xlat2.x;
  let x_869 : f32 = x_126.x_ProjectionParams.y;
  u_xlat2.x = (-(x_866) + -(x_869));
  let x_874 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_874, 0.0f);
  let x_878 : f32 = u_xlat2.x;
  let x_880 : f32 = x_126.unity_FogParams.x;
  u_xlat2.x = (x_878 * x_880);
  u_xlat1.w = 1.0f;
  let x_889 : vec4<f32> = x_887.unity_SHAr;
  let x_890 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_889, x_890);
  let x_894 : vec4<f32> = x_887.unity_SHAg;
  let x_895 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_894, x_895);
  let x_899 : vec4<f32> = x_887.unity_SHAb;
  let x_900 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_899, x_900);
  let x_903 : vec4<f32> = u_xlat1;
  let x_905 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_903.y, x_903.z, x_903.z, x_903.x) * vec4<f32>(x_905.x, x_905.y, x_905.z, x_905.z));
  let x_909 : vec4<f32> = x_887.unity_SHBr;
  let x_910 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_909, x_910);
  let x_914 : vec4<f32> = x_887.unity_SHBg;
  let x_915 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_914, x_915);
  let x_919 : vec4<f32> = x_887.unity_SHBb;
  let x_920 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_919, x_920);
  let x_924 : f32 = u_xlat1.y;
  let x_926 : f32 = u_xlat1.y;
  u_xlat61 = (x_924 * x_926);
  let x_929 : f32 = u_xlat1.x;
  let x_931 : f32 = u_xlat1.x;
  let x_933 : f32 = u_xlat61;
  u_xlat61 = ((x_929 * x_931) + -(x_933));
  let x_939 : vec4<f32> = x_887.unity_SHC;
  let x_941 : f32 = u_xlat61;
  let x_944 : vec4<f32> = u_xlat6;
  u_xlat22 = ((vec3<f32>(x_939.x, x_939.y, x_939.z) * vec3<f32>(x_941, x_941, x_941)) + vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec3<f32> = u_xlat22;
  let x_948 : vec4<f32> = u_xlat3;
  u_xlat22 = (x_947 + vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec3<f32> = u_xlat22;
  u_xlat22 = max(x_951, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
  let x_961 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_957.x, x_957.y));
  let x_962 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
  let x_964 : vec4<f32> = u_xlat3;
  let x_966 : vec4<f32> = hlslcc_FragCoord;
  let x_968 : vec2<f32> = (vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_966.x, x_966.y));
  let x_969 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
  let x_972 : f32 = u_xlat3.y;
  let x_974 : f32 = x_126.x_ScaleBiasRt.x;
  let x_977 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat61 = ((x_972 * x_974) + x_977);
  let x_979 : f32 = u_xlat61;
  u_xlat3.z = (-(x_979) + 1.0f);
  let x_984 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_984) * 0.959999979f) + 0.959999979f);
  let x_990 : f32 = u_xlat40;
  let x_991 : f32 = u_xlat61;
  u_xlat23 = (x_990 + -(x_991));
  let x_994 : f32 = u_xlat61;
  let x_996 : vec4<f32> = u_xlat5;
  let x_998 : vec3<f32> = (vec3<f32>(x_994, x_994, x_994) * vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat5;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1006 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec3<f32> = u_xlat0;
  let x_1010 : vec4<f32> = u_xlat5;
  let x_1015 : vec3<f32> = ((vec3<f32>(x_1008.x, x_1008.x, x_1008.x) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1016 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : f32 = u_xlat40;
  u_xlat0.x = (-(x_1018) + 1.0f);
  let x_1023 : f32 = u_xlat0.x;
  let x_1025 : f32 = u_xlat0.x;
  u_xlat40 = (x_1023 * x_1025);
  let x_1027 : f32 = u_xlat40;
  u_xlat40 = max(x_1027, 0.0078125f);
  let x_1030 : f32 = u_xlat40;
  let x_1031 : f32 = u_xlat40;
  u_xlat61 = (x_1030 * x_1031);
  let x_1033 : f32 = u_xlat23;
  u_xlat23 = (x_1033 + 1.0f);
  let x_1035 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1035, 0.0f, 1.0f);
  let x_1038 : f32 = u_xlat40;
  u_xlat63 = ((x_1038 * 4.0f) + 2.0f);
  let x_1046 : vec4<f32> = u_xlat3;
  let x_1049 : f32 = x_126.x_GlobalMipBias.x;
  let x_1050 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1046.x, x_1046.z), x_1049);
  u_xlat3.x = x_1050.x;
  let x_1055 : f32 = u_xlat3.x;
  u_xlat43 = (x_1055 + -1.0f);
  let x_1058 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_1059 : f32 = u_xlat43;
  u_xlat43 = ((x_1058 * x_1059) + 1.0f);
  let x_1062 : f32 = u_xlat20;
  let x_1064 : f32 = u_xlat3.x;
  u_xlat20 = min(x_1062, x_1064);
  let x_1073 : f32 = x_1071.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_1073);
  let x_1075 : bool = u_xlatb3;
  if (x_1075) {
    let x_1079 : f32 = x_1071.x_MainLightShadowParams.y;
    u_xlatb3 = (x_1079 == 1.0f);
    let x_1081 : bool = u_xlatb3;
    if (x_1081) {
      let x_1085 : vec4<f32> = vs_TEXCOORD8;
      let x_1088 : vec4<f32> = x_1071.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) + x_1088);
      let x_1091 : vec4<f32> = u_xlat6;
      let x_1092 : vec2<f32> = vec2<f32>(x_1091.x, x_1091.y);
      let x_1094 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1092.x, x_1092.y, x_1094);
      let x_1106 : vec3<f32> = txVec0;
      let x_1108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1106.xy, x_1106.z);
      u_xlat7.x = x_1108;
      let x_1111 : vec4<f32> = u_xlat6;
      let x_1112 : vec2<f32> = vec2<f32>(x_1111.z, x_1111.w);
      let x_1114 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1112.x, x_1112.y, x_1114);
      let x_1121 : vec3<f32> = txVec1;
      let x_1123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1121.xy, x_1121.z);
      u_xlat7.y = x_1123;
      let x_1125 : vec4<f32> = vs_TEXCOORD8;
      let x_1128 : vec4<f32> = x_1071.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) + x_1128);
      let x_1131 : vec4<f32> = u_xlat6;
      let x_1132 : vec2<f32> = vec2<f32>(x_1131.x, x_1131.y);
      let x_1134 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
      let x_1141 : vec3<f32> = txVec2;
      let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1141.xy, x_1141.z);
      u_xlat7.z = x_1143;
      let x_1146 : vec4<f32> = u_xlat6;
      let x_1147 : vec2<f32> = vec2<f32>(x_1146.z, x_1146.w);
      let x_1149 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1147.x, x_1147.y, x_1149);
      let x_1156 : vec3<f32> = txVec3;
      let x_1158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1156.xy, x_1156.z);
      u_xlat7.w = x_1158;
      let x_1160 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1160, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1168 : f32 = x_1071.x_MainLightShadowParams.y;
      u_xlatb64 = (x_1168 == 2.0f);
      let x_1170 : bool = u_xlatb64;
      if (x_1170) {
        let x_1173 : vec4<f32> = vs_TEXCOORD8;
        let x_1176 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(x_1176.z, x_1176.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1180 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat6;
        let x_1184 : vec2<f32> = floor(vec2<f32>(x_1182.x, x_1182.y));
        let x_1185 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1189 : vec4<f32> = vs_TEXCOORD8;
        let x_1192 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1195 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1189.x, x_1189.y) * vec2<f32>(x_1192.z, x_1192.w)) + -(vec2<f32>(x_1195.x, x_1195.y)));
        let x_1199 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1199.x, x_1199.x, x_1199.y, x_1199.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1203 : vec4<f32> = u_xlat7;
        let x_1205 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1203.x, x_1203.x, x_1203.z, x_1203.z) * vec4<f32>(x_1205.x, x_1205.x, x_1205.z, x_1205.z));
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1212 : vec2<f32> = (vec2<f32>(x_1208.y, x_1208.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1213 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1212.x, x_1213.y, x_1212.y, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat8;
        let x_1218 : vec2<f32> = u_xlat46;
        let x_1220 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1218));
        let x_1221 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1224 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1224) + vec2<f32>(1.0f, 1.0f));
        let x_1227 : vec2<f32> = u_xlat46;
        let x_1229 : vec2<f32> = min(x_1227, vec2<f32>(0.0f, 0.0f));
        let x_1230 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1229.x, x_1229.y, x_1230.z, x_1230.w);
        let x_1232 : vec4<f32> = u_xlat9;
        let x_1235 : vec4<f32> = u_xlat9;
        let x_1238 : vec2<f32> = u_xlat48;
        let x_1239 : vec2<f32> = ((-(vec2<f32>(x_1232.x, x_1232.y)) * vec2<f32>(x_1235.x, x_1235.y)) + x_1238);
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1239.x, x_1239.y, x_1240.z, x_1240.w);
        let x_1242 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1242, vec2<f32>(0.0f, 0.0f));
        let x_1244 : vec2<f32> = u_xlat46;
        let x_1246 : vec2<f32> = u_xlat46;
        let x_1248 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1244) * x_1246) + vec2<f32>(x_1248.y, x_1248.w));
        let x_1251 : vec4<f32> = u_xlat9;
        let x_1253 : vec2<f32> = (vec2<f32>(x_1251.x, x_1251.y) + vec2<f32>(1.0f, 1.0f));
        let x_1254 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1253.x, x_1253.y, x_1254.z, x_1254.w);
        let x_1256 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1256 + vec2<f32>(1.0f, 1.0f));
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1262 : vec2<f32> = (vec2<f32>(x_1258.x, x_1258.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1262.x, x_1262.y, x_1263.z, x_1263.w);
        let x_1265 : vec2<f32> = u_xlat48;
        let x_1266 : vec2<f32> = (x_1265 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1267 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1266.x, x_1266.y, x_1267.z, x_1267.w);
        let x_1269 : vec4<f32> = u_xlat9;
        let x_1271 : vec2<f32> = (vec2<f32>(x_1269.x, x_1269.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
        let x_1274 : vec2<f32> = u_xlat46;
        let x_1275 : vec2<f32> = (x_1274 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1278.y, x_1278.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1282 : f32 = u_xlat9.x;
        u_xlat10.z = x_1282;
        let x_1285 : f32 = u_xlat46.x;
        u_xlat10.w = x_1285;
        let x_1288 : f32 = u_xlat11.x;
        u_xlat8.z = x_1288;
        let x_1291 : f32 = u_xlat7.x;
        u_xlat8.w = x_1291;
        let x_1293 : vec4<f32> = u_xlat8;
        let x_1295 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1293.z, x_1293.w, x_1293.x, x_1293.z) + vec4<f32>(x_1295.z, x_1295.w, x_1295.x, x_1295.z));
        let x_1299 : f32 = u_xlat10.y;
        u_xlat9.z = x_1299;
        let x_1302 : f32 = u_xlat46.y;
        u_xlat9.w = x_1302;
        let x_1305 : f32 = u_xlat8.y;
        u_xlat11.z = x_1305;
        let x_1308 : f32 = u_xlat7.z;
        u_xlat11.w = x_1308;
        let x_1310 : vec4<f32> = u_xlat9;
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1314 : vec3<f32> = (vec3<f32>(x_1310.z, x_1310.y, x_1310.w) + vec3<f32>(x_1312.z, x_1312.y, x_1312.w));
        let x_1315 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
        let x_1317 : vec4<f32> = u_xlat8;
        let x_1319 : vec4<f32> = u_xlat12;
        let x_1321 : vec3<f32> = (vec3<f32>(x_1317.x, x_1317.z, x_1317.w) / vec3<f32>(x_1319.z, x_1319.w, x_1319.y));
        let x_1322 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat8;
        let x_1330 : vec3<f32> = (vec3<f32>(x_1324.x, x_1324.y, x_1324.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1331 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
        let x_1333 : vec4<f32> = u_xlat11;
        let x_1335 : vec4<f32> = u_xlat7;
        let x_1337 : vec3<f32> = (vec3<f32>(x_1333.z, x_1333.y, x_1333.w) / vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
        let x_1340 : vec4<f32> = u_xlat9;
        let x_1342 : vec3<f32> = (vec3<f32>(x_1340.x, x_1340.y, x_1340.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1348 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1350 : vec3<f32> = (vec3<f32>(x_1345.y, x_1345.x, x_1345.z) * vec3<f32>(x_1348.x, x_1348.x, x_1348.x));
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
        let x_1353 : vec4<f32> = u_xlat9;
        let x_1356 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1358 : vec3<f32> = (vec3<f32>(x_1353.x, x_1353.y, x_1353.z) * vec3<f32>(x_1356.y, x_1356.y, x_1356.y));
        let x_1359 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
        let x_1362 : f32 = u_xlat9.x;
        u_xlat8.w = x_1362;
        let x_1364 : vec4<f32> = u_xlat6;
        let x_1367 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1364.x, x_1364.y, x_1364.x, x_1364.y) * vec4<f32>(x_1367.x, x_1367.y, x_1367.x, x_1367.y)) + vec4<f32>(x_1370.y, x_1370.w, x_1370.x, x_1370.w));
        let x_1373 : vec4<f32> = u_xlat6;
        let x_1376 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1373.x, x_1373.y) * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.z, x_1379.w));
        let x_1383 : f32 = u_xlat8.y;
        u_xlat9.w = x_1383;
        let x_1385 : vec4<f32> = u_xlat9;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.y, x_1385.z);
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1387.x, x_1386.x, x_1387.z, x_1386.y);
        let x_1389 : vec4<f32> = u_xlat6;
        let x_1392 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1395 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1389.x, x_1389.y, x_1389.x, x_1389.y) * vec4<f32>(x_1392.x, x_1392.y, x_1392.x, x_1392.y)) + vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1395.y));
        let x_1398 : vec4<f32> = u_xlat6;
        let x_1401 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1404 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y) * vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.y)) + vec4<f32>(x_1404.w, x_1404.y, x_1404.w, x_1404.z));
        let x_1407 : vec4<f32> = u_xlat6;
        let x_1410 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1413 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1407.x, x_1407.y, x_1407.x, x_1407.y) * vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.y)) + vec4<f32>(x_1413.x, x_1413.w, x_1413.z, x_1413.w));
        let x_1416 : vec4<f32> = u_xlat7;
        let x_1418 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1416.x, x_1416.x, x_1416.x, x_1416.y) * vec4<f32>(x_1418.z, x_1418.w, x_1418.y, x_1418.z));
        let x_1422 : vec4<f32> = u_xlat7;
        let x_1424 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1422.y, x_1422.y, x_1422.z, x_1422.z) * x_1424);
        let x_1428 : f32 = u_xlat7.z;
        let x_1430 : f32 = u_xlat12.y;
        u_xlat64 = (x_1428 * x_1430);
        let x_1433 : vec4<f32> = u_xlat10;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1444 : vec3<f32> = txVec4;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat65 = x_1446;
        let x_1448 : vec4<f32> = u_xlat10;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.z, x_1448.w);
        let x_1451 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec5;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1458.xy, x_1458.z);
        u_xlat6.x = x_1460;
        let x_1463 : f32 = u_xlat6.x;
        let x_1465 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1463 * x_1465);
        let x_1469 : f32 = u_xlat13.x;
        let x_1470 : f32 = u_xlat65;
        let x_1473 : f32 = u_xlat6.x;
        u_xlat65 = ((x_1469 * x_1470) + x_1473);
        let x_1476 : vec2<f32> = u_xlat46;
        let x_1478 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec6;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1485.xy, x_1485.z);
        u_xlat6.x = x_1487;
        let x_1490 : f32 = u_xlat13.z;
        let x_1492 : f32 = u_xlat6.x;
        let x_1494 : f32 = u_xlat65;
        u_xlat65 = ((x_1490 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.x, x_1497.y);
        let x_1500 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec7;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1507.xy, x_1507.z);
        u_xlat6.x = x_1509;
        let x_1512 : f32 = u_xlat13.w;
        let x_1514 : f32 = u_xlat6.x;
        let x_1516 : f32 = u_xlat65;
        u_xlat65 = ((x_1512 * x_1514) + x_1516);
        let x_1519 : vec4<f32> = u_xlat11;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec8;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1529.xy, x_1529.z);
        u_xlat6.x = x_1531;
        let x_1534 : f32 = u_xlat14.x;
        let x_1536 : f32 = u_xlat6.x;
        let x_1538 : f32 = u_xlat65;
        u_xlat65 = ((x_1534 * x_1536) + x_1538);
        let x_1541 : vec4<f32> = u_xlat11;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec9;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1551.xy, x_1551.z);
        u_xlat6.x = x_1553;
        let x_1556 : f32 = u_xlat14.y;
        let x_1558 : f32 = u_xlat6.x;
        let x_1560 : f32 = u_xlat65;
        u_xlat65 = ((x_1556 * x_1558) + x_1560);
        let x_1563 : vec4<f32> = u_xlat9;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.z, x_1563.w);
        let x_1566 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec10;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1573.xy, x_1573.z);
        u_xlat6.x = x_1575;
        let x_1578 : f32 = u_xlat14.z;
        let x_1580 : f32 = u_xlat6.x;
        let x_1582 : f32 = u_xlat65;
        u_xlat65 = ((x_1578 * x_1580) + x_1582);
        let x_1585 : vec4<f32> = u_xlat8;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.x, x_1585.y);
        let x_1588 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec11;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat6.x = x_1597;
        let x_1600 : f32 = u_xlat14.w;
        let x_1602 : f32 = u_xlat6.x;
        let x_1604 : f32 = u_xlat65;
        u_xlat65 = ((x_1600 * x_1602) + x_1604);
        let x_1607 : vec4<f32> = u_xlat8;
        let x_1608 : vec2<f32> = vec2<f32>(x_1607.z, x_1607.w);
        let x_1610 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec12;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1617.xy, x_1617.z);
        u_xlat6.x = x_1619;
        let x_1621 : f32 = u_xlat64;
        let x_1623 : f32 = u_xlat6.x;
        let x_1625 : f32 = u_xlat65;
        u_xlat3.x = ((x_1621 * x_1623) + x_1625);
      } else {
        let x_1629 : vec4<f32> = vs_TEXCOORD8;
        let x_1632 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1635 : vec2<f32> = ((vec2<f32>(x_1629.x, x_1629.y) * vec2<f32>(x_1632.z, x_1632.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1636 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
        let x_1638 : vec4<f32> = u_xlat6;
        let x_1640 : vec2<f32> = floor(vec2<f32>(x_1638.x, x_1638.y));
        let x_1641 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
        let x_1643 : vec4<f32> = vs_TEXCOORD8;
        let x_1646 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1649 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1643.x, x_1643.y) * vec2<f32>(x_1646.z, x_1646.w)) + -(vec2<f32>(x_1649.x, x_1649.y)));
        let x_1653 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1653.x, x_1653.x, x_1653.y, x_1653.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1656 : vec4<f32> = u_xlat7;
        let x_1658 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1656.x, x_1656.x, x_1656.z, x_1656.z) * vec4<f32>(x_1658.x, x_1658.x, x_1658.z, x_1658.z));
        let x_1661 : vec4<f32> = u_xlat8;
        let x_1665 : vec2<f32> = (vec2<f32>(x_1661.y, x_1661.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1666 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1666.x, x_1665.x, x_1666.z, x_1665.y);
        let x_1668 : vec4<f32> = u_xlat8;
        let x_1671 : vec2<f32> = u_xlat46;
        let x_1673 : vec2<f32> = ((vec2<f32>(x_1668.x, x_1668.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1671));
        let x_1674 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1673.x, x_1674.y, x_1673.y, x_1674.w);
        let x_1676 : vec2<f32> = u_xlat46;
        let x_1678 : vec2<f32> = (-(x_1676) + vec2<f32>(1.0f, 1.0f));
        let x_1679 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1678.x, x_1678.y, x_1679.z, x_1679.w);
        let x_1681 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1681, vec2<f32>(0.0f, 0.0f));
        let x_1683 : vec2<f32> = u_xlat48;
        let x_1685 : vec2<f32> = u_xlat48;
        let x_1687 : vec4<f32> = u_xlat8;
        let x_1689 : vec2<f32> = ((-(x_1683) * x_1685) + vec2<f32>(x_1687.x, x_1687.y));
        let x_1690 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1689.x, x_1689.y, x_1690.z, x_1690.w);
        let x_1692 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1692, vec2<f32>(0.0f, 0.0f));
        let x_1695 : vec2<f32> = u_xlat48;
        let x_1697 : vec2<f32> = u_xlat48;
        let x_1699 : vec4<f32> = u_xlat7;
        let x_1701 : vec2<f32> = ((-(x_1695) * x_1697) + vec2<f32>(x_1699.y, x_1699.w));
        let x_1702 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1701.x, x_1702.y, x_1701.y);
        let x_1704 : vec4<f32> = u_xlat8;
        let x_1706 : vec2<f32> = (vec2<f32>(x_1704.x, x_1704.y) + vec2<f32>(2.0f, 2.0f));
        let x_1707 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1706.x, x_1706.y, x_1707.z, x_1707.w);
        let x_1709 : vec3<f32> = u_xlat27;
        let x_1711 : vec2<f32> = (vec2<f32>(x_1709.x, x_1709.z) + vec2<f32>(2.0f, 2.0f));
        let x_1712 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1712.x, x_1711.x, x_1712.z, x_1711.y);
        let x_1715 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1715 * 0.081632003f);
        let x_1719 : vec4<f32> = u_xlat7;
        let x_1722 : vec3<f32> = (vec3<f32>(x_1719.z, x_1719.x, x_1719.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1723 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
        let x_1725 : vec4<f32> = u_xlat8;
        let x_1728 : vec2<f32> = (vec2<f32>(x_1725.x, x_1725.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1729 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
        let x_1732 : f32 = u_xlat11.y;
        u_xlat10.x = x_1732;
        let x_1734 : vec2<f32> = u_xlat46;
        let x_1741 : vec2<f32> = ((vec2<f32>(x_1734.x, x_1734.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1742 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1742.x, x_1741.x, x_1742.z, x_1741.y);
        let x_1744 : vec2<f32> = u_xlat46;
        let x_1748 : vec2<f32> = ((vec2<f32>(x_1744.x, x_1744.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1749 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1748.x, x_1749.y, x_1748.y, x_1749.w);
        let x_1752 : f32 = u_xlat7.x;
        u_xlat8.y = x_1752;
        let x_1755 : f32 = u_xlat9.y;
        u_xlat8.w = x_1755;
        let x_1757 : vec4<f32> = u_xlat8;
        let x_1758 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1757 + x_1758);
        let x_1760 : vec2<f32> = u_xlat46;
        let x_1763 : vec2<f32> = ((vec2<f32>(x_1760.y, x_1760.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1764.x, x_1763.x, x_1764.z, x_1763.y);
        let x_1766 : vec2<f32> = u_xlat46;
        let x_1769 : vec2<f32> = ((vec2<f32>(x_1766.y, x_1766.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1770 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1769.x, x_1770.y, x_1769.y, x_1770.w);
        let x_1773 : f32 = u_xlat7.y;
        u_xlat9.y = x_1773;
        let x_1775 : vec4<f32> = u_xlat9;
        let x_1776 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1775 + x_1776);
        let x_1778 : vec4<f32> = u_xlat8;
        let x_1779 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1778 / x_1779);
        let x_1781 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1781 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1787 : vec4<f32> = u_xlat9;
        let x_1788 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1787 / x_1788);
        let x_1790 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1790 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1792 : vec4<f32> = u_xlat8;
        let x_1795 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1792.w, x_1792.x, x_1792.y, x_1792.z) * vec4<f32>(x_1795.x, x_1795.x, x_1795.x, x_1795.x));
        let x_1798 : vec4<f32> = u_xlat9;
        let x_1801 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1798.x, x_1798.w, x_1798.y, x_1798.z) * vec4<f32>(x_1801.y, x_1801.y, x_1801.y, x_1801.y));
        let x_1804 : vec4<f32> = u_xlat8;
        let x_1805 : vec3<f32> = vec3<f32>(x_1804.y, x_1804.z, x_1804.w);
        let x_1806 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1805.x, x_1806.y, x_1805.y, x_1805.z);
        let x_1809 : f32 = u_xlat9.x;
        u_xlat11.y = x_1809;
        let x_1811 : vec4<f32> = u_xlat6;
        let x_1814 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1811.x, x_1811.y, x_1811.x, x_1811.y) * vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y)) + vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1817.y));
        let x_1820 : vec4<f32> = u_xlat6;
        let x_1823 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1826 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1820.x, x_1820.y) * vec2<f32>(x_1823.x, x_1823.y)) + vec2<f32>(x_1826.w, x_1826.y));
        let x_1830 : f32 = u_xlat11.y;
        u_xlat8.y = x_1830;
        let x_1833 : f32 = u_xlat9.z;
        u_xlat11.y = x_1833;
        let x_1835 : vec4<f32> = u_xlat6;
        let x_1838 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1841 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1835.x, x_1835.y, x_1835.x, x_1835.y) * vec4<f32>(x_1838.x, x_1838.y, x_1838.x, x_1838.y)) + vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1841.y));
        let x_1844 : vec4<f32> = u_xlat6;
        let x_1847 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1850 : vec4<f32> = u_xlat11;
        let x_1852 : vec2<f32> = ((vec2<f32>(x_1844.x, x_1844.y) * vec2<f32>(x_1847.x, x_1847.y)) + vec2<f32>(x_1850.w, x_1850.y));
        let x_1853 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1852.x, x_1852.y, x_1853.z, x_1853.w);
        let x_1856 : f32 = u_xlat11.y;
        u_xlat8.z = x_1856;
        let x_1859 : vec4<f32> = u_xlat6;
        let x_1862 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1865 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1859.x, x_1859.y, x_1859.x, x_1859.y) * vec4<f32>(x_1862.x, x_1862.y, x_1862.x, x_1862.y)) + vec4<f32>(x_1865.x, x_1865.y, x_1865.x, x_1865.z));
        let x_1869 : f32 = u_xlat9.w;
        u_xlat11.y = x_1869;
        let x_1872 : vec4<f32> = u_xlat6;
        let x_1875 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1878 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1872.x, x_1872.y, x_1872.x, x_1872.y) * vec4<f32>(x_1875.x, x_1875.y, x_1875.x, x_1875.y)) + vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1878.y));
        let x_1882 : vec4<f32> = u_xlat6;
        let x_1885 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1888 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1882.x, x_1882.y) * vec2<f32>(x_1885.x, x_1885.y)) + vec2<f32>(x_1888.w, x_1888.y));
        let x_1892 : f32 = u_xlat11.y;
        u_xlat8.w = x_1892;
        let x_1895 : vec4<f32> = u_xlat6;
        let x_1898 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1901 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1895.x, x_1895.y) * vec2<f32>(x_1898.x, x_1898.y)) + vec2<f32>(x_1901.x, x_1901.w));
        let x_1904 : vec4<f32> = u_xlat11;
        let x_1905 : vec3<f32> = vec3<f32>(x_1904.x, x_1904.z, x_1904.w);
        let x_1906 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1905.x, x_1906.y, x_1905.y, x_1905.z);
        let x_1908 : vec4<f32> = u_xlat6;
        let x_1911 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1914 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1908.x, x_1908.y, x_1908.x, x_1908.y) * vec4<f32>(x_1911.x, x_1911.y, x_1911.x, x_1911.y)) + vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1914.y));
        let x_1918 : vec4<f32> = u_xlat6;
        let x_1921 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1924 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1918.x, x_1918.y) * vec2<f32>(x_1921.x, x_1921.y)) + vec2<f32>(x_1924.w, x_1924.y));
        let x_1928 : f32 = u_xlat8.x;
        u_xlat9.x = x_1928;
        let x_1930 : vec4<f32> = u_xlat6;
        let x_1933 : vec4<f32> = x_1071.x_MainLightShadowmapSize;
        let x_1936 : vec4<f32> = u_xlat9;
        let x_1938 : vec2<f32> = ((vec2<f32>(x_1930.x, x_1930.y) * vec2<f32>(x_1933.x, x_1933.y)) + vec2<f32>(x_1936.x, x_1936.y));
        let x_1939 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1938.x, x_1938.y, x_1939.z, x_1939.w);
        let x_1942 : vec4<f32> = u_xlat7;
        let x_1944 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1942.x, x_1942.x, x_1942.x, x_1942.x) * x_1944);
        let x_1947 : vec4<f32> = u_xlat7;
        let x_1949 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1947.y, x_1947.y, x_1947.y, x_1947.y) * x_1949);
        let x_1952 : vec4<f32> = u_xlat7;
        let x_1954 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1952.z, x_1952.z, x_1952.z, x_1952.z) * x_1954);
        let x_1956 : vec4<f32> = u_xlat7;
        let x_1958 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1956.w, x_1956.w, x_1956.w, x_1956.w) * x_1958);
        let x_1961 : vec4<f32> = u_xlat12;
        let x_1962 : vec2<f32> = vec2<f32>(x_1961.x, x_1961.y);
        let x_1964 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1962.x, x_1962.y, x_1964);
        let x_1971 : vec3<f32> = txVec13;
        let x_1973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1971.xy, x_1971.z);
        u_xlat64 = x_1973;
        let x_1975 : vec4<f32> = u_xlat12;
        let x_1976 : vec2<f32> = vec2<f32>(x_1975.z, x_1975.w);
        let x_1978 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1976.x, x_1976.y, x_1978);
        let x_1985 : vec3<f32> = txVec14;
        let x_1987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1985.xy, x_1985.z);
        u_xlat65 = x_1987;
        let x_1988 : f32 = u_xlat65;
        let x_1990 : f32 = u_xlat17.y;
        u_xlat65 = (x_1988 * x_1990);
        let x_1993 : f32 = u_xlat17.x;
        let x_1994 : f32 = u_xlat64;
        let x_1996 : f32 = u_xlat65;
        u_xlat64 = ((x_1993 * x_1994) + x_1996);
        let x_1999 : vec2<f32> = u_xlat46;
        let x_2001 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1999.x, x_1999.y, x_2001);
        let x_2008 : vec3<f32> = txVec15;
        let x_2010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2008.xy, x_2008.z);
        u_xlat65 = x_2010;
        let x_2012 : f32 = u_xlat17.z;
        let x_2013 : f32 = u_xlat65;
        let x_2015 : f32 = u_xlat64;
        u_xlat64 = ((x_2012 * x_2013) + x_2015);
        let x_2018 : vec4<f32> = u_xlat15;
        let x_2019 : vec2<f32> = vec2<f32>(x_2018.x, x_2018.y);
        let x_2021 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_2019.x, x_2019.y, x_2021);
        let x_2028 : vec3<f32> = txVec16;
        let x_2030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2028.xy, x_2028.z);
        u_xlat65 = x_2030;
        let x_2032 : f32 = u_xlat17.w;
        let x_2033 : f32 = u_xlat65;
        let x_2035 : f32 = u_xlat64;
        u_xlat64 = ((x_2032 * x_2033) + x_2035);
        let x_2038 : vec4<f32> = u_xlat13;
        let x_2039 : vec2<f32> = vec2<f32>(x_2038.x, x_2038.y);
        let x_2041 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2039.x, x_2039.y, x_2041);
        let x_2048 : vec3<f32> = txVec17;
        let x_2050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2048.xy, x_2048.z);
        u_xlat65 = x_2050;
        let x_2052 : f32 = u_xlat18.x;
        let x_2053 : f32 = u_xlat65;
        let x_2055 : f32 = u_xlat64;
        u_xlat64 = ((x_2052 * x_2053) + x_2055);
        let x_2058 : vec4<f32> = u_xlat13;
        let x_2059 : vec2<f32> = vec2<f32>(x_2058.z, x_2058.w);
        let x_2061 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2059.x, x_2059.y, x_2061);
        let x_2068 : vec3<f32> = txVec18;
        let x_2070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2068.xy, x_2068.z);
        u_xlat65 = x_2070;
        let x_2072 : f32 = u_xlat18.y;
        let x_2073 : f32 = u_xlat65;
        let x_2075 : f32 = u_xlat64;
        u_xlat64 = ((x_2072 * x_2073) + x_2075);
        let x_2078 : vec4<f32> = u_xlat14;
        let x_2079 : vec2<f32> = vec2<f32>(x_2078.x, x_2078.y);
        let x_2081 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2079.x, x_2079.y, x_2081);
        let x_2088 : vec3<f32> = txVec19;
        let x_2090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2088.xy, x_2088.z);
        u_xlat65 = x_2090;
        let x_2092 : f32 = u_xlat18.z;
        let x_2093 : f32 = u_xlat65;
        let x_2095 : f32 = u_xlat64;
        u_xlat64 = ((x_2092 * x_2093) + x_2095);
        let x_2098 : vec4<f32> = u_xlat15;
        let x_2099 : vec2<f32> = vec2<f32>(x_2098.z, x_2098.w);
        let x_2101 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2099.x, x_2099.y, x_2101);
        let x_2108 : vec3<f32> = txVec20;
        let x_2110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2108.xy, x_2108.z);
        u_xlat65 = x_2110;
        let x_2112 : f32 = u_xlat18.w;
        let x_2113 : f32 = u_xlat65;
        let x_2115 : f32 = u_xlat64;
        u_xlat64 = ((x_2112 * x_2113) + x_2115);
        let x_2118 : vec4<f32> = u_xlat16;
        let x_2119 : vec2<f32> = vec2<f32>(x_2118.x, x_2118.y);
        let x_2121 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
        let x_2128 : vec3<f32> = txVec21;
        let x_2130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2128.xy, x_2128.z);
        u_xlat65 = x_2130;
        let x_2132 : f32 = u_xlat19.x;
        let x_2133 : f32 = u_xlat65;
        let x_2135 : f32 = u_xlat64;
        u_xlat64 = ((x_2132 * x_2133) + x_2135);
        let x_2138 : vec4<f32> = u_xlat16;
        let x_2139 : vec2<f32> = vec2<f32>(x_2138.z, x_2138.w);
        let x_2141 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2139.x, x_2139.y, x_2141);
        let x_2148 : vec3<f32> = txVec22;
        let x_2150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2148.xy, x_2148.z);
        u_xlat65 = x_2150;
        let x_2152 : f32 = u_xlat19.y;
        let x_2153 : f32 = u_xlat65;
        let x_2155 : f32 = u_xlat64;
        u_xlat64 = ((x_2152 * x_2153) + x_2155);
        let x_2158 : vec2<f32> = u_xlat28;
        let x_2160 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2158.x, x_2158.y, x_2160);
        let x_2167 : vec3<f32> = txVec23;
        let x_2169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2167.xy, x_2167.z);
        u_xlat65 = x_2169;
        let x_2171 : f32 = u_xlat19.z;
        let x_2172 : f32 = u_xlat65;
        let x_2174 : f32 = u_xlat64;
        u_xlat64 = ((x_2171 * x_2172) + x_2174);
        let x_2177 : vec2<f32> = u_xlat54;
        let x_2179 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2177.x, x_2177.y, x_2179);
        let x_2186 : vec3<f32> = txVec24;
        let x_2188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2186.xy, x_2186.z);
        u_xlat65 = x_2188;
        let x_2190 : f32 = u_xlat19.w;
        let x_2191 : f32 = u_xlat65;
        let x_2193 : f32 = u_xlat64;
        u_xlat64 = ((x_2190 * x_2191) + x_2193);
        let x_2196 : vec4<f32> = u_xlat11;
        let x_2197 : vec2<f32> = vec2<f32>(x_2196.x, x_2196.y);
        let x_2199 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2197.x, x_2197.y, x_2199);
        let x_2206 : vec3<f32> = txVec25;
        let x_2208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2206.xy, x_2206.z);
        u_xlat65 = x_2208;
        let x_2210 : f32 = u_xlat7.x;
        let x_2211 : f32 = u_xlat65;
        let x_2213 : f32 = u_xlat64;
        u_xlat64 = ((x_2210 * x_2211) + x_2213);
        let x_2216 : vec4<f32> = u_xlat11;
        let x_2217 : vec2<f32> = vec2<f32>(x_2216.z, x_2216.w);
        let x_2219 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2217.x, x_2217.y, x_2219);
        let x_2226 : vec3<f32> = txVec26;
        let x_2228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2226.xy, x_2226.z);
        u_xlat65 = x_2228;
        let x_2230 : f32 = u_xlat7.y;
        let x_2231 : f32 = u_xlat65;
        let x_2233 : f32 = u_xlat64;
        u_xlat64 = ((x_2230 * x_2231) + x_2233);
        let x_2236 : vec2<f32> = u_xlat49;
        let x_2238 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2236.x, x_2236.y, x_2238);
        let x_2245 : vec3<f32> = txVec27;
        let x_2247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2245.xy, x_2245.z);
        u_xlat65 = x_2247;
        let x_2249 : f32 = u_xlat7.z;
        let x_2250 : f32 = u_xlat65;
        let x_2252 : f32 = u_xlat64;
        u_xlat64 = ((x_2249 * x_2250) + x_2252);
        let x_2255 : vec4<f32> = u_xlat6;
        let x_2256 : vec2<f32> = vec2<f32>(x_2255.x, x_2255.y);
        let x_2258 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2256.x, x_2256.y, x_2258);
        let x_2265 : vec3<f32> = txVec28;
        let x_2267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2265.xy, x_2265.z);
        u_xlat65 = x_2267;
        let x_2269 : f32 = u_xlat7.w;
        let x_2270 : f32 = u_xlat65;
        let x_2272 : f32 = u_xlat64;
        u_xlat3.x = ((x_2269 * x_2270) + x_2272);
      }
    }
  } else {
    let x_2277 : vec4<f32> = vs_TEXCOORD8;
    let x_2278 : vec2<f32> = vec2<f32>(x_2277.x, x_2277.y);
    let x_2280 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2278.x, x_2278.y, x_2280);
    let x_2287 : vec3<f32> = txVec29;
    let x_2289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2287.xy, x_2287.z);
    u_xlat3.x = x_2289;
  }
  let x_2292 : f32 = x_1071.x_MainLightShadowParams.x;
  u_xlat64 = (-(x_2292) + 1.0f);
  let x_2296 : f32 = u_xlat3.x;
  let x_2298 : f32 = x_1071.x_MainLightShadowParams.x;
  let x_2300 : f32 = u_xlat64;
  u_xlat3.x = ((x_2296 * x_2298) + x_2300);
  let x_2304 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (0.0f >= x_2304);
  let x_2308 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (x_2308 >= 1.0f);
  let x_2310 : bool = u_xlatb64;
  let x_2311 : bool = u_xlatb65;
  u_xlatb64 = (x_2310 | x_2311);
  let x_2313 : bool = u_xlatb64;
  if (x_2313) {
    x_2314 = 1.0f;
  } else {
    let x_2319 : f32 = u_xlat3.x;
    x_2314 = x_2319;
  }
  let x_2320 : f32 = x_2314;
  u_xlat3.x = x_2320;
  let x_2322 : vec3<f32> = vs_TEXCOORD7;
  let x_2325 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2327 : vec3<f32> = (x_2322 + -(x_2325));
  let x_2328 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
  let x_2330 : vec4<f32> = u_xlat6;
  let x_2332 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2330.x, x_2330.y, x_2330.z), vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
  let x_2335 : f32 = u_xlat64;
  let x_2337 : f32 = x_1071.x_MainLightShadowParams.z;
  let x_2340 : f32 = x_1071.x_MainLightShadowParams.w;
  u_xlat64 = ((x_2335 * x_2337) + x_2340);
  let x_2342 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2342, 0.0f, 1.0f);
  let x_2345 : f32 = u_xlat3.x;
  u_xlat65 = (-(x_2345) + 1.0f);
  let x_2348 : f32 = u_xlat64;
  let x_2349 : f32 = u_xlat65;
  let x_2352 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2348 * x_2349) + x_2352);
  let x_2355 : f32 = u_xlat43;
  let x_2358 : vec4<f32> = x_126.x_MainLightColor;
  let x_2360 : vec3<f32> = (vec3<f32>(x_2355, x_2355, x_2355) * vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
  let x_2361 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
  let x_2364 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2364;
  let x_2367 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2367;
  let x_2370 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2370;
  let x_2372 : vec4<f32> = u_xlat7;
  let x_2375 : vec4<f32> = u_xlat1;
  u_xlat64 = dot(-(vec3<f32>(x_2372.x, x_2372.y, x_2372.z)), vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
  let x_2378 : f32 = u_xlat64;
  let x_2379 : f32 = u_xlat64;
  u_xlat64 = (x_2378 + x_2379);
  let x_2381 : vec4<f32> = u_xlat1;
  let x_2383 : f32 = u_xlat64;
  let x_2387 : vec4<f32> = u_xlat7;
  let x_2390 : vec3<f32> = ((vec3<f32>(x_2381.x, x_2381.y, x_2381.z) * -(vec3<f32>(x_2383, x_2383, x_2383))) + -(vec3<f32>(x_2387.x, x_2387.y, x_2387.z)));
  let x_2391 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
  let x_2393 : vec4<f32> = u_xlat1;
  let x_2395 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2393.x, x_2393.y, x_2393.z), vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2398, 0.0f, 1.0f);
  let x_2400 : f32 = u_xlat64;
  u_xlat64 = (-(x_2400) + 1.0f);
  let x_2403 : f32 = u_xlat64;
  let x_2404 : f32 = u_xlat64;
  u_xlat64 = (x_2403 * x_2404);
  let x_2406 : f32 = u_xlat64;
  let x_2407 : f32 = u_xlat64;
  u_xlat64 = (x_2406 * x_2407);
  let x_2410 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_2410) * 0.699999988f) + 1.700000048f);
  let x_2417 : f32 = u_xlat0.x;
  let x_2418 : f32 = u_xlat65;
  u_xlat0.x = (x_2417 * x_2418);
  let x_2422 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2422 * 6.0f);
  let x_2434 : vec4<f32> = u_xlat8;
  let x_2437 : f32 = u_xlat0.x;
  let x_2438 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2434.x, x_2434.y, x_2434.z), x_2437);
  u_xlat8 = x_2438;
  let x_2440 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2440 + -1.0f);
  let x_2444 : f32 = x_887.unity_SpecCube0_HDR.w;
  let x_2446 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2444 * x_2446) + 1.0f);
  let x_2451 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2451, 0.0f);
  let x_2455 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2455);
  let x_2459 : f32 = u_xlat0.x;
  let x_2461 : f32 = x_887.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2459 * x_2461);
  let x_2465 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2465);
  let x_2469 : f32 = u_xlat0.x;
  let x_2471 : f32 = x_887.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2469 * x_2471);
  let x_2474 : vec4<f32> = u_xlat8;
  let x_2476 : vec3<f32> = u_xlat0;
  let x_2478 : vec3<f32> = (vec3<f32>(x_2474.x, x_2474.y, x_2474.z) * vec3<f32>(x_2476.x, x_2476.x, x_2476.x));
  let x_2479 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
  let x_2481 : f32 = u_xlat40;
  let x_2483 : f32 = u_xlat40;
  let x_2487 : vec2<f32> = ((vec2<f32>(x_2481, x_2481) * vec2<f32>(x_2483, x_2483)) + vec2<f32>(-1.0f, 1.0f));
  let x_2488 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2487.x, x_2488.y, x_2487.y);
  let x_2491 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2491);
  let x_2493 : vec4<f32> = u_xlat5;
  let x_2496 : f32 = u_xlat23;
  let x_2498 : vec3<f32> = (-(vec3<f32>(x_2493.x, x_2493.y, x_2493.z)) + vec3<f32>(x_2496, x_2496, x_2496));
  let x_2499 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
  let x_2501 : f32 = u_xlat64;
  let x_2503 : vec4<f32> = u_xlat9;
  let x_2506 : vec4<f32> = u_xlat5;
  let x_2508 : vec3<f32> = ((vec3<f32>(x_2501, x_2501, x_2501) * vec3<f32>(x_2503.x, x_2503.y, x_2503.z)) + vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
  let x_2509 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
  let x_2511 : f32 = u_xlat40;
  let x_2513 : vec4<f32> = u_xlat9;
  let x_2515 : vec3<f32> = (vec3<f32>(x_2511, x_2511, x_2511) * vec3<f32>(x_2513.x, x_2513.y, x_2513.z));
  let x_2516 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2515.x, x_2515.y, x_2515.z, x_2516.w);
  let x_2518 : vec4<f32> = u_xlat8;
  let x_2520 : vec4<f32> = u_xlat9;
  let x_2522 : vec3<f32> = (vec3<f32>(x_2518.x, x_2518.y, x_2518.z) * vec3<f32>(x_2520.x, x_2520.y, x_2520.z));
  let x_2523 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
  let x_2525 : vec3<f32> = u_xlat22;
  let x_2526 : vec4<f32> = u_xlat4;
  let x_2529 : vec4<f32> = u_xlat8;
  u_xlat22 = ((x_2525 * vec3<f32>(x_2526.x, x_2526.y, x_2526.z)) + vec3<f32>(x_2529.x, x_2529.y, x_2529.z));
  let x_2533 : f32 = u_xlat3.x;
  let x_2535 : f32 = x_887.unity_LightData.z;
  u_xlat40 = (x_2533 * x_2535);
  let x_2537 : vec4<f32> = u_xlat1;
  let x_2540 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2537.x, x_2537.y, x_2537.z), vec3<f32>(x_2540.x, x_2540.y, x_2540.z));
  let x_2545 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2545, 0.0f, 1.0f);
  let x_2548 : f32 = u_xlat40;
  let x_2550 : f32 = u_xlat3.x;
  u_xlat40 = (x_2548 * x_2550);
  let x_2552 : f32 = u_xlat40;
  let x_2554 : vec4<f32> = u_xlat6;
  let x_2556 : vec3<f32> = (vec3<f32>(x_2552, x_2552, x_2552) * vec3<f32>(x_2554.x, x_2554.y, x_2554.z));
  let x_2557 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2557.w);
  let x_2559 : vec4<f32> = u_xlat7;
  let x_2562 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2564 : vec3<f32> = (vec3<f32>(x_2559.x, x_2559.y, x_2559.z) + vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
  let x_2565 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
  let x_2567 : vec4<f32> = u_xlat8;
  let x_2569 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2567.x, x_2567.y, x_2567.z), vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
  let x_2572 : f32 = u_xlat40;
  u_xlat40 = max(x_2572, 1.17549435e-37f);
  let x_2575 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2575);
  let x_2577 : f32 = u_xlat40;
  let x_2579 : vec4<f32> = u_xlat8;
  let x_2581 : vec3<f32> = (vec3<f32>(x_2577, x_2577, x_2577) * vec3<f32>(x_2579.x, x_2579.y, x_2579.z));
  let x_2582 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
  let x_2584 : vec4<f32> = u_xlat1;
  let x_2586 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2584.x, x_2584.y, x_2584.z), vec3<f32>(x_2586.x, x_2586.y, x_2586.z));
  let x_2589 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2589, 0.0f, 1.0f);
  let x_2592 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2594 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2592.x, x_2592.y, x_2592.z), vec3<f32>(x_2594.x, x_2594.y, x_2594.z));
  let x_2599 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2599, 0.0f, 1.0f);
  let x_2602 : f32 = u_xlat40;
  let x_2603 : f32 = u_xlat40;
  u_xlat40 = (x_2602 * x_2603);
  let x_2605 : f32 = u_xlat40;
  let x_2607 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2605 * x_2607) + 1.000010014f);
  let x_2612 : f32 = u_xlat3.x;
  let x_2614 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2612 * x_2614);
  let x_2617 : f32 = u_xlat40;
  let x_2618 : f32 = u_xlat40;
  u_xlat40 = (x_2617 * x_2618);
  let x_2621 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2621, 0.100000001f);
  let x_2625 : f32 = u_xlat40;
  let x_2627 : f32 = u_xlat3.x;
  u_xlat40 = (x_2625 * x_2627);
  let x_2629 : f32 = u_xlat63;
  let x_2630 : f32 = u_xlat40;
  u_xlat40 = (x_2629 * x_2630);
  let x_2632 : f32 = u_xlat61;
  let x_2633 : f32 = u_xlat40;
  u_xlat40 = (x_2632 / x_2633);
  let x_2635 : vec4<f32> = u_xlat5;
  let x_2637 : f32 = u_xlat40;
  let x_2640 : vec4<f32> = u_xlat4;
  let x_2642 : vec3<f32> = ((vec3<f32>(x_2635.x, x_2635.y, x_2635.z) * vec3<f32>(x_2637, x_2637, x_2637)) + vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
  let x_2643 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
  let x_2645 : vec4<f32> = u_xlat6;
  let x_2647 : vec4<f32> = u_xlat8;
  let x_2649 : vec3<f32> = (vec3<f32>(x_2645.x, x_2645.y, x_2645.z) * vec3<f32>(x_2647.x, x_2647.y, x_2647.z));
  let x_2650 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2650.w);
  let x_2653 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2655 : f32 = x_887.unity_LightData.y;
  u_xlat40 = min(x_2653, x_2655);
  let x_2659 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2659));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2671 : u32 = u_xlatu_loop_1;
    let x_2672 : u32 = u_xlatu40;
    if ((x_2671 < x_2672)) {
    } else {
      break;
    }
    let x_2675 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_2675 >> 2u);
    let x_2679 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_2679 & 3u));
    let x_2682 : u32 = u_xlatu23;
    let x_2685 : vec4<f32> = x_887.unity_LightIndices[bitcast<i32>(x_2682)];
    let x_2695 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2700 : vec4<u32> = indexable[x_2695];
    u_xlat23 = dot(x_2685, bitcast<vec4<f32>>(x_2700));
    let x_2704 : f32 = u_xlat23;
    u_xlati23 = i32(x_2704);
    let x_2706 : vec3<f32> = vs_TEXCOORD7;
    let x_2718 : i32 = u_xlati23;
    let x_2720 : vec4<f32> = x_2717.x_AdditionalLightsPosition[x_2718];
    let x_2723 : i32 = u_xlati23;
    let x_2725 : vec4<f32> = x_2717.x_AdditionalLightsPosition[x_2723];
    let x_2727 : vec3<f32> = ((-(x_2706) * vec3<f32>(x_2720.w, x_2720.w, x_2720.w)) + vec3<f32>(x_2725.x, x_2725.y, x_2725.z));
    let x_2728 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2728.w);
    let x_2730 : vec4<f32> = u_xlat9;
    let x_2732 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2730.x, x_2730.y, x_2730.z), vec3<f32>(x_2732.x, x_2732.y, x_2732.z));
    let x_2735 : f32 = u_xlat64;
    u_xlat64 = max(x_2735, 6.10351562e-05f);
    let x_2737 : f32 = u_xlat64;
    u_xlat65 = inverseSqrt(x_2737);
    let x_2739 : f32 = u_xlat65;
    let x_2741 : vec4<f32> = u_xlat9;
    let x_2743 : vec3<f32> = (vec3<f32>(x_2739, x_2739, x_2739) * vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
    let x_2744 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
    let x_2747 : f32 = u_xlat64;
    u_xlat66 = (1.0f / x_2747);
    let x_2749 : f32 = u_xlat64;
    let x_2750 : i32 = u_xlati23;
    let x_2752 : f32 = x_2717.x_AdditionalLightsAttenuation[x_2750].x;
    u_xlat64 = (x_2749 * x_2752);
    let x_2754 : f32 = u_xlat64;
    let x_2756 : f32 = u_xlat64;
    u_xlat64 = ((-(x_2754) * x_2756) + 1.0f);
    let x_2759 : f32 = u_xlat64;
    u_xlat64 = max(x_2759, 0.0f);
    let x_2761 : f32 = u_xlat64;
    let x_2762 : f32 = u_xlat64;
    u_xlat64 = (x_2761 * x_2762);
    let x_2764 : f32 = u_xlat64;
    let x_2765 : f32 = u_xlat66;
    u_xlat64 = (x_2764 * x_2765);
    let x_2767 : i32 = u_xlati23;
    let x_2769 : vec4<f32> = x_2717.x_AdditionalLightsSpotDir[x_2767];
    let x_2771 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2769.x, x_2769.y, x_2769.z), vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
    let x_2774 : f32 = u_xlat66;
    let x_2775 : i32 = u_xlati23;
    let x_2777 : f32 = x_2717.x_AdditionalLightsAttenuation[x_2775].z;
    let x_2779 : i32 = u_xlati23;
    let x_2781 : f32 = x_2717.x_AdditionalLightsAttenuation[x_2779].w;
    u_xlat66 = ((x_2774 * x_2777) + x_2781);
    let x_2783 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2783, 0.0f, 1.0f);
    let x_2785 : f32 = u_xlat66;
    let x_2786 : f32 = u_xlat66;
    u_xlat66 = (x_2785 * x_2786);
    let x_2788 : f32 = u_xlat64;
    let x_2789 : f32 = u_xlat66;
    u_xlat64 = (x_2788 * x_2789);
    let x_2791 : f32 = u_xlat43;
    let x_2793 : i32 = u_xlati23;
    let x_2795 : vec4<f32> = x_2717.x_AdditionalLightsColor[x_2793];
    let x_2797 : vec3<f32> = (vec3<f32>(x_2791, x_2791, x_2791) * vec3<f32>(x_2795.x, x_2795.y, x_2795.z));
    let x_2798 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2798.w);
    let x_2800 : vec4<f32> = u_xlat1;
    let x_2802 : vec4<f32> = u_xlat10;
    u_xlat23 = dot(vec3<f32>(x_2800.x, x_2800.y, x_2800.z), vec3<f32>(x_2802.x, x_2802.y, x_2802.z));
    let x_2805 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2805, 0.0f, 1.0f);
    let x_2807 : f32 = u_xlat23;
    let x_2808 : f32 = u_xlat64;
    u_xlat23 = (x_2807 * x_2808);
    let x_2810 : f32 = u_xlat23;
    let x_2812 : vec4<f32> = u_xlat11;
    let x_2814 : vec3<f32> = (vec3<f32>(x_2810, x_2810, x_2810) * vec3<f32>(x_2812.x, x_2812.y, x_2812.z));
    let x_2815 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2814.x, x_2814.y, x_2814.z, x_2815.w);
    let x_2817 : vec4<f32> = u_xlat9;
    let x_2819 : f32 = u_xlat65;
    let x_2822 : vec4<f32> = u_xlat7;
    let x_2824 : vec3<f32> = ((vec3<f32>(x_2817.x, x_2817.y, x_2817.z) * vec3<f32>(x_2819, x_2819, x_2819)) + vec3<f32>(x_2822.x, x_2822.y, x_2822.z));
    let x_2825 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2824.x, x_2824.y, x_2824.z, x_2825.w);
    let x_2827 : vec4<f32> = u_xlat9;
    let x_2829 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(vec3<f32>(x_2827.x, x_2827.y, x_2827.z), vec3<f32>(x_2829.x, x_2829.y, x_2829.z));
    let x_2832 : f32 = u_xlat23;
    u_xlat23 = max(x_2832, 1.17549435e-37f);
    let x_2834 : f32 = u_xlat23;
    u_xlat23 = inverseSqrt(x_2834);
    let x_2836 : f32 = u_xlat23;
    let x_2838 : vec4<f32> = u_xlat9;
    let x_2840 : vec3<f32> = (vec3<f32>(x_2836, x_2836, x_2836) * vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2841 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
    let x_2843 : vec4<f32> = u_xlat1;
    let x_2845 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(vec3<f32>(x_2843.x, x_2843.y, x_2843.z), vec3<f32>(x_2845.x, x_2845.y, x_2845.z));
    let x_2848 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2848, 0.0f, 1.0f);
    let x_2850 : vec4<f32> = u_xlat10;
    let x_2852 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2850.x, x_2850.y, x_2850.z), vec3<f32>(x_2852.x, x_2852.y, x_2852.z));
    let x_2855 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2855, 0.0f, 1.0f);
    let x_2857 : f32 = u_xlat23;
    let x_2858 : f32 = u_xlat23;
    u_xlat23 = (x_2857 * x_2858);
    let x_2860 : f32 = u_xlat23;
    let x_2862 : f32 = u_xlat0.x;
    u_xlat23 = ((x_2860 * x_2862) + 1.000010014f);
    let x_2865 : f32 = u_xlat64;
    let x_2866 : f32 = u_xlat64;
    u_xlat64 = (x_2865 * x_2866);
    let x_2868 : f32 = u_xlat23;
    let x_2869 : f32 = u_xlat23;
    u_xlat23 = (x_2868 * x_2869);
    let x_2871 : f32 = u_xlat64;
    u_xlat64 = max(x_2871, 0.100000001f);
    let x_2873 : f32 = u_xlat23;
    let x_2874 : f32 = u_xlat64;
    u_xlat23 = (x_2873 * x_2874);
    let x_2876 : f32 = u_xlat63;
    let x_2877 : f32 = u_xlat23;
    u_xlat23 = (x_2876 * x_2877);
    let x_2879 : f32 = u_xlat61;
    let x_2880 : f32 = u_xlat23;
    u_xlat23 = (x_2879 / x_2880);
    let x_2882 : vec4<f32> = u_xlat5;
    let x_2884 : f32 = u_xlat23;
    let x_2887 : vec4<f32> = u_xlat4;
    let x_2889 : vec3<f32> = ((vec3<f32>(x_2882.x, x_2882.y, x_2882.z) * vec3<f32>(x_2884, x_2884, x_2884)) + vec3<f32>(x_2887.x, x_2887.y, x_2887.z));
    let x_2890 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2889.x, x_2889.y, x_2889.z, x_2890.w);
    let x_2892 : vec4<f32> = u_xlat9;
    let x_2894 : vec4<f32> = u_xlat11;
    let x_2897 : vec4<f32> = u_xlat8;
    let x_2899 : vec3<f32> = ((vec3<f32>(x_2892.x, x_2892.y, x_2892.z) * vec3<f32>(x_2894.x, x_2894.y, x_2894.z)) + vec3<f32>(x_2897.x, x_2897.y, x_2897.z));
    let x_2900 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2899.x, x_2899.y, x_2899.z, x_2900.w);

    continuing {
      let x_2902 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2902 + bitcast<u32>(1i));
    }
  }
  let x_2904 : vec3<f32> = u_xlat22;
  let x_2905 : f32 = u_xlat20;
  let x_2908 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2904 * vec3<f32>(x_2905, x_2905, x_2905)) + vec3<f32>(x_2908.x, x_2908.y, x_2908.z));
  let x_2911 : vec4<f32> = u_xlat8;
  let x_2913 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2911.x, x_2911.y, x_2911.z) + x_2913);
  let x_2916 : f32 = u_xlat2.x;
  let x_2918 : f32 = u_xlat2.x;
  u_xlat1.x = (x_2916 * -(x_2918));
  let x_2923 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2923);
  let x_2926 : vec3<f32> = u_xlat0;
  let x_2927 : f32 = u_xlat60;
  let x_2931 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_2926 * vec3<f32>(x_2927, x_2927, x_2927)) + -(vec3<f32>(x_2931.x, x_2931.y, x_2931.z)));
  let x_2937 : vec4<f32> = u_xlat1;
  let x_2939 : vec3<f32> = u_xlat0;
  let x_2942 : vec4<f32> = x_126.unity_FogColor;
  let x_2944 : vec3<f32> = ((vec3<f32>(x_2937.x, x_2937.x, x_2937.x) * x_2939) + vec3<f32>(x_2942.x, x_2942.y, x_2942.z));
  let x_2945 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2944.x, x_2944.y, x_2944.z, x_2945.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

