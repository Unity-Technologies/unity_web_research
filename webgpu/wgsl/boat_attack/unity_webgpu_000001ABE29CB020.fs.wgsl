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
  unity_OrthoParams : vec4<f32>,
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

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_746 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2093 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2358 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat63 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb64 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat64 : f32;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : vec3<f32>;
  var x_559 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlat46 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb67 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat67 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
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
  var u_xlatb68 : bool;
  var x_1974 : f32;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu4 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati4 : i32;
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
  u_xlat63 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb64 = (4.0f >= x_218);
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
  let x_280 : bool = u_xlatb64;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat64;
  u_xlat64 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat64;
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
  let x_366 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_366;
  let x_369 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_369;
  let x_372 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_372;
  let x_375 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_375;
  let x_378 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_378;
  let x_381 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_387;
  let x_389 : vec4<f32> = u_xlat6;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_389 + x_390);
  let x_393 : f32 = u_xlat0.z;
  u_xlat7.x = x_393;
  let x_396 : f32 = u_xlat1.z;
  u_xlat7.y = x_396;
  let x_399 : f32 = u_xlat2.z;
  u_xlat7.z = x_399;
  let x_402 : f32 = u_xlat3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat9;
  let x_407 : f32 = x_30.x_Smoothness0;
  let x_409 : f32 = x_30.x_Smoothness1;
  let x_411 : f32 = x_30.x_Smoothness2;
  let x_413 : f32 = x_30.x_Smoothness3;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_404) * vec4<f32>(x_407, x_409, x_411, x_413)) + x_416);
  let x_420 : f32 = x_30.x_LayerHasMask0;
  let x_423 : f32 = x_30.x_LayerHasMask1;
  let x_426 : f32 = x_30.x_LayerHasMask2;
  let x_429 : f32 = x_30.x_LayerHasMask3;
  let x_431 : vec4<f32> = u_xlat7;
  let x_433 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_420, x_423, x_426, x_429) * x_431) + x_433);
  let x_436 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_436, x_437);
  let x_440 : f32 = u_xlat0.x;
  u_xlat7.x = x_440;
  let x_443 : f32 = u_xlat1.x;
  u_xlat7.y = x_443;
  let x_446 : f32 = u_xlat2.x;
  u_xlat7.z = x_446;
  let x_449 : f32 = u_xlat3.x;
  u_xlat7.w = x_449;
  let x_451 : vec4<f32> = u_xlat7;
  let x_454 : f32 = x_30.x_Metallic0;
  let x_457 : f32 = x_30.x_Metallic1;
  let x_460 : f32 = x_30.x_Metallic2;
  let x_463 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_451 + -(vec4<f32>(x_454, x_457, x_460, x_463)));
  let x_468 : f32 = x_30.x_LayerHasMask0;
  let x_470 : f32 = x_30.x_LayerHasMask1;
  let x_472 : f32 = x_30.x_LayerHasMask2;
  let x_474 : f32 = x_30.x_LayerHasMask3;
  let x_476 : vec4<f32> = u_xlat7;
  let x_479 : f32 = x_30.x_Metallic0;
  let x_481 : f32 = x_30.x_Metallic1;
  let x_483 : f32 = x_30.x_Metallic2;
  let x_485 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_468, x_470, x_472, x_474) * x_476) + vec4<f32>(x_479, x_481, x_483, x_485));
  let x_488 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_488, x_489);
  let x_493 : f32 = u_xlat0.y;
  u_xlat3.x = x_493;
  let x_496 : f32 = u_xlat1.y;
  u_xlat3.y = x_496;
  let x_499 : f32 = u_xlat2.y;
  u_xlat3.z = x_499;
  let x_501 : vec4<f32> = u_xlat6;
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_501) + x_503);
  let x_506 : f32 = x_30.x_LayerHasMask0;
  let x_508 : f32 = x_30.x_LayerHasMask1;
  let x_510 : f32 = x_30.x_LayerHasMask2;
  let x_512 : f32 = x_30.x_LayerHasMask3;
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_506, x_508, x_510, x_512) * x_514) + x_516);
  let x_519 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat22;
  let x_536 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat22;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat22 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_549 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_562 : vec3<f32> = u_xlat22;
    x_559 = x_562;
  } else {
    let x_564 : vec3<f32> = u_xlat2;
    x_559 = x_564;
  }
  let x_565 : vec3<f32> = x_559;
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : vec3<f32> = vs_TEXCOORD3;
  let x_570 : vec3<f32> = vs_TEXCOORD3;
  u_xlat64 = dot(x_569, x_570);
  let x_572 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat64;
  let x_576 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_579 : f32 = vs_TEXCOORD7.y;
  let x_581 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat64 = (x_579 * x_581);
  let x_584 : f32 = x_126.unity_MatrixV[0i].z;
  let x_586 : f32 = vs_TEXCOORD7.x;
  let x_588 : f32 = u_xlat64;
  u_xlat64 = ((x_584 * x_586) + x_588);
  let x_591 : f32 = x_126.unity_MatrixV[2i].z;
  let x_593 : f32 = vs_TEXCOORD7.z;
  let x_595 : f32 = u_xlat64;
  u_xlat64 = ((x_591 * x_593) + x_595);
  let x_597 : f32 = u_xlat64;
  let x_600 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat64 = (x_597 + x_600);
  let x_602 : f32 = u_xlat64;
  let x_605 : f32 = x_126.x_ProjectionParams.y;
  u_xlat64 = (-(x_602) + -(x_605));
  let x_608 : f32 = u_xlat64;
  u_xlat64 = max(x_608, 0.0f);
  let x_610 : f32 = u_xlat64;
  let x_612 : f32 = x_126.unity_FogParams.x;
  u_xlat64 = (x_610 * x_612);
  let x_619 : vec4<f32> = vs_TEXCOORD0;
  let x_622 : f32 = x_126.x_GlobalMipBias.x;
  let x_623 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_619.z, x_619.w), x_622);
  let x_624 : vec3<f32> = vec3<f32>(x_623.x, x_623.y, x_623.z);
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_629 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_630 : vec2<f32> = vec2<f32>(x_629.x, x_629.y);
  let x_634 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_630.x, x_630.y));
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec4<f32> = hlslcc_FragCoord;
  let x_641 : vec2<f32> = (vec2<f32>(x_637.x, x_637.y) * vec2<f32>(x_639.x, x_639.y));
  let x_642 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
  let x_646 : f32 = u_xlat4.y;
  let x_648 : f32 = x_126.x_ScaleBiasRt.x;
  let x_651 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat65 = ((x_646 * x_648) + x_651);
  let x_653 : f32 = u_xlat65;
  u_xlat4.z = (-(x_653) + 1.0f);
  let x_658 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_658) * 0.959999979f) + 0.959999979f);
  let x_664 : f32 = u_xlat42;
  let x_665 : f32 = u_xlat65;
  u_xlat66 = (x_664 + -(x_665));
  let x_668 : f32 = u_xlat65;
  let x_670 : vec4<f32> = u_xlat5;
  let x_672 : vec3<f32> = (vec3<f32>(x_668, x_668, x_668) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat5;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_680 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec3<f32> = u_xlat0;
  let x_684 : vec4<f32> = u_xlat5;
  let x_689 : vec3<f32> = ((vec3<f32>(x_682.x, x_682.x, x_682.x) * vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_690 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : f32 = u_xlat42;
  u_xlat0.x = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat42 = (x_697 * x_699);
  let x_701 : f32 = u_xlat42;
  u_xlat42 = max(x_701, 0.0078125f);
  let x_704 : f32 = u_xlat42;
  let x_705 : f32 = u_xlat42;
  u_xlat65 = (x_704 * x_705);
  let x_707 : f32 = u_xlat66;
  u_xlat66 = (x_707 + 1.0f);
  let x_709 : f32 = u_xlat66;
  u_xlat66 = clamp(x_709, 0.0f, 1.0f);
  let x_712 : f32 = u_xlat42;
  u_xlat25 = ((x_712 * 4.0f) + 2.0f);
  let x_721 : vec4<f32> = u_xlat4;
  let x_724 : f32 = x_126.x_GlobalMipBias.x;
  let x_725 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_721.x, x_721.z), x_724);
  u_xlat4.x = x_725.x;
  let x_730 : f32 = u_xlat4.x;
  u_xlat46 = (x_730 + -1.0f);
  let x_733 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_734 : f32 = u_xlat46;
  u_xlat46 = ((x_733 * x_734) + 1.0f);
  let x_737 : f32 = u_xlat21;
  let x_739 : f32 = u_xlat4.x;
  u_xlat21 = min(x_737, x_739);
  let x_748 : f32 = x_746.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_748);
  let x_750 : bool = u_xlatb4;
  if (x_750) {
    let x_754 : f32 = x_746.x_MainLightShadowParams.y;
    u_xlatb4 = (x_754 == 1.0f);
    let x_756 : bool = u_xlatb4;
    if (x_756) {
      let x_760 : vec4<f32> = vs_TEXCOORD8;
      let x_763 : vec4<f32> = x_746.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y) + x_763);
      let x_766 : vec4<f32> = u_xlat7;
      let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
      let x_769 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_767.x, x_767.y, x_769);
      let x_781 : vec3<f32> = txVec0;
      let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_781.xy, x_781.z);
      u_xlat8.x = x_783;
      let x_786 : vec4<f32> = u_xlat7;
      let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
      let x_789 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_787.x, x_787.y, x_789);
      let x_796 : vec3<f32> = txVec1;
      let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_796.xy, x_796.z);
      u_xlat8.y = x_798;
      let x_800 : vec4<f32> = vs_TEXCOORD8;
      let x_803 : vec4<f32> = x_746.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y) + x_803);
      let x_806 : vec4<f32> = u_xlat7;
      let x_807 : vec2<f32> = vec2<f32>(x_806.x, x_806.y);
      let x_809 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_807.x, x_807.y, x_809);
      let x_816 : vec3<f32> = txVec2;
      let x_818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_816.xy, x_816.z);
      u_xlat8.z = x_818;
      let x_821 : vec4<f32> = u_xlat7;
      let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
      let x_824 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_822.x, x_822.y, x_824);
      let x_831 : vec3<f32> = txVec3;
      let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_831.xy, x_831.z);
      u_xlat8.w = x_833;
      let x_835 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_835, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_843 : f32 = x_746.x_MainLightShadowParams.y;
      u_xlatb67 = (x_843 == 2.0f);
      let x_845 : bool = u_xlatb67;
      if (x_845) {
        let x_848 : vec4<f32> = vs_TEXCOORD8;
        let x_851 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_854 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_851.z, x_851.w)) + vec2<f32>(0.5f, 0.5f));
        let x_855 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat7;
        let x_859 : vec2<f32> = floor(vec2<f32>(x_857.x, x_857.y));
        let x_860 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_864 : vec4<f32> = vs_TEXCOORD8;
        let x_867 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_870 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_867.z, x_867.w)) + -(vec2<f32>(x_870.x, x_870.y)));
        let x_874 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_874.x, x_874.x, x_874.y, x_874.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_878 : vec4<f32> = u_xlat8;
        let x_880 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_878.x, x_878.x, x_878.z, x_878.z) * vec4<f32>(x_880.x, x_880.x, x_880.z, x_880.z));
        let x_883 : vec4<f32> = u_xlat9;
        let x_887 : vec2<f32> = (vec2<f32>(x_883.y, x_883.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_890 : vec4<f32> = u_xlat9;
        let x_893 : vec2<f32> = u_xlat49;
        let x_895 : vec2<f32> = ((vec2<f32>(x_890.x, x_890.z) * vec2<f32>(0.5f, 0.5f)) + -(x_893));
        let x_896 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_899 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_899) + vec2<f32>(1.0f, 1.0f));
        let x_902 : vec2<f32> = u_xlat49;
        let x_904 : vec2<f32> = min(x_902, vec2<f32>(0.0f, 0.0f));
        let x_905 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_907 : vec4<f32> = u_xlat10;
        let x_910 : vec4<f32> = u_xlat10;
        let x_913 : vec2<f32> = u_xlat51;
        let x_914 : vec2<f32> = ((-(vec2<f32>(x_907.x, x_907.y)) * vec2<f32>(x_910.x, x_910.y)) + x_913);
        let x_915 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
        let x_917 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_917, vec2<f32>(0.0f, 0.0f));
        let x_919 : vec2<f32> = u_xlat49;
        let x_921 : vec2<f32> = u_xlat49;
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_919) * x_921) + vec2<f32>(x_923.y, x_923.w));
        let x_926 : vec4<f32> = u_xlat10;
        let x_928 : vec2<f32> = (vec2<f32>(x_926.x, x_926.y) + vec2<f32>(1.0f, 1.0f));
        let x_929 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_931 + vec2<f32>(1.0f, 1.0f));
        let x_933 : vec4<f32> = u_xlat9;
        let x_937 : vec2<f32> = (vec2<f32>(x_933.x, x_933.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_938 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_940 : vec2<f32> = u_xlat51;
        let x_941 : vec2<f32> = (x_940 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_942 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat10;
        let x_946 : vec2<f32> = (vec2<f32>(x_944.x, x_944.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_947 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_949 : vec2<f32> = u_xlat49;
        let x_950 : vec2<f32> = (x_949 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_951 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_950.x, x_950.y, x_951.z, x_951.w);
        let x_953 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_953.y, x_953.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_957 : f32 = u_xlat10.x;
        u_xlat11.z = x_957;
        let x_960 : f32 = u_xlat49.x;
        u_xlat11.w = x_960;
        let x_963 : f32 = u_xlat12.x;
        u_xlat9.z = x_963;
        let x_966 : f32 = u_xlat8.x;
        u_xlat9.w = x_966;
        let x_968 : vec4<f32> = u_xlat9;
        let x_970 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_968.z, x_968.w, x_968.x, x_968.z) + vec4<f32>(x_970.z, x_970.w, x_970.x, x_970.z));
        let x_974 : f32 = u_xlat11.y;
        u_xlat10.z = x_974;
        let x_977 : f32 = u_xlat49.y;
        u_xlat10.w = x_977;
        let x_980 : f32 = u_xlat9.y;
        u_xlat12.z = x_980;
        let x_983 : f32 = u_xlat8.z;
        u_xlat12.w = x_983;
        let x_985 : vec4<f32> = u_xlat10;
        let x_987 : vec4<f32> = u_xlat12;
        let x_989 : vec3<f32> = (vec3<f32>(x_985.z, x_985.y, x_985.w) + vec3<f32>(x_987.z, x_987.y, x_987.w));
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat9;
        let x_994 : vec4<f32> = u_xlat13;
        let x_996 : vec3<f32> = (vec3<f32>(x_992.x, x_992.z, x_992.w) / vec3<f32>(x_994.z, x_994.w, x_994.y));
        let x_997 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
        let x_999 : vec4<f32> = u_xlat9;
        let x_1005 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1006 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat12;
        let x_1010 : vec4<f32> = u_xlat8;
        let x_1012 : vec3<f32> = (vec3<f32>(x_1008.z, x_1008.y, x_1008.w) / vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
        let x_1013 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat10;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1023 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1025 : vec3<f32> = (vec3<f32>(x_1020.y, x_1020.x, x_1020.z) * vec3<f32>(x_1023.x, x_1023.x, x_1023.x));
        let x_1026 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat10;
        let x_1031 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1033 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(x_1031.y, x_1031.y, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
        let x_1037 : f32 = u_xlat10.x;
        u_xlat9.w = x_1037;
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1042 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1045 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y) * vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y)) + vec4<f32>(x_1045.y, x_1045.w, x_1045.x, x_1045.w));
        let x_1048 : vec4<f32> = u_xlat7;
        let x_1051 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1054.z, x_1054.w));
        let x_1058 : f32 = u_xlat9.y;
        u_xlat10.w = x_1058;
        let x_1060 : vec4<f32> = u_xlat10;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.y, x_1060.z);
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1061.x, x_1062.z, x_1061.y);
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat7;
        let x_1076 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.w, x_1079.y, x_1079.w, x_1079.z));
        let x_1082 : vec4<f32> = u_xlat7;
        let x_1085 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y) * vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y)) + vec4<f32>(x_1088.x, x_1088.w, x_1088.z, x_1088.w));
        let x_1092 : vec4<f32> = u_xlat8;
        let x_1094 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1092.x, x_1092.x, x_1092.x, x_1092.y) * vec4<f32>(x_1094.z, x_1094.w, x_1094.y, x_1094.z));
        let x_1098 : vec4<f32> = u_xlat8;
        let x_1100 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1098.y, x_1098.y, x_1098.z, x_1098.z) * x_1100);
        let x_1104 : f32 = u_xlat8.z;
        let x_1106 : f32 = u_xlat13.y;
        u_xlat67 = (x_1104 * x_1106);
        let x_1109 : vec4<f32> = u_xlat11;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
        let x_1112 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1120 : vec3<f32> = txVec4;
        let x_1122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1120.xy, x_1120.z);
        u_xlat68 = x_1122;
        let x_1124 : vec4<f32> = u_xlat11;
        let x_1125 : vec2<f32> = vec2<f32>(x_1124.z, x_1124.w);
        let x_1127 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1125.x, x_1125.y, x_1127);
        let x_1135 : vec3<f32> = txVec5;
        let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1135.xy, x_1135.z);
        u_xlat69 = x_1137;
        let x_1138 : f32 = u_xlat69;
        let x_1140 : f32 = u_xlat14.y;
        u_xlat69 = (x_1138 * x_1140);
        let x_1143 : f32 = u_xlat14.x;
        let x_1144 : f32 = u_xlat68;
        let x_1146 : f32 = u_xlat69;
        u_xlat68 = ((x_1143 * x_1144) + x_1146);
        let x_1149 : vec2<f32> = u_xlat49;
        let x_1151 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1158 : vec3<f32> = txVec6;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1158.xy, x_1158.z);
        u_xlat69 = x_1160;
        let x_1162 : f32 = u_xlat14.z;
        let x_1163 : f32 = u_xlat69;
        let x_1165 : f32 = u_xlat68;
        u_xlat68 = ((x_1162 * x_1163) + x_1165);
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.x, x_1168.y);
        let x_1171 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1178 : vec3<f32> = txVec7;
        let x_1180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1178.xy, x_1178.z);
        u_xlat69 = x_1180;
        let x_1182 : f32 = u_xlat14.w;
        let x_1183 : f32 = u_xlat69;
        let x_1185 : f32 = u_xlat68;
        u_xlat68 = ((x_1182 * x_1183) + x_1185);
        let x_1188 : vec4<f32> = u_xlat12;
        let x_1189 : vec2<f32> = vec2<f32>(x_1188.x, x_1188.y);
        let x_1191 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1189.x, x_1189.y, x_1191);
        let x_1198 : vec3<f32> = txVec8;
        let x_1200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1198.xy, x_1198.z);
        u_xlat69 = x_1200;
        let x_1202 : f32 = u_xlat15.x;
        let x_1203 : f32 = u_xlat69;
        let x_1205 : f32 = u_xlat68;
        u_xlat68 = ((x_1202 * x_1203) + x_1205);
        let x_1208 : vec4<f32> = u_xlat12;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.z, x_1208.w);
        let x_1211 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec9;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1218.xy, x_1218.z);
        u_xlat69 = x_1220;
        let x_1222 : f32 = u_xlat15.y;
        let x_1223 : f32 = u_xlat69;
        let x_1225 : f32 = u_xlat68;
        u_xlat68 = ((x_1222 * x_1223) + x_1225);
        let x_1228 : vec4<f32> = u_xlat10;
        let x_1229 : vec2<f32> = vec2<f32>(x_1228.z, x_1228.w);
        let x_1231 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1229.x, x_1229.y, x_1231);
        let x_1238 : vec3<f32> = txVec10;
        let x_1240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1238.xy, x_1238.z);
        u_xlat69 = x_1240;
        let x_1242 : f32 = u_xlat15.z;
        let x_1243 : f32 = u_xlat69;
        let x_1245 : f32 = u_xlat68;
        u_xlat68 = ((x_1242 * x_1243) + x_1245);
        let x_1248 : vec4<f32> = u_xlat9;
        let x_1249 : vec2<f32> = vec2<f32>(x_1248.x, x_1248.y);
        let x_1251 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec11;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1258.xy, x_1258.z);
        u_xlat69 = x_1260;
        let x_1262 : f32 = u_xlat15.w;
        let x_1263 : f32 = u_xlat69;
        let x_1265 : f32 = u_xlat68;
        u_xlat68 = ((x_1262 * x_1263) + x_1265);
        let x_1268 : vec4<f32> = u_xlat9;
        let x_1269 : vec2<f32> = vec2<f32>(x_1268.z, x_1268.w);
        let x_1271 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1269.x, x_1269.y, x_1271);
        let x_1278 : vec3<f32> = txVec12;
        let x_1280 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1278.xy, x_1278.z);
        u_xlat69 = x_1280;
        let x_1281 : f32 = u_xlat67;
        let x_1282 : f32 = u_xlat69;
        let x_1284 : f32 = u_xlat68;
        u_xlat4.x = ((x_1281 * x_1282) + x_1284);
      } else {
        let x_1288 : vec4<f32> = vs_TEXCOORD8;
        let x_1291 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1291.z, x_1291.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1295 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1297 : vec4<f32> = u_xlat7;
        let x_1299 : vec2<f32> = floor(vec2<f32>(x_1297.x, x_1297.y));
        let x_1300 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
        let x_1302 : vec4<f32> = vs_TEXCOORD8;
        let x_1305 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.z, x_1305.w)) + -(vec2<f32>(x_1308.x, x_1308.y)));
        let x_1312 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1312.x, x_1312.x, x_1312.y, x_1312.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1317 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1315.x, x_1315.x, x_1315.z, x_1315.z) * vec4<f32>(x_1317.x, x_1317.x, x_1317.z, x_1317.z));
        let x_1320 : vec4<f32> = u_xlat9;
        let x_1324 : vec2<f32> = (vec2<f32>(x_1320.y, x_1320.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1325 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1325.x, x_1324.x, x_1325.z, x_1324.y);
        let x_1327 : vec4<f32> = u_xlat9;
        let x_1330 : vec2<f32> = u_xlat49;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1327.x, x_1327.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1330));
        let x_1333 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1332.x, x_1333.y, x_1332.y, x_1333.w);
        let x_1335 : vec2<f32> = u_xlat49;
        let x_1337 : vec2<f32> = (-(x_1335) + vec2<f32>(1.0f, 1.0f));
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1340 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1340, vec2<f32>(0.0f, 0.0f));
        let x_1342 : vec2<f32> = u_xlat51;
        let x_1344 : vec2<f32> = u_xlat51;
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1348 : vec2<f32> = ((-(x_1342) * x_1344) + vec2<f32>(x_1346.x, x_1346.y));
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
        let x_1351 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1351, vec2<f32>(0.0f, 0.0f));
        let x_1354 : vec2<f32> = u_xlat51;
        let x_1356 : vec2<f32> = u_xlat51;
        let x_1358 : vec4<f32> = u_xlat8;
        let x_1360 : vec2<f32> = ((-(x_1354) * x_1356) + vec2<f32>(x_1358.y, x_1358.w));
        let x_1361 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1360.x, x_1361.y, x_1360.y);
        let x_1363 : vec4<f32> = u_xlat9;
        let x_1366 : vec2<f32> = (vec2<f32>(x_1363.x, x_1363.y) + vec2<f32>(2.0f, 2.0f));
        let x_1367 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        let x_1369 : vec3<f32> = u_xlat29;
        let x_1371 : vec2<f32> = (vec2<f32>(x_1369.x, x_1369.z) + vec2<f32>(2.0f, 2.0f));
        let x_1372 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1372.x, x_1371.x, x_1372.z, x_1371.y);
        let x_1375 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1375 * 0.081632003f);
        let x_1379 : vec4<f32> = u_xlat8;
        let x_1382 : vec3<f32> = (vec3<f32>(x_1379.z, x_1379.x, x_1379.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1383 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
        let x_1385 : vec4<f32> = u_xlat9;
        let x_1388 : vec2<f32> = (vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1389 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1388.x, x_1388.y, x_1389.z, x_1389.w);
        let x_1392 : f32 = u_xlat12.y;
        u_xlat11.x = x_1392;
        let x_1394 : vec2<f32> = u_xlat49;
        let x_1401 : vec2<f32> = ((vec2<f32>(x_1394.x, x_1394.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1402 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1402.x, x_1401.x, x_1402.z, x_1401.y);
        let x_1404 : vec2<f32> = u_xlat49;
        let x_1408 : vec2<f32> = ((vec2<f32>(x_1404.x, x_1404.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1409 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1408.x, x_1409.y, x_1408.y, x_1409.w);
        let x_1412 : f32 = u_xlat8.x;
        u_xlat9.y = x_1412;
        let x_1415 : f32 = u_xlat10.y;
        u_xlat9.w = x_1415;
        let x_1417 : vec4<f32> = u_xlat9;
        let x_1418 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1417 + x_1418);
        let x_1420 : vec2<f32> = u_xlat49;
        let x_1423 : vec2<f32> = ((vec2<f32>(x_1420.y, x_1420.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1424 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1424.x, x_1423.x, x_1424.z, x_1423.y);
        let x_1426 : vec2<f32> = u_xlat49;
        let x_1429 : vec2<f32> = ((vec2<f32>(x_1426.y, x_1426.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1430 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1429.x, x_1430.y, x_1429.y, x_1430.w);
        let x_1433 : f32 = u_xlat8.y;
        u_xlat10.y = x_1433;
        let x_1435 : vec4<f32> = u_xlat10;
        let x_1436 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1435 + x_1436);
        let x_1438 : vec4<f32> = u_xlat9;
        let x_1439 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1438 / x_1439);
        let x_1441 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1441 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1447 : vec4<f32> = u_xlat10;
        let x_1448 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1447 / x_1448);
        let x_1450 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1450 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1452 : vec4<f32> = u_xlat9;
        let x_1455 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1452.w, x_1452.x, x_1452.y, x_1452.z) * vec4<f32>(x_1455.x, x_1455.x, x_1455.x, x_1455.x));
        let x_1458 : vec4<f32> = u_xlat10;
        let x_1461 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1458.x, x_1458.w, x_1458.y, x_1458.z) * vec4<f32>(x_1461.y, x_1461.y, x_1461.y, x_1461.y));
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1465 : vec3<f32> = vec3<f32>(x_1464.y, x_1464.z, x_1464.w);
        let x_1466 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1465.x, x_1466.y, x_1465.y, x_1465.z);
        let x_1469 : f32 = u_xlat10.x;
        u_xlat12.y = x_1469;
        let x_1471 : vec4<f32> = u_xlat7;
        let x_1474 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1477 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y) * vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.y)) + vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1477.y));
        let x_1480 : vec4<f32> = u_xlat7;
        let x_1483 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1486 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1480.x, x_1480.y) * vec2<f32>(x_1483.x, x_1483.y)) + vec2<f32>(x_1486.w, x_1486.y));
        let x_1490 : f32 = u_xlat12.y;
        u_xlat9.y = x_1490;
        let x_1493 : f32 = u_xlat10.z;
        u_xlat12.y = x_1493;
        let x_1495 : vec4<f32> = u_xlat7;
        let x_1498 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1501 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1495.x, x_1495.y, x_1495.x, x_1495.y) * vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y)) + vec4<f32>(x_1501.x, x_1501.y, x_1501.z, x_1501.y));
        let x_1504 : vec4<f32> = u_xlat7;
        let x_1507 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1510 : vec4<f32> = u_xlat12;
        let x_1512 : vec2<f32> = ((vec2<f32>(x_1504.x, x_1504.y) * vec2<f32>(x_1507.x, x_1507.y)) + vec2<f32>(x_1510.w, x_1510.y));
        let x_1513 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1512.x, x_1512.y, x_1513.z, x_1513.w);
        let x_1516 : f32 = u_xlat12.y;
        u_xlat9.z = x_1516;
        let x_1519 : vec4<f32> = u_xlat7;
        let x_1522 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1519.x, x_1519.y, x_1519.x, x_1519.y) * vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y)) + vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.z));
        let x_1529 : f32 = u_xlat10.w;
        u_xlat12.y = x_1529;
        let x_1532 : vec4<f32> = u_xlat7;
        let x_1535 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1532.x, x_1532.y, x_1532.x, x_1532.y) * vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y)) + vec4<f32>(x_1538.x, x_1538.y, x_1538.z, x_1538.y));
        let x_1542 : vec4<f32> = u_xlat7;
        let x_1545 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1548 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1542.x, x_1542.y) * vec2<f32>(x_1545.x, x_1545.y)) + vec2<f32>(x_1548.w, x_1548.y));
        let x_1552 : f32 = u_xlat12.y;
        u_xlat9.w = x_1552;
        let x_1555 : vec4<f32> = u_xlat7;
        let x_1558 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.x, x_1561.w));
        let x_1564 : vec4<f32> = u_xlat12;
        let x_1565 : vec3<f32> = vec3<f32>(x_1564.x, x_1564.z, x_1564.w);
        let x_1566 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1565.x, x_1566.y, x_1565.y, x_1565.z);
        let x_1568 : vec4<f32> = u_xlat7;
        let x_1571 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1568.x, x_1568.y, x_1568.x, x_1568.y) * vec4<f32>(x_1571.x, x_1571.y, x_1571.x, x_1571.y)) + vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1574.y));
        let x_1578 : vec4<f32> = u_xlat7;
        let x_1581 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1584 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1578.x, x_1578.y) * vec2<f32>(x_1581.x, x_1581.y)) + vec2<f32>(x_1584.w, x_1584.y));
        let x_1588 : f32 = u_xlat9.x;
        u_xlat10.x = x_1588;
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1593 : vec4<f32> = x_746.x_MainLightShadowmapSize;
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1598 : vec2<f32> = ((vec2<f32>(x_1590.x, x_1590.y) * vec2<f32>(x_1593.x, x_1593.y)) + vec2<f32>(x_1596.x, x_1596.y));
        let x_1599 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1598.x, x_1598.y, x_1599.z, x_1599.w);
        let x_1602 : vec4<f32> = u_xlat8;
        let x_1604 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1602.x, x_1602.x, x_1602.x, x_1602.x) * x_1604);
        let x_1607 : vec4<f32> = u_xlat8;
        let x_1609 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1607.y, x_1607.y, x_1607.y, x_1607.y) * x_1609);
        let x_1612 : vec4<f32> = u_xlat8;
        let x_1614 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1612.z, x_1612.z, x_1612.z, x_1612.z) * x_1614);
        let x_1616 : vec4<f32> = u_xlat8;
        let x_1618 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1616.w, x_1616.w, x_1616.w, x_1616.w) * x_1618);
        let x_1621 : vec4<f32> = u_xlat13;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
        let x_1624 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec13;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
        u_xlat67 = x_1633;
        let x_1635 : vec4<f32> = u_xlat13;
        let x_1636 : vec2<f32> = vec2<f32>(x_1635.z, x_1635.w);
        let x_1638 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec14;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1645.xy, x_1645.z);
        u_xlat68 = x_1647;
        let x_1648 : f32 = u_xlat68;
        let x_1650 : f32 = u_xlat18.y;
        u_xlat68 = (x_1648 * x_1650);
        let x_1653 : f32 = u_xlat18.x;
        let x_1654 : f32 = u_xlat67;
        let x_1656 : f32 = u_xlat68;
        u_xlat67 = ((x_1653 * x_1654) + x_1656);
        let x_1659 : vec2<f32> = u_xlat49;
        let x_1661 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1659.x, x_1659.y, x_1661);
        let x_1668 : vec3<f32> = txVec15;
        let x_1670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1668.xy, x_1668.z);
        u_xlat68 = x_1670;
        let x_1672 : f32 = u_xlat18.z;
        let x_1673 : f32 = u_xlat68;
        let x_1675 : f32 = u_xlat67;
        u_xlat67 = ((x_1672 * x_1673) + x_1675);
        let x_1678 : vec4<f32> = u_xlat16;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec16;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1688.xy, x_1688.z);
        u_xlat68 = x_1690;
        let x_1692 : f32 = u_xlat18.w;
        let x_1693 : f32 = u_xlat68;
        let x_1695 : f32 = u_xlat67;
        u_xlat67 = ((x_1692 * x_1693) + x_1695);
        let x_1698 : vec4<f32> = u_xlat14;
        let x_1699 : vec2<f32> = vec2<f32>(x_1698.x, x_1698.y);
        let x_1701 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec17;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1708.xy, x_1708.z);
        u_xlat68 = x_1710;
        let x_1712 : f32 = u_xlat19.x;
        let x_1713 : f32 = u_xlat68;
        let x_1715 : f32 = u_xlat67;
        u_xlat67 = ((x_1712 * x_1713) + x_1715);
        let x_1718 : vec4<f32> = u_xlat14;
        let x_1719 : vec2<f32> = vec2<f32>(x_1718.z, x_1718.w);
        let x_1721 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec18;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1728.xy, x_1728.z);
        u_xlat68 = x_1730;
        let x_1732 : f32 = u_xlat19.y;
        let x_1733 : f32 = u_xlat68;
        let x_1735 : f32 = u_xlat67;
        u_xlat67 = ((x_1732 * x_1733) + x_1735);
        let x_1738 : vec4<f32> = u_xlat15;
        let x_1739 : vec2<f32> = vec2<f32>(x_1738.x, x_1738.y);
        let x_1741 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1739.x, x_1739.y, x_1741);
        let x_1748 : vec3<f32> = txVec19;
        let x_1750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1748.xy, x_1748.z);
        u_xlat68 = x_1750;
        let x_1752 : f32 = u_xlat19.z;
        let x_1753 : f32 = u_xlat68;
        let x_1755 : f32 = u_xlat67;
        u_xlat67 = ((x_1752 * x_1753) + x_1755);
        let x_1758 : vec4<f32> = u_xlat16;
        let x_1759 : vec2<f32> = vec2<f32>(x_1758.z, x_1758.w);
        let x_1761 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1759.x, x_1759.y, x_1761);
        let x_1768 : vec3<f32> = txVec20;
        let x_1770 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1768.xy, x_1768.z);
        u_xlat68 = x_1770;
        let x_1772 : f32 = u_xlat19.w;
        let x_1773 : f32 = u_xlat68;
        let x_1775 : f32 = u_xlat67;
        u_xlat67 = ((x_1772 * x_1773) + x_1775);
        let x_1778 : vec4<f32> = u_xlat17;
        let x_1779 : vec2<f32> = vec2<f32>(x_1778.x, x_1778.y);
        let x_1781 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec21;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1788.xy, x_1788.z);
        u_xlat68 = x_1790;
        let x_1792 : f32 = u_xlat20.x;
        let x_1793 : f32 = u_xlat68;
        let x_1795 : f32 = u_xlat67;
        u_xlat67 = ((x_1792 * x_1793) + x_1795);
        let x_1798 : vec4<f32> = u_xlat17;
        let x_1799 : vec2<f32> = vec2<f32>(x_1798.z, x_1798.w);
        let x_1801 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1799.x, x_1799.y, x_1801);
        let x_1808 : vec3<f32> = txVec22;
        let x_1810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1808.xy, x_1808.z);
        u_xlat68 = x_1810;
        let x_1812 : f32 = u_xlat20.y;
        let x_1813 : f32 = u_xlat68;
        let x_1815 : f32 = u_xlat67;
        u_xlat67 = ((x_1812 * x_1813) + x_1815);
        let x_1818 : vec2<f32> = u_xlat30;
        let x_1820 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1818.x, x_1818.y, x_1820);
        let x_1827 : vec3<f32> = txVec23;
        let x_1829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1827.xy, x_1827.z);
        u_xlat68 = x_1829;
        let x_1831 : f32 = u_xlat20.z;
        let x_1832 : f32 = u_xlat68;
        let x_1834 : f32 = u_xlat67;
        u_xlat67 = ((x_1831 * x_1832) + x_1834);
        let x_1837 : vec2<f32> = u_xlat57;
        let x_1839 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
        let x_1846 : vec3<f32> = txVec24;
        let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1846.xy, x_1846.z);
        u_xlat68 = x_1848;
        let x_1850 : f32 = u_xlat20.w;
        let x_1851 : f32 = u_xlat68;
        let x_1853 : f32 = u_xlat67;
        u_xlat67 = ((x_1850 * x_1851) + x_1853);
        let x_1856 : vec4<f32> = u_xlat12;
        let x_1857 : vec2<f32> = vec2<f32>(x_1856.x, x_1856.y);
        let x_1859 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1857.x, x_1857.y, x_1859);
        let x_1866 : vec3<f32> = txVec25;
        let x_1868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1866.xy, x_1866.z);
        u_xlat68 = x_1868;
        let x_1870 : f32 = u_xlat8.x;
        let x_1871 : f32 = u_xlat68;
        let x_1873 : f32 = u_xlat67;
        u_xlat67 = ((x_1870 * x_1871) + x_1873);
        let x_1876 : vec4<f32> = u_xlat12;
        let x_1877 : vec2<f32> = vec2<f32>(x_1876.z, x_1876.w);
        let x_1879 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
        let x_1886 : vec3<f32> = txVec26;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1886.xy, x_1886.z);
        u_xlat68 = x_1888;
        let x_1890 : f32 = u_xlat8.y;
        let x_1891 : f32 = u_xlat68;
        let x_1893 : f32 = u_xlat67;
        u_xlat67 = ((x_1890 * x_1891) + x_1893);
        let x_1896 : vec2<f32> = u_xlat52;
        let x_1898 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1896.x, x_1896.y, x_1898);
        let x_1905 : vec3<f32> = txVec27;
        let x_1907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1905.xy, x_1905.z);
        u_xlat68 = x_1907;
        let x_1909 : f32 = u_xlat8.z;
        let x_1910 : f32 = u_xlat68;
        let x_1912 : f32 = u_xlat67;
        u_xlat67 = ((x_1909 * x_1910) + x_1912);
        let x_1915 : vec4<f32> = u_xlat7;
        let x_1916 : vec2<f32> = vec2<f32>(x_1915.x, x_1915.y);
        let x_1918 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec28;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1925.xy, x_1925.z);
        u_xlat68 = x_1927;
        let x_1929 : f32 = u_xlat8.w;
        let x_1930 : f32 = u_xlat68;
        let x_1932 : f32 = u_xlat67;
        u_xlat4.x = ((x_1929 * x_1930) + x_1932);
      }
    }
  } else {
    let x_1937 : vec4<f32> = vs_TEXCOORD8;
    let x_1938 : vec2<f32> = vec2<f32>(x_1937.x, x_1937.y);
    let x_1940 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
    let x_1947 : vec3<f32> = txVec29;
    let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1947.xy, x_1947.z);
    u_xlat4.x = x_1949;
  }
  let x_1952 : f32 = x_746.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_1952) + 1.0f);
  let x_1956 : f32 = u_xlat4.x;
  let x_1958 : f32 = x_746.x_MainLightShadowParams.x;
  let x_1960 : f32 = u_xlat67;
  u_xlat4.x = ((x_1956 * x_1958) + x_1960);
  let x_1964 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (0.0f >= x_1964);
  let x_1968 : f32 = vs_TEXCOORD8.z;
  u_xlatb68 = (x_1968 >= 1.0f);
  let x_1970 : bool = u_xlatb67;
  let x_1971 : bool = u_xlatb68;
  u_xlatb67 = (x_1970 | x_1971);
  let x_1973 : bool = u_xlatb67;
  if (x_1973) {
    x_1974 = 1.0f;
  } else {
    let x_1979 : f32 = u_xlat4.x;
    x_1974 = x_1979;
  }
  let x_1980 : f32 = x_1974;
  u_xlat4.x = x_1980;
  let x_1982 : vec3<f32> = vs_TEXCOORD7;
  let x_1984 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1986 : vec3<f32> = (x_1982 + -(x_1984));
  let x_1987 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
  let x_1989 : vec4<f32> = u_xlat7;
  let x_1991 : vec4<f32> = u_xlat7;
  u_xlat67 = dot(vec3<f32>(x_1989.x, x_1989.y, x_1989.z), vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : f32 = u_xlat67;
  let x_1996 : f32 = x_746.x_MainLightShadowParams.z;
  let x_1999 : f32 = x_746.x_MainLightShadowParams.w;
  u_xlat67 = ((x_1994 * x_1996) + x_1999);
  let x_2001 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2001, 0.0f, 1.0f);
  let x_2004 : f32 = u_xlat4.x;
  u_xlat68 = (-(x_2004) + 1.0f);
  let x_2007 : f32 = u_xlat67;
  let x_2008 : f32 = u_xlat68;
  let x_2011 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2007 * x_2008) + x_2011);
  let x_2014 : f32 = u_xlat46;
  let x_2017 : vec4<f32> = x_126.x_MainLightColor;
  let x_2019 : vec3<f32> = (vec3<f32>(x_2014, x_2014, x_2014) * vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
  let x_2022 : vec4<f32> = u_xlat1;
  let x_2025 : vec3<f32> = u_xlat2;
  u_xlat67 = dot(-(vec3<f32>(x_2022.x, x_2022.y, x_2022.z)), x_2025);
  let x_2027 : f32 = u_xlat67;
  let x_2028 : f32 = u_xlat67;
  u_xlat67 = (x_2027 + x_2028);
  let x_2030 : vec3<f32> = u_xlat2;
  let x_2031 : f32 = u_xlat67;
  let x_2035 : vec4<f32> = u_xlat1;
  let x_2038 : vec3<f32> = ((x_2030 * -(vec3<f32>(x_2031, x_2031, x_2031))) + -(vec3<f32>(x_2035.x, x_2035.y, x_2035.z)));
  let x_2039 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
  let x_2041 : vec3<f32> = u_xlat2;
  let x_2042 : vec4<f32> = u_xlat1;
  u_xlat67 = dot(x_2041, vec3<f32>(x_2042.x, x_2042.y, x_2042.z));
  let x_2045 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2045, 0.0f, 1.0f);
  let x_2047 : f32 = u_xlat67;
  u_xlat67 = (-(x_2047) + 1.0f);
  let x_2050 : f32 = u_xlat67;
  let x_2051 : f32 = u_xlat67;
  u_xlat67 = (x_2050 * x_2051);
  let x_2053 : f32 = u_xlat67;
  let x_2054 : f32 = u_xlat67;
  u_xlat67 = (x_2053 * x_2054);
  let x_2057 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_2057) * 0.699999988f) + 1.700000048f);
  let x_2064 : f32 = u_xlat0.x;
  let x_2065 : f32 = u_xlat68;
  u_xlat0.x = (x_2064 * x_2065);
  let x_2069 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2069 * 6.0f);
  let x_2081 : vec4<f32> = u_xlat8;
  let x_2084 : f32 = u_xlat0.x;
  let x_2085 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2081.x, x_2081.y, x_2081.z), x_2084);
  u_xlat8 = x_2085;
  let x_2087 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2087 + -1.0f);
  let x_2095 : f32 = x_2093.unity_SpecCube0_HDR.w;
  let x_2097 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2095 * x_2097) + 1.0f);
  let x_2102 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2102, 0.0f);
  let x_2106 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2106);
  let x_2110 : f32 = u_xlat0.x;
  let x_2112 : f32 = x_2093.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2110 * x_2112);
  let x_2116 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2116);
  let x_2120 : f32 = u_xlat0.x;
  let x_2122 : f32 = x_2093.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2120 * x_2122);
  let x_2125 : vec4<f32> = u_xlat8;
  let x_2127 : vec3<f32> = u_xlat0;
  let x_2129 : vec3<f32> = (vec3<f32>(x_2125.x, x_2125.y, x_2125.z) * vec3<f32>(x_2127.x, x_2127.x, x_2127.x));
  let x_2130 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2129.x, x_2129.y, x_2129.z, x_2130.w);
  let x_2132 : f32 = u_xlat42;
  let x_2134 : f32 = u_xlat42;
  let x_2138 : vec2<f32> = ((vec2<f32>(x_2132, x_2132) * vec2<f32>(x_2134, x_2134)) + vec2<f32>(-1.0f, 1.0f));
  let x_2139 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2138.x, x_2139.y, x_2138.y);
  let x_2142 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2142);
  let x_2144 : vec4<f32> = u_xlat5;
  let x_2147 : f32 = u_xlat66;
  let x_2149 : vec3<f32> = (-(vec3<f32>(x_2144.x, x_2144.y, x_2144.z)) + vec3<f32>(x_2147, x_2147, x_2147));
  let x_2150 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
  let x_2152 : f32 = u_xlat67;
  let x_2154 : vec4<f32> = u_xlat9;
  let x_2157 : vec4<f32> = u_xlat5;
  let x_2159 : vec3<f32> = ((vec3<f32>(x_2152, x_2152, x_2152) * vec3<f32>(x_2154.x, x_2154.y, x_2154.z)) + vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
  let x_2160 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
  let x_2162 : f32 = u_xlat42;
  let x_2164 : vec4<f32> = u_xlat9;
  let x_2166 : vec3<f32> = (vec3<f32>(x_2162, x_2162, x_2162) * vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2167 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
  let x_2169 : vec4<f32> = u_xlat8;
  let x_2171 : vec4<f32> = u_xlat9;
  let x_2173 : vec3<f32> = (vec3<f32>(x_2169.x, x_2169.y, x_2169.z) * vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
  let x_2174 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
  let x_2176 : vec4<f32> = u_xlat3;
  let x_2178 : vec4<f32> = u_xlat6;
  let x_2181 : vec4<f32> = u_xlat8;
  let x_2183 : vec3<f32> = ((vec3<f32>(x_2176.x, x_2176.y, x_2176.z) * vec3<f32>(x_2178.x, x_2178.y, x_2178.z)) + vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
  let x_2184 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
  let x_2187 : f32 = u_xlat4.x;
  let x_2189 : f32 = x_2093.unity_LightData.z;
  u_xlat42 = (x_2187 * x_2189);
  let x_2191 : vec3<f32> = u_xlat2;
  let x_2193 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat66 = dot(x_2191, vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
  let x_2196 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2196, 0.0f, 1.0f);
  let x_2198 : f32 = u_xlat42;
  let x_2199 : f32 = u_xlat66;
  u_xlat42 = (x_2198 * x_2199);
  let x_2201 : f32 = u_xlat42;
  let x_2203 : vec4<f32> = u_xlat7;
  let x_2205 : vec3<f32> = (vec3<f32>(x_2201, x_2201, x_2201) * vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
  let x_2206 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
  let x_2208 : vec4<f32> = u_xlat1;
  let x_2211 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2213 : vec3<f32> = (vec3<f32>(x_2208.x, x_2208.y, x_2208.z) + vec3<f32>(x_2211.x, x_2211.y, x_2211.z));
  let x_2214 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2213.x, x_2213.y, x_2213.z, x_2214.w);
  let x_2216 : vec4<f32> = u_xlat8;
  let x_2218 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2216.x, x_2216.y, x_2216.z), vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
  let x_2221 : f32 = u_xlat42;
  u_xlat42 = max(x_2221, 1.17549435e-37f);
  let x_2224 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2224);
  let x_2226 : f32 = u_xlat42;
  let x_2228 : vec4<f32> = u_xlat8;
  let x_2230 : vec3<f32> = (vec3<f32>(x_2226, x_2226, x_2226) * vec3<f32>(x_2228.x, x_2228.y, x_2228.z));
  let x_2231 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
  let x_2233 : vec3<f32> = u_xlat2;
  let x_2234 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_2233, vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
  let x_2237 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2237, 0.0f, 1.0f);
  let x_2240 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2242 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_2240.x, x_2240.y, x_2240.z), vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
  let x_2245 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2245, 0.0f, 1.0f);
  let x_2247 : f32 = u_xlat42;
  let x_2248 : f32 = u_xlat42;
  u_xlat42 = (x_2247 * x_2248);
  let x_2250 : f32 = u_xlat42;
  let x_2252 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2250 * x_2252) + 1.000010014f);
  let x_2256 : f32 = u_xlat66;
  let x_2257 : f32 = u_xlat66;
  u_xlat66 = (x_2256 * x_2257);
  let x_2259 : f32 = u_xlat42;
  let x_2260 : f32 = u_xlat42;
  u_xlat42 = (x_2259 * x_2260);
  let x_2262 : f32 = u_xlat66;
  u_xlat66 = max(x_2262, 0.100000001f);
  let x_2265 : f32 = u_xlat42;
  let x_2266 : f32 = u_xlat66;
  u_xlat42 = (x_2265 * x_2266);
  let x_2268 : f32 = u_xlat25;
  let x_2269 : f32 = u_xlat42;
  u_xlat42 = (x_2268 * x_2269);
  let x_2271 : f32 = u_xlat65;
  let x_2272 : f32 = u_xlat42;
  u_xlat42 = (x_2271 / x_2272);
  let x_2274 : vec4<f32> = u_xlat5;
  let x_2276 : f32 = u_xlat42;
  let x_2279 : vec4<f32> = u_xlat6;
  let x_2281 : vec3<f32> = ((vec3<f32>(x_2274.x, x_2274.y, x_2274.z) * vec3<f32>(x_2276, x_2276, x_2276)) + vec3<f32>(x_2279.x, x_2279.y, x_2279.z));
  let x_2282 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
  let x_2284 : vec4<f32> = u_xlat7;
  let x_2286 : vec4<f32> = u_xlat8;
  let x_2288 : vec3<f32> = (vec3<f32>(x_2284.x, x_2284.y, x_2284.z) * vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
  let x_2289 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
  let x_2292 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2294 : f32 = x_2093.unity_LightData.y;
  u_xlat42 = min(x_2292, x_2294);
  let x_2298 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2298));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2310 : u32 = u_xlatu_loop_1;
    let x_2311 : u32 = u_xlatu42;
    if ((x_2310 < x_2311)) {
    } else {
      break;
    }
    let x_2314 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_2314 >> 2u);
    let x_2318 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2318 & 3u));
    let x_2321 : u32 = u_xlatu4;
    let x_2324 : vec4<f32> = x_2093.unity_LightIndices[bitcast<i32>(x_2321)];
    let x_2334 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2339 : vec4<u32> = indexable[x_2334];
    u_xlat4.x = dot(x_2324, bitcast<vec4<f32>>(x_2339));
    let x_2345 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_2345);
    let x_2347 : vec3<f32> = vs_TEXCOORD7;
    let x_2359 : i32 = u_xlati4;
    let x_2361 : vec4<f32> = x_2358.x_AdditionalLightsPosition[x_2359];
    let x_2364 : i32 = u_xlati4;
    let x_2366 : vec4<f32> = x_2358.x_AdditionalLightsPosition[x_2364];
    let x_2368 : vec3<f32> = ((-(x_2347) * vec3<f32>(x_2361.w, x_2361.w, x_2361.w)) + vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
    let x_2369 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
    let x_2371 : vec4<f32> = u_xlat9;
    let x_2373 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2371.x, x_2371.y, x_2371.z), vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
    let x_2376 : f32 = u_xlat67;
    u_xlat67 = max(x_2376, 6.10351562e-05f);
    let x_2378 : f32 = u_xlat67;
    u_xlat68 = inverseSqrt(x_2378);
    let x_2380 : f32 = u_xlat68;
    let x_2382 : vec4<f32> = u_xlat9;
    let x_2384 : vec3<f32> = (vec3<f32>(x_2380, x_2380, x_2380) * vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
    let x_2385 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2384.x, x_2384.y, x_2384.z, x_2385.w);
    let x_2387 : f32 = u_xlat67;
    u_xlat69 = (1.0f / x_2387);
    let x_2389 : f32 = u_xlat67;
    let x_2390 : i32 = u_xlati4;
    let x_2392 : f32 = x_2358.x_AdditionalLightsAttenuation[x_2390].x;
    u_xlat67 = (x_2389 * x_2392);
    let x_2394 : f32 = u_xlat67;
    let x_2396 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2394) * x_2396) + 1.0f);
    let x_2399 : f32 = u_xlat67;
    u_xlat67 = max(x_2399, 0.0f);
    let x_2401 : f32 = u_xlat67;
    let x_2402 : f32 = u_xlat67;
    u_xlat67 = (x_2401 * x_2402);
    let x_2404 : f32 = u_xlat67;
    let x_2405 : f32 = u_xlat69;
    u_xlat67 = (x_2404 * x_2405);
    let x_2407 : i32 = u_xlati4;
    let x_2409 : vec4<f32> = x_2358.x_AdditionalLightsSpotDir[x_2407];
    let x_2411 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2409.x, x_2409.y, x_2409.z), vec3<f32>(x_2411.x, x_2411.y, x_2411.z));
    let x_2414 : f32 = u_xlat69;
    let x_2415 : i32 = u_xlati4;
    let x_2417 : f32 = x_2358.x_AdditionalLightsAttenuation[x_2415].z;
    let x_2419 : i32 = u_xlati4;
    let x_2421 : f32 = x_2358.x_AdditionalLightsAttenuation[x_2419].w;
    u_xlat69 = ((x_2414 * x_2417) + x_2421);
    let x_2423 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2423, 0.0f, 1.0f);
    let x_2425 : f32 = u_xlat69;
    let x_2426 : f32 = u_xlat69;
    u_xlat69 = (x_2425 * x_2426);
    let x_2428 : f32 = u_xlat67;
    let x_2429 : f32 = u_xlat69;
    u_xlat67 = (x_2428 * x_2429);
    let x_2431 : f32 = u_xlat46;
    let x_2433 : i32 = u_xlati4;
    let x_2435 : vec4<f32> = x_2358.x_AdditionalLightsColor[x_2433];
    let x_2437 : vec3<f32> = (vec3<f32>(x_2431, x_2431, x_2431) * vec3<f32>(x_2435.x, x_2435.y, x_2435.z));
    let x_2438 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
    let x_2440 : vec3<f32> = u_xlat2;
    let x_2441 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(x_2440, vec3<f32>(x_2441.x, x_2441.y, x_2441.z));
    let x_2446 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2446, 0.0f, 1.0f);
    let x_2450 : f32 = u_xlat4.x;
    let x_2451 : f32 = u_xlat67;
    u_xlat4.x = (x_2450 * x_2451);
    let x_2454 : vec4<f32> = u_xlat4;
    let x_2456 : vec4<f32> = u_xlat11;
    let x_2458 : vec3<f32> = (vec3<f32>(x_2454.x, x_2454.x, x_2454.x) * vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
    let x_2459 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
    let x_2461 : vec4<f32> = u_xlat9;
    let x_2463 : f32 = u_xlat68;
    let x_2466 : vec4<f32> = u_xlat1;
    let x_2468 : vec3<f32> = ((vec3<f32>(x_2461.x, x_2461.y, x_2461.z) * vec3<f32>(x_2463, x_2463, x_2463)) + vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
    let x_2469 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
    let x_2471 : vec4<f32> = u_xlat9;
    let x_2473 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_2471.x, x_2471.y, x_2471.z), vec3<f32>(x_2473.x, x_2473.y, x_2473.z));
    let x_2478 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_2478, 1.17549435e-37f);
    let x_2482 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_2482);
    let x_2485 : vec4<f32> = u_xlat4;
    let x_2487 : vec4<f32> = u_xlat9;
    let x_2489 : vec3<f32> = (vec3<f32>(x_2485.x, x_2485.x, x_2485.x) * vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
    let x_2490 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
    let x_2492 : vec3<f32> = u_xlat2;
    let x_2493 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(x_2492, vec3<f32>(x_2493.x, x_2493.y, x_2493.z));
    let x_2498 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2498, 0.0f, 1.0f);
    let x_2501 : vec4<f32> = u_xlat10;
    let x_2503 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_2501.x, x_2501.y, x_2501.z), vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
    let x_2508 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_2508, 0.0f, 1.0f);
    let x_2511 : vec4<f32> = u_xlat4;
    let x_2513 : vec4<f32> = u_xlat4;
    let x_2515 : vec2<f32> = (vec2<f32>(x_2511.x, x_2511.w) * vec2<f32>(x_2513.x, x_2513.w));
    let x_2516 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2515.x, x_2516.y, x_2516.z, x_2515.y);
    let x_2519 : f32 = u_xlat4.x;
    let x_2521 : f32 = u_xlat0.x;
    u_xlat4.x = ((x_2519 * x_2521) + 1.000010014f);
    let x_2526 : f32 = u_xlat4.x;
    let x_2528 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2526 * x_2528);
    let x_2532 : f32 = u_xlat4.w;
    u_xlat67 = max(x_2532, 0.100000001f);
    let x_2534 : f32 = u_xlat67;
    let x_2536 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2534 * x_2536);
    let x_2539 : f32 = u_xlat25;
    let x_2541 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2539 * x_2541);
    let x_2544 : f32 = u_xlat65;
    let x_2546 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2544 / x_2546);
    let x_2549 : vec4<f32> = u_xlat5;
    let x_2551 : vec4<f32> = u_xlat4;
    let x_2554 : vec4<f32> = u_xlat6;
    let x_2556 : vec3<f32> = ((vec3<f32>(x_2549.x, x_2549.y, x_2549.z) * vec3<f32>(x_2551.x, x_2551.x, x_2551.x)) + vec3<f32>(x_2554.x, x_2554.y, x_2554.z));
    let x_2557 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2557.w);
    let x_2559 : vec4<f32> = u_xlat9;
    let x_2561 : vec4<f32> = u_xlat11;
    let x_2564 : vec4<f32> = u_xlat8;
    let x_2566 : vec3<f32> = ((vec3<f32>(x_2559.x, x_2559.y, x_2559.z) * vec3<f32>(x_2561.x, x_2561.y, x_2561.z)) + vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
    let x_2567 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);

    continuing {
      let x_2569 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2569 + bitcast<u32>(1i));
    }
  }
  let x_2571 : vec4<f32> = u_xlat3;
  let x_2573 : f32 = u_xlat21;
  let x_2576 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2571.x, x_2571.y, x_2571.z) * vec3<f32>(x_2573, x_2573, x_2573)) + vec3<f32>(x_2576.x, x_2576.y, x_2576.z));
  let x_2579 : vec4<f32> = u_xlat8;
  let x_2581 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2579.x, x_2579.y, x_2579.z) + x_2581);
  let x_2583 : f32 = u_xlat64;
  let x_2584 : f32 = u_xlat64;
  u_xlat1.x = (x_2583 * -(x_2584));
  let x_2589 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2589);
  let x_2592 : vec3<f32> = u_xlat0;
  let x_2593 : f32 = u_xlat63;
  let x_2597 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_2592 * vec3<f32>(x_2593, x_2593, x_2593)) + -(vec3<f32>(x_2597.x, x_2597.y, x_2597.z)));
  let x_2603 : vec4<f32> = u_xlat1;
  let x_2605 : vec3<f32> = u_xlat0;
  let x_2608 : vec4<f32> = x_126.unity_FogColor;
  let x_2610 : vec3<f32> = ((vec3<f32>(x_2603.x, x_2603.x, x_2603.x) * x_2605) + vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
  let x_2611 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

