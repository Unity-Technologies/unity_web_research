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
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(7) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(8) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_999 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2374 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2649 : AdditionalLights;

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
  var u_xlat62 : f32;
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
  var x_2242 : f32;
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
  u_xlat61 = (x_836 * x_838);
  let x_841 : f32 = x_126.unity_MatrixV[0i].z;
  let x_843 : f32 = vs_TEXCOORD7.x;
  let x_845 : f32 = u_xlat61;
  u_xlat61 = ((x_841 * x_843) + x_845);
  let x_848 : f32 = x_126.unity_MatrixV[2i].z;
  let x_850 : f32 = vs_TEXCOORD7.z;
  let x_852 : f32 = u_xlat61;
  u_xlat61 = ((x_848 * x_850) + x_852);
  let x_854 : f32 = u_xlat61;
  let x_856 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat61 = (x_854 + x_856);
  let x_858 : f32 = u_xlat61;
  let x_861 : f32 = x_126.x_ProjectionParams.y;
  u_xlat61 = (-(x_858) + -(x_861));
  let x_864 : f32 = u_xlat61;
  u_xlat61 = max(x_864, 0.0f);
  let x_866 : f32 = u_xlat61;
  let x_868 : f32 = x_126.unity_FogParams.x;
  u_xlat61 = (x_866 * x_868);
  let x_875 : vec4<f32> = vs_TEXCOORD0;
  let x_878 : f32 = x_126.x_GlobalMipBias.x;
  let x_879 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_875.z, x_875.w), x_878);
  u_xlat2 = vec3<f32>(x_879.x, x_879.y, x_879.z);
  let x_883 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_884 : vec2<f32> = vec2<f32>(x_883.x, x_883.y);
  let x_888 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_884.x, x_884.y));
  let x_889 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat3;
  let x_893 : vec4<f32> = hlslcc_FragCoord;
  let x_895 : vec2<f32> = (vec2<f32>(x_891.x, x_891.y) * vec2<f32>(x_893.x, x_893.y));
  let x_896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_900 : f32 = u_xlat3.y;
  let x_902 : f32 = x_126.x_ScaleBiasRt.x;
  let x_905 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat62 = ((x_900 * x_902) + x_905);
  let x_907 : f32 = u_xlat62;
  u_xlat3.z = (-(x_907) + 1.0f);
  let x_912 : f32 = u_xlat0.x;
  u_xlat62 = ((-(x_912) * 0.959999979f) + 0.959999979f);
  let x_918 : f32 = u_xlat40;
  let x_919 : f32 = u_xlat62;
  u_xlat23 = (x_918 + -(x_919));
  let x_922 : f32 = u_xlat62;
  let x_924 : vec4<f32> = u_xlat5;
  let x_926 : vec3<f32> = (vec3<f32>(x_922, x_922, x_922) * vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat5;
  let x_933 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_934 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec3<f32> = u_xlat0;
  let x_938 : vec4<f32> = u_xlat5;
  let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.x, x_936.x) * vec3<f32>(x_938.x, x_938.y, x_938.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_944 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : f32 = u_xlat40;
  u_xlat0.x = (-(x_946) + 1.0f);
  let x_951 : f32 = u_xlat0.x;
  let x_953 : f32 = u_xlat0.x;
  u_xlat40 = (x_951 * x_953);
  let x_955 : f32 = u_xlat40;
  u_xlat40 = max(x_955, 0.0078125f);
  let x_958 : f32 = u_xlat40;
  let x_959 : f32 = u_xlat40;
  u_xlat62 = (x_958 * x_959);
  let x_961 : f32 = u_xlat23;
  u_xlat23 = (x_961 + 1.0f);
  let x_963 : f32 = u_xlat23;
  u_xlat23 = clamp(x_963, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat40;
  u_xlat63 = ((x_966 * 4.0f) + 2.0f);
  let x_974 : vec4<f32> = u_xlat3;
  let x_977 : f32 = x_126.x_GlobalMipBias.x;
  let x_978 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_974.x, x_974.z), x_977);
  u_xlat3.x = x_978.x;
  let x_983 : f32 = u_xlat3.x;
  u_xlat43 = (x_983 + -1.0f);
  let x_986 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_987 : f32 = u_xlat43;
  u_xlat43 = ((x_986 * x_987) + 1.0f);
  let x_990 : f32 = u_xlat20;
  let x_992 : f32 = u_xlat3.x;
  u_xlat20 = min(x_990, x_992);
  let x_1001 : f32 = x_999.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_1001);
  let x_1003 : bool = u_xlatb3;
  if (x_1003) {
    let x_1007 : f32 = x_999.x_MainLightShadowParams.y;
    u_xlatb3 = (x_1007 == 1.0f);
    let x_1009 : bool = u_xlatb3;
    if (x_1009) {
      let x_1013 : vec4<f32> = vs_TEXCOORD8;
      let x_1016 : vec4<f32> = x_999.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) + x_1016);
      let x_1019 : vec4<f32> = u_xlat6;
      let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
      let x_1022 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
      let x_1034 : vec3<f32> = txVec0;
      let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1034.xy, x_1034.z);
      u_xlat7.x = x_1036;
      let x_1039 : vec4<f32> = u_xlat6;
      let x_1040 : vec2<f32> = vec2<f32>(x_1039.z, x_1039.w);
      let x_1042 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
      let x_1049 : vec3<f32> = txVec1;
      let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1049.xy, x_1049.z);
      u_xlat7.y = x_1051;
      let x_1053 : vec4<f32> = vs_TEXCOORD8;
      let x_1056 : vec4<f32> = x_999.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y) + x_1056);
      let x_1059 : vec4<f32> = u_xlat6;
      let x_1060 : vec2<f32> = vec2<f32>(x_1059.x, x_1059.y);
      let x_1062 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1060.x, x_1060.y, x_1062);
      let x_1069 : vec3<f32> = txVec2;
      let x_1071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1069.xy, x_1069.z);
      u_xlat7.z = x_1071;
      let x_1074 : vec4<f32> = u_xlat6;
      let x_1075 : vec2<f32> = vec2<f32>(x_1074.z, x_1074.w);
      let x_1077 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1075.x, x_1075.y, x_1077);
      let x_1084 : vec3<f32> = txVec3;
      let x_1086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1084.xy, x_1084.z);
      u_xlat7.w = x_1086;
      let x_1088 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1088, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1096 : f32 = x_999.x_MainLightShadowParams.y;
      u_xlatb64 = (x_1096 == 2.0f);
      let x_1098 : bool = u_xlatb64;
      if (x_1098) {
        let x_1101 : vec4<f32> = vs_TEXCOORD8;
        let x_1104 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(x_1104.z, x_1104.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1108 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat6;
        let x_1112 : vec2<f32> = floor(vec2<f32>(x_1110.x, x_1110.y));
        let x_1113 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
        let x_1117 : vec4<f32> = vs_TEXCOORD8;
        let x_1120 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1120.z, x_1120.w)) + -(vec2<f32>(x_1123.x, x_1123.y)));
        let x_1127 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1127.x, x_1127.x, x_1127.y, x_1127.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1131 : vec4<f32> = u_xlat7;
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1131.x, x_1131.x, x_1131.z, x_1131.z) * vec4<f32>(x_1133.x, x_1133.x, x_1133.z, x_1133.z));
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1140 : vec2<f32> = (vec2<f32>(x_1136.y, x_1136.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1141 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat8;
        let x_1146 : vec2<f32> = u_xlat46;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1143.x, x_1143.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1146));
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1152 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1152) + vec2<f32>(1.0f, 1.0f));
        let x_1155 : vec2<f32> = u_xlat46;
        let x_1157 : vec2<f32> = min(x_1155, vec2<f32>(0.0f, 0.0f));
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1163 : vec4<f32> = u_xlat9;
        let x_1166 : vec2<f32> = u_xlat48;
        let x_1167 : vec2<f32> = ((-(vec2<f32>(x_1160.x, x_1160.y)) * vec2<f32>(x_1163.x, x_1163.y)) + x_1166);
        let x_1168 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1170, vec2<f32>(0.0f, 0.0f));
        let x_1172 : vec2<f32> = u_xlat46;
        let x_1174 : vec2<f32> = u_xlat46;
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1172) * x_1174) + vec2<f32>(x_1176.y, x_1176.w));
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1181 : vec2<f32> = (vec2<f32>(x_1179.x, x_1179.y) + vec2<f32>(1.0f, 1.0f));
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1184 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1184 + vec2<f32>(1.0f, 1.0f));
        let x_1186 : vec4<f32> = u_xlat8;
        let x_1190 : vec2<f32> = (vec2<f32>(x_1186.x, x_1186.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1191 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
        let x_1193 : vec2<f32> = u_xlat48;
        let x_1194 : vec2<f32> = (x_1193 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1194.x, x_1194.y, x_1195.z, x_1195.w);
        let x_1197 : vec4<f32> = u_xlat9;
        let x_1199 : vec2<f32> = (vec2<f32>(x_1197.x, x_1197.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
        let x_1202 : vec2<f32> = u_xlat46;
        let x_1203 : vec2<f32> = (x_1202 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1204 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1206.y, x_1206.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1210 : f32 = u_xlat9.x;
        u_xlat10.z = x_1210;
        let x_1213 : f32 = u_xlat46.x;
        u_xlat10.w = x_1213;
        let x_1216 : f32 = u_xlat11.x;
        u_xlat8.z = x_1216;
        let x_1219 : f32 = u_xlat7.x;
        u_xlat8.w = x_1219;
        let x_1221 : vec4<f32> = u_xlat8;
        let x_1223 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1221.z, x_1221.w, x_1221.x, x_1221.z) + vec4<f32>(x_1223.z, x_1223.w, x_1223.x, x_1223.z));
        let x_1227 : f32 = u_xlat10.y;
        u_xlat9.z = x_1227;
        let x_1230 : f32 = u_xlat46.y;
        u_xlat9.w = x_1230;
        let x_1233 : f32 = u_xlat8.y;
        u_xlat11.z = x_1233;
        let x_1236 : f32 = u_xlat7.z;
        u_xlat11.w = x_1236;
        let x_1238 : vec4<f32> = u_xlat9;
        let x_1240 : vec4<f32> = u_xlat11;
        let x_1242 : vec3<f32> = (vec3<f32>(x_1238.z, x_1238.y, x_1238.w) + vec3<f32>(x_1240.z, x_1240.y, x_1240.w));
        let x_1243 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
        let x_1245 : vec4<f32> = u_xlat8;
        let x_1247 : vec4<f32> = u_xlat12;
        let x_1249 : vec3<f32> = (vec3<f32>(x_1245.x, x_1245.z, x_1245.w) / vec3<f32>(x_1247.z, x_1247.w, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1258 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat11;
        let x_1263 : vec4<f32> = u_xlat7;
        let x_1265 : vec3<f32> = (vec3<f32>(x_1261.z, x_1261.y, x_1261.w) / vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
        let x_1268 : vec4<f32> = u_xlat9;
        let x_1270 : vec3<f32> = (vec3<f32>(x_1268.x, x_1268.y, x_1268.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1271 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat8;
        let x_1276 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1278 : vec3<f32> = (vec3<f32>(x_1273.y, x_1273.x, x_1273.z) * vec3<f32>(x_1276.x, x_1276.x, x_1276.x));
        let x_1279 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
        let x_1281 : vec4<f32> = u_xlat9;
        let x_1284 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1286 : vec3<f32> = (vec3<f32>(x_1281.x, x_1281.y, x_1281.z) * vec3<f32>(x_1284.y, x_1284.y, x_1284.y));
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
        let x_1290 : f32 = u_xlat9.x;
        u_xlat8.w = x_1290;
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1295 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y) * vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y)) + vec4<f32>(x_1298.y, x_1298.w, x_1298.x, x_1298.w));
        let x_1301 : vec4<f32> = u_xlat6;
        let x_1304 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.z, x_1307.w));
        let x_1311 : f32 = u_xlat8.y;
        u_xlat9.w = x_1311;
        let x_1313 : vec4<f32> = u_xlat9;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.y, x_1313.z);
        let x_1315 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1315.x, x_1314.x, x_1315.z, x_1314.y);
        let x_1317 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y) * vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y)) + vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1323.y));
        let x_1326 : vec4<f32> = u_xlat6;
        let x_1329 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y) * vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y)) + vec4<f32>(x_1332.w, x_1332.y, x_1332.w, x_1332.z));
        let x_1335 : vec4<f32> = u_xlat6;
        let x_1338 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1341 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y) * vec4<f32>(x_1338.x, x_1338.y, x_1338.x, x_1338.y)) + vec4<f32>(x_1341.x, x_1341.w, x_1341.z, x_1341.w));
        let x_1344 : vec4<f32> = u_xlat7;
        let x_1346 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1344.x, x_1344.x, x_1344.x, x_1344.y) * vec4<f32>(x_1346.z, x_1346.w, x_1346.y, x_1346.z));
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1350.y, x_1350.y, x_1350.z, x_1350.z) * x_1352);
        let x_1356 : f32 = u_xlat7.z;
        let x_1358 : f32 = u_xlat12.y;
        u_xlat64 = (x_1356 * x_1358);
        let x_1361 : vec4<f32> = u_xlat10;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1372 : vec3<f32> = txVec4;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1372.xy, x_1372.z);
        u_xlat65 = x_1374;
        let x_1376 : vec4<f32> = u_xlat10;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.z, x_1376.w);
        let x_1379 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec5;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1386.xy, x_1386.z);
        u_xlat6.x = x_1388;
        let x_1391 : f32 = u_xlat6.x;
        let x_1393 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1391 * x_1393);
        let x_1397 : f32 = u_xlat13.x;
        let x_1398 : f32 = u_xlat65;
        let x_1401 : f32 = u_xlat6.x;
        u_xlat65 = ((x_1397 * x_1398) + x_1401);
        let x_1404 : vec2<f32> = u_xlat46;
        let x_1406 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec6;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1413.xy, x_1413.z);
        u_xlat6.x = x_1415;
        let x_1418 : f32 = u_xlat13.z;
        let x_1420 : f32 = u_xlat6.x;
        let x_1422 : f32 = u_xlat65;
        u_xlat65 = ((x_1418 * x_1420) + x_1422);
        let x_1425 : vec4<f32> = u_xlat9;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.x, x_1425.y);
        let x_1428 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec7;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat6.x = x_1437;
        let x_1440 : f32 = u_xlat13.w;
        let x_1442 : f32 = u_xlat6.x;
        let x_1444 : f32 = u_xlat65;
        u_xlat65 = ((x_1440 * x_1442) + x_1444);
        let x_1447 : vec4<f32> = u_xlat11;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.x, x_1447.y);
        let x_1450 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec8;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1457.xy, x_1457.z);
        u_xlat6.x = x_1459;
        let x_1462 : f32 = u_xlat14.x;
        let x_1464 : f32 = u_xlat6.x;
        let x_1466 : f32 = u_xlat65;
        u_xlat65 = ((x_1462 * x_1464) + x_1466);
        let x_1469 : vec4<f32> = u_xlat11;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.z, x_1469.w);
        let x_1472 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec9;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1479.xy, x_1479.z);
        u_xlat6.x = x_1481;
        let x_1484 : f32 = u_xlat14.y;
        let x_1486 : f32 = u_xlat6.x;
        let x_1488 : f32 = u_xlat65;
        u_xlat65 = ((x_1484 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.z, x_1491.w);
        let x_1494 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec10;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1501.xy, x_1501.z);
        u_xlat6.x = x_1503;
        let x_1506 : f32 = u_xlat14.z;
        let x_1508 : f32 = u_xlat6.x;
        let x_1510 : f32 = u_xlat65;
        u_xlat65 = ((x_1506 * x_1508) + x_1510);
        let x_1513 : vec4<f32> = u_xlat8;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.x, x_1513.y);
        let x_1516 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec11;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1523.xy, x_1523.z);
        u_xlat6.x = x_1525;
        let x_1528 : f32 = u_xlat14.w;
        let x_1530 : f32 = u_xlat6.x;
        let x_1532 : f32 = u_xlat65;
        u_xlat65 = ((x_1528 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat8;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.z, x_1535.w);
        let x_1538 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec12;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1545.xy, x_1545.z);
        u_xlat6.x = x_1547;
        let x_1549 : f32 = u_xlat64;
        let x_1551 : f32 = u_xlat6.x;
        let x_1553 : f32 = u_xlat65;
        u_xlat3.x = ((x_1549 * x_1551) + x_1553);
      } else {
        let x_1557 : vec4<f32> = vs_TEXCOORD8;
        let x_1560 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1563 : vec2<f32> = ((vec2<f32>(x_1557.x, x_1557.y) * vec2<f32>(x_1560.z, x_1560.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1564 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1563.x, x_1563.y, x_1564.z, x_1564.w);
        let x_1566 : vec4<f32> = u_xlat6;
        let x_1568 : vec2<f32> = floor(vec2<f32>(x_1566.x, x_1566.y));
        let x_1569 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1568.x, x_1568.y, x_1569.z, x_1569.w);
        let x_1571 : vec4<f32> = vs_TEXCOORD8;
        let x_1574 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1577 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1571.x, x_1571.y) * vec2<f32>(x_1574.z, x_1574.w)) + -(vec2<f32>(x_1577.x, x_1577.y)));
        let x_1581 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1581.x, x_1581.x, x_1581.y, x_1581.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1584 : vec4<f32> = u_xlat7;
        let x_1586 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1584.x, x_1584.x, x_1584.z, x_1584.z) * vec4<f32>(x_1586.x, x_1586.x, x_1586.z, x_1586.z));
        let x_1589 : vec4<f32> = u_xlat8;
        let x_1593 : vec2<f32> = (vec2<f32>(x_1589.y, x_1589.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1594 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1594.x, x_1593.x, x_1594.z, x_1593.y);
        let x_1596 : vec4<f32> = u_xlat8;
        let x_1599 : vec2<f32> = u_xlat46;
        let x_1601 : vec2<f32> = ((vec2<f32>(x_1596.x, x_1596.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1599));
        let x_1602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1601.x, x_1602.y, x_1601.y, x_1602.w);
        let x_1604 : vec2<f32> = u_xlat46;
        let x_1606 : vec2<f32> = (-(x_1604) + vec2<f32>(1.0f, 1.0f));
        let x_1607 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1606.x, x_1606.y, x_1607.z, x_1607.w);
        let x_1609 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1609, vec2<f32>(0.0f, 0.0f));
        let x_1611 : vec2<f32> = u_xlat48;
        let x_1613 : vec2<f32> = u_xlat48;
        let x_1615 : vec4<f32> = u_xlat8;
        let x_1617 : vec2<f32> = ((-(x_1611) * x_1613) + vec2<f32>(x_1615.x, x_1615.y));
        let x_1618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1617.x, x_1617.y, x_1618.z, x_1618.w);
        let x_1620 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1620, vec2<f32>(0.0f, 0.0f));
        let x_1623 : vec2<f32> = u_xlat48;
        let x_1625 : vec2<f32> = u_xlat48;
        let x_1627 : vec4<f32> = u_xlat7;
        let x_1629 : vec2<f32> = ((-(x_1623) * x_1625) + vec2<f32>(x_1627.y, x_1627.w));
        let x_1630 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1629.x, x_1630.y, x_1629.y);
        let x_1632 : vec4<f32> = u_xlat8;
        let x_1634 : vec2<f32> = (vec2<f32>(x_1632.x, x_1632.y) + vec2<f32>(2.0f, 2.0f));
        let x_1635 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
        let x_1637 : vec3<f32> = u_xlat27;
        let x_1639 : vec2<f32> = (vec2<f32>(x_1637.x, x_1637.z) + vec2<f32>(2.0f, 2.0f));
        let x_1640 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1640.x, x_1639.x, x_1640.z, x_1639.y);
        let x_1643 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1643 * 0.081632003f);
        let x_1647 : vec4<f32> = u_xlat7;
        let x_1650 : vec3<f32> = (vec3<f32>(x_1647.z, x_1647.x, x_1647.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1651 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
        let x_1653 : vec4<f32> = u_xlat8;
        let x_1656 : vec2<f32> = (vec2<f32>(x_1653.x, x_1653.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1657 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1656.x, x_1656.y, x_1657.z, x_1657.w);
        let x_1660 : f32 = u_xlat11.y;
        u_xlat10.x = x_1660;
        let x_1662 : vec2<f32> = u_xlat46;
        let x_1669 : vec2<f32> = ((vec2<f32>(x_1662.x, x_1662.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1670 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1670.x, x_1669.x, x_1670.z, x_1669.y);
        let x_1672 : vec2<f32> = u_xlat46;
        let x_1676 : vec2<f32> = ((vec2<f32>(x_1672.x, x_1672.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1677 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1676.x, x_1677.y, x_1676.y, x_1677.w);
        let x_1680 : f32 = u_xlat7.x;
        u_xlat8.y = x_1680;
        let x_1683 : f32 = u_xlat9.y;
        u_xlat8.w = x_1683;
        let x_1685 : vec4<f32> = u_xlat8;
        let x_1686 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1685 + x_1686);
        let x_1688 : vec2<f32> = u_xlat46;
        let x_1691 : vec2<f32> = ((vec2<f32>(x_1688.y, x_1688.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1692 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1692.x, x_1691.x, x_1692.z, x_1691.y);
        let x_1694 : vec2<f32> = u_xlat46;
        let x_1697 : vec2<f32> = ((vec2<f32>(x_1694.y, x_1694.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1698 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1697.x, x_1698.y, x_1697.y, x_1698.w);
        let x_1701 : f32 = u_xlat7.y;
        u_xlat9.y = x_1701;
        let x_1703 : vec4<f32> = u_xlat9;
        let x_1704 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1703 + x_1704);
        let x_1706 : vec4<f32> = u_xlat8;
        let x_1707 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1706 / x_1707);
        let x_1709 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1709 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1715 : vec4<f32> = u_xlat9;
        let x_1716 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1715 / x_1716);
        let x_1718 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1718 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1720 : vec4<f32> = u_xlat8;
        let x_1723 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1720.w, x_1720.x, x_1720.y, x_1720.z) * vec4<f32>(x_1723.x, x_1723.x, x_1723.x, x_1723.x));
        let x_1726 : vec4<f32> = u_xlat9;
        let x_1729 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1726.x, x_1726.w, x_1726.y, x_1726.z) * vec4<f32>(x_1729.y, x_1729.y, x_1729.y, x_1729.y));
        let x_1732 : vec4<f32> = u_xlat8;
        let x_1733 : vec3<f32> = vec3<f32>(x_1732.y, x_1732.z, x_1732.w);
        let x_1734 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1733.x, x_1734.y, x_1733.y, x_1733.z);
        let x_1737 : f32 = u_xlat9.x;
        u_xlat11.y = x_1737;
        let x_1739 : vec4<f32> = u_xlat6;
        let x_1742 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1745 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1739.x, x_1739.y, x_1739.x, x_1739.y) * vec4<f32>(x_1742.x, x_1742.y, x_1742.x, x_1742.y)) + vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1745.y));
        let x_1748 : vec4<f32> = u_xlat6;
        let x_1751 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1754 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1748.x, x_1748.y) * vec2<f32>(x_1751.x, x_1751.y)) + vec2<f32>(x_1754.w, x_1754.y));
        let x_1758 : f32 = u_xlat11.y;
        u_xlat8.y = x_1758;
        let x_1761 : f32 = u_xlat9.z;
        u_xlat11.y = x_1761;
        let x_1763 : vec4<f32> = u_xlat6;
        let x_1766 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1769 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1763.x, x_1763.y, x_1763.x, x_1763.y) * vec4<f32>(x_1766.x, x_1766.y, x_1766.x, x_1766.y)) + vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1769.y));
        let x_1772 : vec4<f32> = u_xlat6;
        let x_1775 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1778 : vec4<f32> = u_xlat11;
        let x_1780 : vec2<f32> = ((vec2<f32>(x_1772.x, x_1772.y) * vec2<f32>(x_1775.x, x_1775.y)) + vec2<f32>(x_1778.w, x_1778.y));
        let x_1781 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1780.x, x_1780.y, x_1781.z, x_1781.w);
        let x_1784 : f32 = u_xlat11.y;
        u_xlat8.z = x_1784;
        let x_1787 : vec4<f32> = u_xlat6;
        let x_1790 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1793 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1787.x, x_1787.y, x_1787.x, x_1787.y) * vec4<f32>(x_1790.x, x_1790.y, x_1790.x, x_1790.y)) + vec4<f32>(x_1793.x, x_1793.y, x_1793.x, x_1793.z));
        let x_1797 : f32 = u_xlat9.w;
        u_xlat11.y = x_1797;
        let x_1800 : vec4<f32> = u_xlat6;
        let x_1803 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1806 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1800.x, x_1800.y, x_1800.x, x_1800.y) * vec4<f32>(x_1803.x, x_1803.y, x_1803.x, x_1803.y)) + vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1806.y));
        let x_1810 : vec4<f32> = u_xlat6;
        let x_1813 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1816 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1810.x, x_1810.y) * vec2<f32>(x_1813.x, x_1813.y)) + vec2<f32>(x_1816.w, x_1816.y));
        let x_1820 : f32 = u_xlat11.y;
        u_xlat8.w = x_1820;
        let x_1823 : vec4<f32> = u_xlat6;
        let x_1826 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1829 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1823.x, x_1823.y) * vec2<f32>(x_1826.x, x_1826.y)) + vec2<f32>(x_1829.x, x_1829.w));
        let x_1832 : vec4<f32> = u_xlat11;
        let x_1833 : vec3<f32> = vec3<f32>(x_1832.x, x_1832.z, x_1832.w);
        let x_1834 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1833.x, x_1834.y, x_1833.y, x_1833.z);
        let x_1836 : vec4<f32> = u_xlat6;
        let x_1839 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1842 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1836.x, x_1836.y, x_1836.x, x_1836.y) * vec4<f32>(x_1839.x, x_1839.y, x_1839.x, x_1839.y)) + vec4<f32>(x_1842.x, x_1842.y, x_1842.z, x_1842.y));
        let x_1846 : vec4<f32> = u_xlat6;
        let x_1849 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1852 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1846.x, x_1846.y) * vec2<f32>(x_1849.x, x_1849.y)) + vec2<f32>(x_1852.w, x_1852.y));
        let x_1856 : f32 = u_xlat8.x;
        u_xlat9.x = x_1856;
        let x_1858 : vec4<f32> = u_xlat6;
        let x_1861 : vec4<f32> = x_999.x_MainLightShadowmapSize;
        let x_1864 : vec4<f32> = u_xlat9;
        let x_1866 : vec2<f32> = ((vec2<f32>(x_1858.x, x_1858.y) * vec2<f32>(x_1861.x, x_1861.y)) + vec2<f32>(x_1864.x, x_1864.y));
        let x_1867 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1866.x, x_1866.y, x_1867.z, x_1867.w);
        let x_1870 : vec4<f32> = u_xlat7;
        let x_1872 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1870.x, x_1870.x, x_1870.x, x_1870.x) * x_1872);
        let x_1875 : vec4<f32> = u_xlat7;
        let x_1877 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1875.y, x_1875.y, x_1875.y, x_1875.y) * x_1877);
        let x_1880 : vec4<f32> = u_xlat7;
        let x_1882 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1880.z, x_1880.z, x_1880.z, x_1880.z) * x_1882);
        let x_1884 : vec4<f32> = u_xlat7;
        let x_1886 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1884.w, x_1884.w, x_1884.w, x_1884.w) * x_1886);
        let x_1889 : vec4<f32> = u_xlat12;
        let x_1890 : vec2<f32> = vec2<f32>(x_1889.x, x_1889.y);
        let x_1892 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1890.x, x_1890.y, x_1892);
        let x_1899 : vec3<f32> = txVec13;
        let x_1901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1899.xy, x_1899.z);
        u_xlat64 = x_1901;
        let x_1903 : vec4<f32> = u_xlat12;
        let x_1904 : vec2<f32> = vec2<f32>(x_1903.z, x_1903.w);
        let x_1906 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1904.x, x_1904.y, x_1906);
        let x_1913 : vec3<f32> = txVec14;
        let x_1915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1913.xy, x_1913.z);
        u_xlat65 = x_1915;
        let x_1916 : f32 = u_xlat65;
        let x_1918 : f32 = u_xlat17.y;
        u_xlat65 = (x_1916 * x_1918);
        let x_1921 : f32 = u_xlat17.x;
        let x_1922 : f32 = u_xlat64;
        let x_1924 : f32 = u_xlat65;
        u_xlat64 = ((x_1921 * x_1922) + x_1924);
        let x_1927 : vec2<f32> = u_xlat46;
        let x_1929 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1927.x, x_1927.y, x_1929);
        let x_1936 : vec3<f32> = txVec15;
        let x_1938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1936.xy, x_1936.z);
        u_xlat65 = x_1938;
        let x_1940 : f32 = u_xlat17.z;
        let x_1941 : f32 = u_xlat65;
        let x_1943 : f32 = u_xlat64;
        u_xlat64 = ((x_1940 * x_1941) + x_1943);
        let x_1946 : vec4<f32> = u_xlat15;
        let x_1947 : vec2<f32> = vec2<f32>(x_1946.x, x_1946.y);
        let x_1949 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
        let x_1956 : vec3<f32> = txVec16;
        let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1956.xy, x_1956.z);
        u_xlat65 = x_1958;
        let x_1960 : f32 = u_xlat17.w;
        let x_1961 : f32 = u_xlat65;
        let x_1963 : f32 = u_xlat64;
        u_xlat64 = ((x_1960 * x_1961) + x_1963);
        let x_1966 : vec4<f32> = u_xlat13;
        let x_1967 : vec2<f32> = vec2<f32>(x_1966.x, x_1966.y);
        let x_1969 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1967.x, x_1967.y, x_1969);
        let x_1976 : vec3<f32> = txVec17;
        let x_1978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1976.xy, x_1976.z);
        u_xlat65 = x_1978;
        let x_1980 : f32 = u_xlat18.x;
        let x_1981 : f32 = u_xlat65;
        let x_1983 : f32 = u_xlat64;
        u_xlat64 = ((x_1980 * x_1981) + x_1983);
        let x_1986 : vec4<f32> = u_xlat13;
        let x_1987 : vec2<f32> = vec2<f32>(x_1986.z, x_1986.w);
        let x_1989 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1987.x, x_1987.y, x_1989);
        let x_1996 : vec3<f32> = txVec18;
        let x_1998 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1996.xy, x_1996.z);
        u_xlat65 = x_1998;
        let x_2000 : f32 = u_xlat18.y;
        let x_2001 : f32 = u_xlat65;
        let x_2003 : f32 = u_xlat64;
        u_xlat64 = ((x_2000 * x_2001) + x_2003);
        let x_2006 : vec4<f32> = u_xlat14;
        let x_2007 : vec2<f32> = vec2<f32>(x_2006.x, x_2006.y);
        let x_2009 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2007.x, x_2007.y, x_2009);
        let x_2016 : vec3<f32> = txVec19;
        let x_2018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2016.xy, x_2016.z);
        u_xlat65 = x_2018;
        let x_2020 : f32 = u_xlat18.z;
        let x_2021 : f32 = u_xlat65;
        let x_2023 : f32 = u_xlat64;
        u_xlat64 = ((x_2020 * x_2021) + x_2023);
        let x_2026 : vec4<f32> = u_xlat15;
        let x_2027 : vec2<f32> = vec2<f32>(x_2026.z, x_2026.w);
        let x_2029 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2027.x, x_2027.y, x_2029);
        let x_2036 : vec3<f32> = txVec20;
        let x_2038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2036.xy, x_2036.z);
        u_xlat65 = x_2038;
        let x_2040 : f32 = u_xlat18.w;
        let x_2041 : f32 = u_xlat65;
        let x_2043 : f32 = u_xlat64;
        u_xlat64 = ((x_2040 * x_2041) + x_2043);
        let x_2046 : vec4<f32> = u_xlat16;
        let x_2047 : vec2<f32> = vec2<f32>(x_2046.x, x_2046.y);
        let x_2049 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2047.x, x_2047.y, x_2049);
        let x_2056 : vec3<f32> = txVec21;
        let x_2058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2056.xy, x_2056.z);
        u_xlat65 = x_2058;
        let x_2060 : f32 = u_xlat19.x;
        let x_2061 : f32 = u_xlat65;
        let x_2063 : f32 = u_xlat64;
        u_xlat64 = ((x_2060 * x_2061) + x_2063);
        let x_2066 : vec4<f32> = u_xlat16;
        let x_2067 : vec2<f32> = vec2<f32>(x_2066.z, x_2066.w);
        let x_2069 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
        let x_2076 : vec3<f32> = txVec22;
        let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2076.xy, x_2076.z);
        u_xlat65 = x_2078;
        let x_2080 : f32 = u_xlat19.y;
        let x_2081 : f32 = u_xlat65;
        let x_2083 : f32 = u_xlat64;
        u_xlat64 = ((x_2080 * x_2081) + x_2083);
        let x_2086 : vec2<f32> = u_xlat28;
        let x_2088 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2086.x, x_2086.y, x_2088);
        let x_2095 : vec3<f32> = txVec23;
        let x_2097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2095.xy, x_2095.z);
        u_xlat65 = x_2097;
        let x_2099 : f32 = u_xlat19.z;
        let x_2100 : f32 = u_xlat65;
        let x_2102 : f32 = u_xlat64;
        u_xlat64 = ((x_2099 * x_2100) + x_2102);
        let x_2105 : vec2<f32> = u_xlat54;
        let x_2107 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
        let x_2114 : vec3<f32> = txVec24;
        let x_2116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2114.xy, x_2114.z);
        u_xlat65 = x_2116;
        let x_2118 : f32 = u_xlat19.w;
        let x_2119 : f32 = u_xlat65;
        let x_2121 : f32 = u_xlat64;
        u_xlat64 = ((x_2118 * x_2119) + x_2121);
        let x_2124 : vec4<f32> = u_xlat11;
        let x_2125 : vec2<f32> = vec2<f32>(x_2124.x, x_2124.y);
        let x_2127 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2125.x, x_2125.y, x_2127);
        let x_2134 : vec3<f32> = txVec25;
        let x_2136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2134.xy, x_2134.z);
        u_xlat65 = x_2136;
        let x_2138 : f32 = u_xlat7.x;
        let x_2139 : f32 = u_xlat65;
        let x_2141 : f32 = u_xlat64;
        u_xlat64 = ((x_2138 * x_2139) + x_2141);
        let x_2144 : vec4<f32> = u_xlat11;
        let x_2145 : vec2<f32> = vec2<f32>(x_2144.z, x_2144.w);
        let x_2147 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2145.x, x_2145.y, x_2147);
        let x_2154 : vec3<f32> = txVec26;
        let x_2156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2154.xy, x_2154.z);
        u_xlat65 = x_2156;
        let x_2158 : f32 = u_xlat7.y;
        let x_2159 : f32 = u_xlat65;
        let x_2161 : f32 = u_xlat64;
        u_xlat64 = ((x_2158 * x_2159) + x_2161);
        let x_2164 : vec2<f32> = u_xlat49;
        let x_2166 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2164.x, x_2164.y, x_2166);
        let x_2173 : vec3<f32> = txVec27;
        let x_2175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2173.xy, x_2173.z);
        u_xlat65 = x_2175;
        let x_2177 : f32 = u_xlat7.z;
        let x_2178 : f32 = u_xlat65;
        let x_2180 : f32 = u_xlat64;
        u_xlat64 = ((x_2177 * x_2178) + x_2180);
        let x_2183 : vec4<f32> = u_xlat6;
        let x_2184 : vec2<f32> = vec2<f32>(x_2183.x, x_2183.y);
        let x_2186 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2184.x, x_2184.y, x_2186);
        let x_2193 : vec3<f32> = txVec28;
        let x_2195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2193.xy, x_2193.z);
        u_xlat65 = x_2195;
        let x_2197 : f32 = u_xlat7.w;
        let x_2198 : f32 = u_xlat65;
        let x_2200 : f32 = u_xlat64;
        u_xlat3.x = ((x_2197 * x_2198) + x_2200);
      }
    }
  } else {
    let x_2205 : vec4<f32> = vs_TEXCOORD8;
    let x_2206 : vec2<f32> = vec2<f32>(x_2205.x, x_2205.y);
    let x_2208 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2206.x, x_2206.y, x_2208);
    let x_2215 : vec3<f32> = txVec29;
    let x_2217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2215.xy, x_2215.z);
    u_xlat3.x = x_2217;
  }
  let x_2220 : f32 = x_999.x_MainLightShadowParams.x;
  u_xlat64 = (-(x_2220) + 1.0f);
  let x_2224 : f32 = u_xlat3.x;
  let x_2226 : f32 = x_999.x_MainLightShadowParams.x;
  let x_2228 : f32 = u_xlat64;
  u_xlat3.x = ((x_2224 * x_2226) + x_2228);
  let x_2232 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (0.0f >= x_2232);
  let x_2236 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (x_2236 >= 1.0f);
  let x_2238 : bool = u_xlatb64;
  let x_2239 : bool = u_xlatb65;
  u_xlatb64 = (x_2238 | x_2239);
  let x_2241 : bool = u_xlatb64;
  if (x_2241) {
    x_2242 = 1.0f;
  } else {
    let x_2247 : f32 = u_xlat3.x;
    x_2242 = x_2247;
  }
  let x_2248 : f32 = x_2242;
  u_xlat3.x = x_2248;
  let x_2250 : vec3<f32> = vs_TEXCOORD7;
  let x_2253 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2255 : vec3<f32> = (x_2250 + -(x_2253));
  let x_2256 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
  let x_2258 : vec4<f32> = u_xlat6;
  let x_2260 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2258.x, x_2258.y, x_2258.z), vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
  let x_2263 : f32 = u_xlat64;
  let x_2265 : f32 = x_999.x_MainLightShadowParams.z;
  let x_2268 : f32 = x_999.x_MainLightShadowParams.w;
  u_xlat64 = ((x_2263 * x_2265) + x_2268);
  let x_2270 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2270, 0.0f, 1.0f);
  let x_2273 : f32 = u_xlat3.x;
  u_xlat65 = (-(x_2273) + 1.0f);
  let x_2276 : f32 = u_xlat64;
  let x_2277 : f32 = u_xlat65;
  let x_2280 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2276 * x_2277) + x_2280);
  let x_2283 : f32 = u_xlat43;
  let x_2286 : vec4<f32> = x_126.x_MainLightColor;
  let x_2288 : vec3<f32> = (vec3<f32>(x_2283, x_2283, x_2283) * vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
  let x_2289 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
  let x_2292 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2292;
  let x_2295 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2295;
  let x_2298 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2298;
  let x_2300 : vec4<f32> = u_xlat7;
  let x_2303 : vec4<f32> = u_xlat1;
  u_xlat64 = dot(-(vec3<f32>(x_2300.x, x_2300.y, x_2300.z)), vec3<f32>(x_2303.x, x_2303.y, x_2303.z));
  let x_2306 : f32 = u_xlat64;
  let x_2307 : f32 = u_xlat64;
  u_xlat64 = (x_2306 + x_2307);
  let x_2309 : vec4<f32> = u_xlat1;
  let x_2311 : f32 = u_xlat64;
  let x_2315 : vec4<f32> = u_xlat7;
  let x_2318 : vec3<f32> = ((vec3<f32>(x_2309.x, x_2309.y, x_2309.z) * -(vec3<f32>(x_2311, x_2311, x_2311))) + -(vec3<f32>(x_2315.x, x_2315.y, x_2315.z)));
  let x_2319 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
  let x_2321 : vec4<f32> = u_xlat1;
  let x_2323 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2321.x, x_2321.y, x_2321.z), vec3<f32>(x_2323.x, x_2323.y, x_2323.z));
  let x_2326 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2326, 0.0f, 1.0f);
  let x_2328 : f32 = u_xlat64;
  u_xlat64 = (-(x_2328) + 1.0f);
  let x_2331 : f32 = u_xlat64;
  let x_2332 : f32 = u_xlat64;
  u_xlat64 = (x_2331 * x_2332);
  let x_2334 : f32 = u_xlat64;
  let x_2335 : f32 = u_xlat64;
  u_xlat64 = (x_2334 * x_2335);
  let x_2338 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_2338) * 0.699999988f) + 1.700000048f);
  let x_2345 : f32 = u_xlat0.x;
  let x_2346 : f32 = u_xlat65;
  u_xlat0.x = (x_2345 * x_2346);
  let x_2350 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2350 * 6.0f);
  let x_2362 : vec4<f32> = u_xlat8;
  let x_2365 : f32 = u_xlat0.x;
  let x_2366 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2362.x, x_2362.y, x_2362.z), x_2365);
  u_xlat8 = x_2366;
  let x_2368 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2368 + -1.0f);
  let x_2376 : f32 = x_2374.unity_SpecCube0_HDR.w;
  let x_2378 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2376 * x_2378) + 1.0f);
  let x_2383 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2383, 0.0f);
  let x_2387 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2387);
  let x_2391 : f32 = u_xlat0.x;
  let x_2393 : f32 = x_2374.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2391 * x_2393);
  let x_2397 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2397);
  let x_2401 : f32 = u_xlat0.x;
  let x_2403 : f32 = x_2374.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2401 * x_2403);
  let x_2406 : vec4<f32> = u_xlat8;
  let x_2408 : vec3<f32> = u_xlat0;
  let x_2410 : vec3<f32> = (vec3<f32>(x_2406.x, x_2406.y, x_2406.z) * vec3<f32>(x_2408.x, x_2408.x, x_2408.x));
  let x_2411 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
  let x_2413 : f32 = u_xlat40;
  let x_2415 : f32 = u_xlat40;
  let x_2419 : vec2<f32> = ((vec2<f32>(x_2413, x_2413) * vec2<f32>(x_2415, x_2415)) + vec2<f32>(-1.0f, 1.0f));
  let x_2420 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2419.x, x_2420.y, x_2419.y);
  let x_2423 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2423);
  let x_2425 : vec4<f32> = u_xlat5;
  let x_2428 : f32 = u_xlat23;
  let x_2430 : vec3<f32> = (-(vec3<f32>(x_2425.x, x_2425.y, x_2425.z)) + vec3<f32>(x_2428, x_2428, x_2428));
  let x_2431 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
  let x_2433 : f32 = u_xlat64;
  let x_2435 : vec4<f32> = u_xlat9;
  let x_2438 : vec4<f32> = u_xlat5;
  let x_2440 : vec3<f32> = ((vec3<f32>(x_2433, x_2433, x_2433) * vec3<f32>(x_2435.x, x_2435.y, x_2435.z)) + vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
  let x_2441 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
  let x_2443 : f32 = u_xlat40;
  let x_2445 : vec4<f32> = u_xlat9;
  let x_2447 : vec3<f32> = (vec3<f32>(x_2443, x_2443, x_2443) * vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
  let x_2448 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);
  let x_2450 : vec4<f32> = u_xlat8;
  let x_2452 : vec4<f32> = u_xlat9;
  let x_2454 : vec3<f32> = (vec3<f32>(x_2450.x, x_2450.y, x_2450.z) * vec3<f32>(x_2452.x, x_2452.y, x_2452.z));
  let x_2455 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
  let x_2457 : vec3<f32> = u_xlat2;
  let x_2458 : vec4<f32> = u_xlat4;
  let x_2461 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_2457 * vec3<f32>(x_2458.x, x_2458.y, x_2458.z)) + vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
  let x_2465 : f32 = u_xlat3.x;
  let x_2467 : f32 = x_2374.unity_LightData.z;
  u_xlat40 = (x_2465 * x_2467);
  let x_2469 : vec4<f32> = u_xlat1;
  let x_2472 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2469.x, x_2469.y, x_2469.z), vec3<f32>(x_2472.x, x_2472.y, x_2472.z));
  let x_2477 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2477, 0.0f, 1.0f);
  let x_2480 : f32 = u_xlat40;
  let x_2482 : f32 = u_xlat3.x;
  u_xlat40 = (x_2480 * x_2482);
  let x_2484 : f32 = u_xlat40;
  let x_2486 : vec4<f32> = u_xlat6;
  let x_2488 : vec3<f32> = (vec3<f32>(x_2484, x_2484, x_2484) * vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
  let x_2489 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
  let x_2491 : vec4<f32> = u_xlat7;
  let x_2494 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2496 : vec3<f32> = (vec3<f32>(x_2491.x, x_2491.y, x_2491.z) + vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
  let x_2497 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
  let x_2499 : vec4<f32> = u_xlat8;
  let x_2501 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2499.x, x_2499.y, x_2499.z), vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
  let x_2504 : f32 = u_xlat40;
  u_xlat40 = max(x_2504, 1.17549435e-37f);
  let x_2507 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2507);
  let x_2509 : f32 = u_xlat40;
  let x_2511 : vec4<f32> = u_xlat8;
  let x_2513 : vec3<f32> = (vec3<f32>(x_2509, x_2509, x_2509) * vec3<f32>(x_2511.x, x_2511.y, x_2511.z));
  let x_2514 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2513.x, x_2513.y, x_2513.z, x_2514.w);
  let x_2516 : vec4<f32> = u_xlat1;
  let x_2518 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2516.x, x_2516.y, x_2516.z), vec3<f32>(x_2518.x, x_2518.y, x_2518.z));
  let x_2521 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2521, 0.0f, 1.0f);
  let x_2524 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2526 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2524.x, x_2524.y, x_2524.z), vec3<f32>(x_2526.x, x_2526.y, x_2526.z));
  let x_2531 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2531, 0.0f, 1.0f);
  let x_2534 : f32 = u_xlat40;
  let x_2535 : f32 = u_xlat40;
  u_xlat40 = (x_2534 * x_2535);
  let x_2537 : f32 = u_xlat40;
  let x_2539 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2537 * x_2539) + 1.000010014f);
  let x_2544 : f32 = u_xlat3.x;
  let x_2546 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2544 * x_2546);
  let x_2549 : f32 = u_xlat40;
  let x_2550 : f32 = u_xlat40;
  u_xlat40 = (x_2549 * x_2550);
  let x_2553 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2553, 0.100000001f);
  let x_2557 : f32 = u_xlat40;
  let x_2559 : f32 = u_xlat3.x;
  u_xlat40 = (x_2557 * x_2559);
  let x_2561 : f32 = u_xlat63;
  let x_2562 : f32 = u_xlat40;
  u_xlat40 = (x_2561 * x_2562);
  let x_2564 : f32 = u_xlat62;
  let x_2565 : f32 = u_xlat40;
  u_xlat40 = (x_2564 / x_2565);
  let x_2567 : vec4<f32> = u_xlat5;
  let x_2569 : f32 = u_xlat40;
  let x_2572 : vec4<f32> = u_xlat4;
  let x_2574 : vec3<f32> = ((vec3<f32>(x_2567.x, x_2567.y, x_2567.z) * vec3<f32>(x_2569, x_2569, x_2569)) + vec3<f32>(x_2572.x, x_2572.y, x_2572.z));
  let x_2575 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
  let x_2577 : vec4<f32> = u_xlat6;
  let x_2579 : vec4<f32> = u_xlat8;
  let x_2581 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.y, x_2577.z) * vec3<f32>(x_2579.x, x_2579.y, x_2579.z));
  let x_2582 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
  let x_2585 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2587 : f32 = x_2374.unity_LightData.y;
  u_xlat40 = min(x_2585, x_2587);
  let x_2591 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2591));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2603 : u32 = u_xlatu_loop_1;
    let x_2604 : u32 = u_xlatu40;
    if ((x_2603 < x_2604)) {
    } else {
      break;
    }
    let x_2607 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_2607 >> 2u);
    let x_2611 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_2611 & 3u));
    let x_2614 : u32 = u_xlatu23;
    let x_2617 : vec4<f32> = x_2374.unity_LightIndices[bitcast<i32>(x_2614)];
    let x_2627 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2632 : vec4<u32> = indexable[x_2627];
    u_xlat23 = dot(x_2617, bitcast<vec4<f32>>(x_2632));
    let x_2636 : f32 = u_xlat23;
    u_xlati23 = i32(x_2636);
    let x_2638 : vec3<f32> = vs_TEXCOORD7;
    let x_2650 : i32 = u_xlati23;
    let x_2652 : vec4<f32> = x_2649.x_AdditionalLightsPosition[x_2650];
    let x_2655 : i32 = u_xlati23;
    let x_2657 : vec4<f32> = x_2649.x_AdditionalLightsPosition[x_2655];
    let x_2659 : vec3<f32> = ((-(x_2638) * vec3<f32>(x_2652.w, x_2652.w, x_2652.w)) + vec3<f32>(x_2657.x, x_2657.y, x_2657.z));
    let x_2660 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2659.x, x_2659.y, x_2659.z, x_2660.w);
    let x_2662 : vec4<f32> = u_xlat9;
    let x_2664 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2662.x, x_2662.y, x_2662.z), vec3<f32>(x_2664.x, x_2664.y, x_2664.z));
    let x_2667 : f32 = u_xlat64;
    u_xlat64 = max(x_2667, 6.10351562e-05f);
    let x_2669 : f32 = u_xlat64;
    u_xlat65 = inverseSqrt(x_2669);
    let x_2671 : f32 = u_xlat65;
    let x_2673 : vec4<f32> = u_xlat9;
    let x_2675 : vec3<f32> = (vec3<f32>(x_2671, x_2671, x_2671) * vec3<f32>(x_2673.x, x_2673.y, x_2673.z));
    let x_2676 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
    let x_2679 : f32 = u_xlat64;
    u_xlat66 = (1.0f / x_2679);
    let x_2681 : f32 = u_xlat64;
    let x_2682 : i32 = u_xlati23;
    let x_2684 : f32 = x_2649.x_AdditionalLightsAttenuation[x_2682].x;
    u_xlat64 = (x_2681 * x_2684);
    let x_2686 : f32 = u_xlat64;
    let x_2688 : f32 = u_xlat64;
    u_xlat64 = ((-(x_2686) * x_2688) + 1.0f);
    let x_2691 : f32 = u_xlat64;
    u_xlat64 = max(x_2691, 0.0f);
    let x_2693 : f32 = u_xlat64;
    let x_2694 : f32 = u_xlat64;
    u_xlat64 = (x_2693 * x_2694);
    let x_2696 : f32 = u_xlat64;
    let x_2697 : f32 = u_xlat66;
    u_xlat64 = (x_2696 * x_2697);
    let x_2699 : i32 = u_xlati23;
    let x_2701 : vec4<f32> = x_2649.x_AdditionalLightsSpotDir[x_2699];
    let x_2703 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2701.x, x_2701.y, x_2701.z), vec3<f32>(x_2703.x, x_2703.y, x_2703.z));
    let x_2706 : f32 = u_xlat66;
    let x_2707 : i32 = u_xlati23;
    let x_2709 : f32 = x_2649.x_AdditionalLightsAttenuation[x_2707].z;
    let x_2711 : i32 = u_xlati23;
    let x_2713 : f32 = x_2649.x_AdditionalLightsAttenuation[x_2711].w;
    u_xlat66 = ((x_2706 * x_2709) + x_2713);
    let x_2715 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2715, 0.0f, 1.0f);
    let x_2717 : f32 = u_xlat66;
    let x_2718 : f32 = u_xlat66;
    u_xlat66 = (x_2717 * x_2718);
    let x_2720 : f32 = u_xlat64;
    let x_2721 : f32 = u_xlat66;
    u_xlat64 = (x_2720 * x_2721);
    let x_2723 : f32 = u_xlat43;
    let x_2725 : i32 = u_xlati23;
    let x_2727 : vec4<f32> = x_2649.x_AdditionalLightsColor[x_2725];
    let x_2729 : vec3<f32> = (vec3<f32>(x_2723, x_2723, x_2723) * vec3<f32>(x_2727.x, x_2727.y, x_2727.z));
    let x_2730 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2730.w);
    let x_2732 : vec4<f32> = u_xlat1;
    let x_2734 : vec4<f32> = u_xlat10;
    u_xlat23 = dot(vec3<f32>(x_2732.x, x_2732.y, x_2732.z), vec3<f32>(x_2734.x, x_2734.y, x_2734.z));
    let x_2737 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2737, 0.0f, 1.0f);
    let x_2739 : f32 = u_xlat23;
    let x_2740 : f32 = u_xlat64;
    u_xlat23 = (x_2739 * x_2740);
    let x_2742 : f32 = u_xlat23;
    let x_2744 : vec4<f32> = u_xlat11;
    let x_2746 : vec3<f32> = (vec3<f32>(x_2742, x_2742, x_2742) * vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
    let x_2749 : vec4<f32> = u_xlat9;
    let x_2751 : f32 = u_xlat65;
    let x_2754 : vec4<f32> = u_xlat7;
    let x_2756 : vec3<f32> = ((vec3<f32>(x_2749.x, x_2749.y, x_2749.z) * vec3<f32>(x_2751, x_2751, x_2751)) + vec3<f32>(x_2754.x, x_2754.y, x_2754.z));
    let x_2757 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2756.x, x_2756.y, x_2756.z, x_2757.w);
    let x_2759 : vec4<f32> = u_xlat9;
    let x_2761 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(vec3<f32>(x_2759.x, x_2759.y, x_2759.z), vec3<f32>(x_2761.x, x_2761.y, x_2761.z));
    let x_2764 : f32 = u_xlat23;
    u_xlat23 = max(x_2764, 1.17549435e-37f);
    let x_2766 : f32 = u_xlat23;
    u_xlat23 = inverseSqrt(x_2766);
    let x_2768 : f32 = u_xlat23;
    let x_2770 : vec4<f32> = u_xlat9;
    let x_2772 : vec3<f32> = (vec3<f32>(x_2768, x_2768, x_2768) * vec3<f32>(x_2770.x, x_2770.y, x_2770.z));
    let x_2773 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2772.x, x_2772.y, x_2772.z, x_2773.w);
    let x_2775 : vec4<f32> = u_xlat1;
    let x_2777 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(vec3<f32>(x_2775.x, x_2775.y, x_2775.z), vec3<f32>(x_2777.x, x_2777.y, x_2777.z));
    let x_2780 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2780, 0.0f, 1.0f);
    let x_2782 : vec4<f32> = u_xlat10;
    let x_2784 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2782.x, x_2782.y, x_2782.z), vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
    let x_2787 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2787, 0.0f, 1.0f);
    let x_2789 : f32 = u_xlat23;
    let x_2790 : f32 = u_xlat23;
    u_xlat23 = (x_2789 * x_2790);
    let x_2792 : f32 = u_xlat23;
    let x_2794 : f32 = u_xlat0.x;
    u_xlat23 = ((x_2792 * x_2794) + 1.000010014f);
    let x_2797 : f32 = u_xlat64;
    let x_2798 : f32 = u_xlat64;
    u_xlat64 = (x_2797 * x_2798);
    let x_2800 : f32 = u_xlat23;
    let x_2801 : f32 = u_xlat23;
    u_xlat23 = (x_2800 * x_2801);
    let x_2803 : f32 = u_xlat64;
    u_xlat64 = max(x_2803, 0.100000001f);
    let x_2805 : f32 = u_xlat23;
    let x_2806 : f32 = u_xlat64;
    u_xlat23 = (x_2805 * x_2806);
    let x_2808 : f32 = u_xlat63;
    let x_2809 : f32 = u_xlat23;
    u_xlat23 = (x_2808 * x_2809);
    let x_2811 : f32 = u_xlat62;
    let x_2812 : f32 = u_xlat23;
    u_xlat23 = (x_2811 / x_2812);
    let x_2814 : vec4<f32> = u_xlat5;
    let x_2816 : f32 = u_xlat23;
    let x_2819 : vec4<f32> = u_xlat4;
    let x_2821 : vec3<f32> = ((vec3<f32>(x_2814.x, x_2814.y, x_2814.z) * vec3<f32>(x_2816, x_2816, x_2816)) + vec3<f32>(x_2819.x, x_2819.y, x_2819.z));
    let x_2822 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2822.w);
    let x_2824 : vec4<f32> = u_xlat9;
    let x_2826 : vec4<f32> = u_xlat11;
    let x_2829 : vec4<f32> = u_xlat8;
    let x_2831 : vec3<f32> = ((vec3<f32>(x_2824.x, x_2824.y, x_2824.z) * vec3<f32>(x_2826.x, x_2826.y, x_2826.z)) + vec3<f32>(x_2829.x, x_2829.y, x_2829.z));
    let x_2832 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2831.x, x_2831.y, x_2831.z, x_2832.w);

    continuing {
      let x_2834 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2834 + bitcast<u32>(1i));
    }
  }
  let x_2836 : vec3<f32> = u_xlat2;
  let x_2837 : f32 = u_xlat20;
  let x_2840 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2836 * vec3<f32>(x_2837, x_2837, x_2837)) + vec3<f32>(x_2840.x, x_2840.y, x_2840.z));
  let x_2843 : vec4<f32> = u_xlat8;
  let x_2845 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2843.x, x_2843.y, x_2843.z) + x_2845);
  let x_2847 : f32 = u_xlat61;
  let x_2848 : f32 = u_xlat61;
  u_xlat1.x = (x_2847 * -(x_2848));
  let x_2853 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2853);
  let x_2856 : vec3<f32> = u_xlat0;
  let x_2857 : f32 = u_xlat60;
  let x_2861 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_2856 * vec3<f32>(x_2857, x_2857, x_2857)) + -(vec3<f32>(x_2861.x, x_2861.y, x_2861.z)));
  let x_2867 : vec4<f32> = u_xlat1;
  let x_2869 : vec3<f32> = u_xlat0;
  let x_2872 : vec4<f32> = x_126.unity_FogColor;
  let x_2874 : vec3<f32> = ((vec3<f32>(x_2867.x, x_2867.x, x_2867.x) * x_2869) + vec3<f32>(x_2872.x, x_2872.y, x_2872.z));
  let x_2875 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2874.x, x_2874.y, x_2874.z, x_2875.w);
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

