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

@group(1) @binding(4) var<uniform> x_583 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2310 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2560 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat66 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb67 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat67 : f32;
  var u_xlat44 : f32;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
  var u_xlat23 : vec3<f32>;
  var x_559 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu67 : u32;
  var u_xlati67 : i32;
  var u_xlat68 : f32;
  var u_xlat69 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlatb71 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb28 : bool;
  var u_xlat28 : vec3<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat50 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat72 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat58 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat31 : vec2<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat73 : f32;
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
  var u_xlatb25 : bool;
  var u_xlatb47 : bool;
  var x_2174 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlatu44 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu71 : u32;
  var u_xlati73 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati71 : i32;
  var u_xlat74 : f32;
  var u_xlat75 : f32;
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
  u_xlat66 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb67 = (4.0f >= x_218);
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
  let x_280 : bool = u_xlatb67;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat67;
  u_xlat67 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat67;
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
  u_xlat44 = dot(x_436, x_437);
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
  u_xlat22 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat23 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat23;
  let x_536 : vec3<f32> = u_xlat23;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat23;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat23 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_549 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_562 : vec3<f32> = u_xlat23;
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
  u_xlat67 = dot(x_569, x_570);
  let x_572 : f32 = u_xlat67;
  u_xlat67 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat67;
  let x_576 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_578 : vec3<f32> = vs_TEXCOORD7;
  let x_585 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres0;
  let x_588 : vec3<f32> = (x_578 + -(vec3<f32>(x_585.x, x_585.y, x_585.z)));
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = vs_TEXCOORD7;
  let x_593 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres1;
  let x_596 : vec3<f32> = (x_591 + -(vec3<f32>(x_593.x, x_593.y, x_593.z)));
  let x_597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres2;
  let x_605 : vec3<f32> = (x_599 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_610 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres3;
  let x_613 : vec3<f32> = (x_608 + -(vec3<f32>(x_610.x, x_610.y, x_610.z)));
  let x_614 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat3;
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_634 : vec4<f32> = u_xlat7;
  let x_636 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_642 : vec4<f32> = u_xlat3;
  let x_644 : vec4<f32> = x_583.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_642 < x_644);
  let x_647 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_647);
  let x_651 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_655);
  let x_659 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_663);
  let x_668 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_668);
  let x_672 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_672);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(x_677.y, x_677.z, x_677.w));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat3;
  let x_685 : vec3<f32> = max(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_686 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_686.x, x_685.x, x_685.y, x_685.z);
  let x_688 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_688, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_693 : f32 = u_xlat67;
  u_xlat67 = (-(x_693) + 4.0f);
  let x_698 : f32 = u_xlat67;
  u_xlatu67 = u32(x_698);
  let x_702 : u32 = u_xlatu67;
  u_xlati67 = (bitcast<i32>(x_702) << bitcast<u32>(2i));
  let x_705 : vec3<f32> = vs_TEXCOORD7;
  let x_707 : i32 = u_xlati67;
  let x_710 : i32 = u_xlati67;
  let x_714 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_707 + 1i) / 4i)][((x_710 + 1i) % 4i)];
  let x_716 : vec3<f32> = (vec3<f32>(x_705.y, x_705.y, x_705.y) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : i32 = u_xlati67;
  let x_721 : i32 = u_xlati67;
  let x_724 : vec4<f32> = x_583.x_MainLightWorldToShadow[(x_719 / 4i)][(x_721 % 4i)];
  let x_726 : vec3<f32> = vs_TEXCOORD7;
  let x_729 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726.x, x_726.x, x_726.x)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : i32 = u_xlati67;
  let x_737 : i32 = u_xlati67;
  let x_741 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_734 + 2i) / 4i)][((x_737 + 2i) % 4i)];
  let x_743 : vec3<f32> = vs_TEXCOORD7;
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.z, x_743.z, x_743.z)) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat3;
  let x_753 : i32 = u_xlati67;
  let x_756 : i32 = u_xlati67;
  let x_760 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_753 + 3i) / 4i)][((x_756 + 3i) % 4i)];
  let x_762 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_766 : f32 = vs_TEXCOORD7.y;
  let x_768 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat67 = (x_766 * x_768);
  let x_771 : f32 = x_126.unity_MatrixV[0i].z;
  let x_773 : f32 = vs_TEXCOORD7.x;
  let x_775 : f32 = u_xlat67;
  u_xlat67 = ((x_771 * x_773) + x_775);
  let x_778 : f32 = x_126.unity_MatrixV[2i].z;
  let x_780 : f32 = vs_TEXCOORD7.z;
  let x_782 : f32 = u_xlat67;
  u_xlat67 = ((x_778 * x_780) + x_782);
  let x_784 : f32 = u_xlat67;
  let x_786 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat67 = (x_784 + x_786);
  let x_788 : f32 = u_xlat67;
  let x_791 : f32 = x_126.x_ProjectionParams.y;
  u_xlat67 = (-(x_788) + -(x_791));
  let x_794 : f32 = u_xlat67;
  u_xlat67 = max(x_794, 0.0f);
  let x_796 : f32 = u_xlat67;
  let x_798 : f32 = x_126.unity_FogParams.x;
  u_xlat67 = (x_796 * x_798);
  let x_805 : vec4<f32> = vs_TEXCOORD0;
  let x_808 : f32 = x_126.x_GlobalMipBias.x;
  let x_809 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_805.z, x_805.w), x_808);
  let x_810 : vec3<f32> = vec3<f32>(x_809.x, x_809.y, x_809.z);
  let x_811 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_815 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_816 : vec2<f32> = vec2<f32>(x_815.x, x_815.y);
  let x_820 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_816.x, x_816.y));
  let x_821 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_820.x, x_820.y, x_821.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = hlslcc_FragCoord;
  let x_827 : vec2<f32> = (vec2<f32>(x_823.x, x_823.y) * vec2<f32>(x_825.x, x_825.y));
  let x_828 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
  let x_832 : f32 = u_xlat6.y;
  let x_834 : f32 = x_126.x_ScaleBiasRt.x;
  let x_837 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat68 = ((x_832 * x_834) + x_837);
  let x_839 : f32 = u_xlat68;
  u_xlat6.z = (-(x_839) + 1.0f);
  let x_844 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_844) * 0.959999979f) + 0.959999979f);
  let x_850 : f32 = u_xlat44;
  let x_851 : f32 = u_xlat68;
  u_xlat69 = (x_850 + -(x_851));
  let x_854 : f32 = u_xlat68;
  let x_856 : vec4<f32> = u_xlat5;
  let x_858 : vec3<f32> = (vec3<f32>(x_854, x_854, x_854) * vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat5;
  let x_865 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_866 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec3<f32> = u_xlat0;
  let x_870 : vec4<f32> = u_xlat5;
  let x_875 : vec3<f32> = ((vec3<f32>(x_868.x, x_868.x, x_868.x) * vec3<f32>(x_870.x, x_870.y, x_870.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_876 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : f32 = u_xlat44;
  u_xlat0.x = (-(x_878) + 1.0f);
  let x_883 : f32 = u_xlat0.x;
  let x_885 : f32 = u_xlat0.x;
  u_xlat44 = (x_883 * x_885);
  let x_887 : f32 = u_xlat44;
  u_xlat44 = max(x_887, 0.0078125f);
  let x_890 : f32 = u_xlat44;
  let x_891 : f32 = u_xlat44;
  u_xlat68 = (x_890 * x_891);
  let x_893 : f32 = u_xlat69;
  u_xlat69 = (x_893 + 1.0f);
  let x_895 : f32 = u_xlat69;
  u_xlat69 = clamp(x_895, 0.0f, 1.0f);
  let x_898 : f32 = u_xlat44;
  u_xlat70 = ((x_898 * 4.0f) + 2.0f);
  let x_907 : vec4<f32> = u_xlat6;
  let x_910 : f32 = x_126.x_GlobalMipBias.x;
  let x_911 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_907.x, x_907.z), x_910);
  u_xlat71 = x_911.x;
  let x_913 : f32 = u_xlat71;
  u_xlat6.x = (x_913 + -1.0f);
  let x_917 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_919 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_917 * x_919) + 1.0f);
  let x_923 : f32 = u_xlat22;
  let x_924 : f32 = u_xlat71;
  u_xlat22 = min(x_923, x_924);
  let x_928 : f32 = x_583.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_928);
  let x_930 : bool = u_xlatb71;
  if (x_930) {
    let x_934 : f32 = x_583.x_MainLightShadowParams.y;
    u_xlatb71 = (x_934 == 1.0f);
    let x_936 : bool = u_xlatb71;
    if (x_936) {
      let x_939 : vec4<f32> = u_xlat3;
      let x_942 : vec4<f32> = x_583.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_939.x, x_939.y, x_939.x, x_939.y) + x_942);
      let x_945 : vec4<f32> = u_xlat8;
      let x_946 : vec2<f32> = vec2<f32>(x_945.x, x_945.y);
      let x_948 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_946.x, x_946.y, x_948);
      let x_960 : vec3<f32> = txVec0;
      let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_960.xy, x_960.z);
      u_xlat9.x = x_962;
      let x_965 : vec4<f32> = u_xlat8;
      let x_966 : vec2<f32> = vec2<f32>(x_965.z, x_965.w);
      let x_968 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_966.x, x_966.y, x_968);
      let x_975 : vec3<f32> = txVec1;
      let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_975.xy, x_975.z);
      u_xlat9.y = x_977;
      let x_979 : vec4<f32> = u_xlat3;
      let x_982 : vec4<f32> = x_583.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y) + x_982);
      let x_985 : vec4<f32> = u_xlat8;
      let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
      let x_988 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_986.x, x_986.y, x_988);
      let x_995 : vec3<f32> = txVec2;
      let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_995.xy, x_995.z);
      u_xlat9.z = x_997;
      let x_1000 : vec4<f32> = u_xlat8;
      let x_1001 : vec2<f32> = vec2<f32>(x_1000.z, x_1000.w);
      let x_1003 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
      let x_1010 : vec3<f32> = txVec3;
      let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1010.xy, x_1010.z);
      u_xlat9.w = x_1012;
      let x_1014 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_1014, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1021 : f32 = x_583.x_MainLightShadowParams.y;
      u_xlatb28 = (x_1021 == 2.0f);
      let x_1023 : bool = u_xlatb28;
      if (x_1023) {
        let x_1027 : vec4<f32> = u_xlat3;
        let x_1030 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.z, x_1030.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1034 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1033.x, x_1033.y, x_1034.z);
        let x_1036 : vec3<f32> = u_xlat28;
        let x_1038 : vec2<f32> = floor(vec2<f32>(x_1036.x, x_1036.y));
        let x_1039 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1038.x, x_1038.y, x_1039.z);
        let x_1041 : vec4<f32> = u_xlat3;
        let x_1044 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1047 : vec3<f32> = u_xlat28;
        let x_1050 : vec2<f32> = ((vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(x_1044.z, x_1044.w)) + -(vec2<f32>(x_1047.x, x_1047.y)));
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1053.x, x_1053.x, x_1053.y, x_1053.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1057.x, x_1057.x, x_1057.z, x_1057.z) * vec4<f32>(x_1059.x, x_1059.x, x_1059.z, x_1059.z));
        let x_1064 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1064.y, x_1064.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1069 : vec4<f32> = u_xlat10;
        let x_1072 : vec4<f32> = u_xlat8;
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1069.x, x_1069.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1072.x, x_1072.y)));
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1075.x, x_1076.y, x_1075.y, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat8;
        let x_1081 : vec2<f32> = (-(vec2<f32>(x_1078.x, x_1078.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1082 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1085 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1085.x, x_1085.y), vec2<f32>(0.0f, 0.0f));
        let x_1089 : vec2<f32> = u_xlat54;
        let x_1091 : vec2<f32> = u_xlat54;
        let x_1093 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1089) * x_1091) + vec2<f32>(x_1093.x, x_1093.y));
        let x_1096 : vec4<f32> = u_xlat8;
        let x_1098 : vec2<f32> = max(vec2<f32>(x_1096.x, x_1096.y), vec2<f32>(0.0f, 0.0f));
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1104 : vec4<f32> = u_xlat8;
        let x_1107 : vec4<f32> = u_xlat9;
        let x_1109 : vec2<f32> = ((-(vec2<f32>(x_1101.x, x_1101.y)) * vec2<f32>(x_1104.x, x_1104.y)) + vec2<f32>(x_1107.y, x_1107.w));
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1112 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1112 + vec2<f32>(1.0f, 1.0f));
        let x_1114 : vec4<f32> = u_xlat8;
        let x_1116 : vec2<f32> = (vec2<f32>(x_1114.x, x_1114.y) + vec2<f32>(1.0f, 1.0f));
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1123 : vec2<f32> = (vec2<f32>(x_1119.x, x_1119.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1124 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1128 : vec2<f32> = (vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1129 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec2<f32> = u_xlat54;
        let x_1132 : vec2<f32> = (x_1131 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1133 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat8;
        let x_1137 : vec2<f32> = (vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1138 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1142 : vec2<f32> = (vec2<f32>(x_1140.y, x_1140.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1146 : f32 = u_xlat10.x;
        u_xlat11.z = x_1146;
        let x_1149 : f32 = u_xlat8.x;
        u_xlat11.w = x_1149;
        let x_1152 : f32 = u_xlat13.x;
        u_xlat12.z = x_1152;
        let x_1155 : f32 = u_xlat52.x;
        u_xlat12.w = x_1155;
        let x_1157 : vec4<f32> = u_xlat11;
        let x_1159 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1157.z, x_1157.w, x_1157.x, x_1157.z) + vec4<f32>(x_1159.z, x_1159.w, x_1159.x, x_1159.z));
        let x_1163 : f32 = u_xlat11.y;
        u_xlat10.z = x_1163;
        let x_1166 : f32 = u_xlat8.y;
        u_xlat10.w = x_1166;
        let x_1169 : f32 = u_xlat12.y;
        u_xlat13.z = x_1169;
        let x_1172 : f32 = u_xlat52.y;
        u_xlat13.w = x_1172;
        let x_1174 : vec4<f32> = u_xlat10;
        let x_1176 : vec4<f32> = u_xlat13;
        let x_1178 : vec3<f32> = (vec3<f32>(x_1174.z, x_1174.y, x_1174.w) + vec3<f32>(x_1176.z, x_1176.y, x_1176.w));
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
        let x_1181 : vec4<f32> = u_xlat12;
        let x_1183 : vec4<f32> = u_xlat9;
        let x_1185 : vec3<f32> = (vec3<f32>(x_1181.x, x_1181.z, x_1181.w) / vec3<f32>(x_1183.z, x_1183.w, x_1183.y));
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
        let x_1188 : vec4<f32> = u_xlat10;
        let x_1194 : vec3<f32> = (vec3<f32>(x_1188.x, x_1188.y, x_1188.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1195 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
        let x_1197 : vec4<f32> = u_xlat13;
        let x_1199 : vec4<f32> = u_xlat8;
        let x_1201 : vec3<f32> = (vec3<f32>(x_1197.z, x_1197.y, x_1197.w) / vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
        let x_1202 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat11;
        let x_1206 : vec3<f32> = (vec3<f32>(x_1204.x, x_1204.y, x_1204.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1207 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1212 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1214 : vec3<f32> = (vec3<f32>(x_1209.y, x_1209.x, x_1209.z) * vec3<f32>(x_1212.x, x_1212.x, x_1212.x));
        let x_1215 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat11;
        let x_1220 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1222 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) * vec3<f32>(x_1220.y, x_1220.y, x_1220.y));
        let x_1223 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
        let x_1226 : f32 = u_xlat11.x;
        u_xlat10.w = x_1226;
        let x_1228 : vec3<f32> = u_xlat28;
        let x_1231 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y) * vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y)) + vec4<f32>(x_1234.y, x_1234.w, x_1234.x, x_1234.w));
        let x_1237 : vec3<f32> = u_xlat28;
        let x_1240 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat10;
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1237.x, x_1237.y) * vec2<f32>(x_1240.x, x_1240.y)) + vec2<f32>(x_1243.z, x_1243.w));
        let x_1246 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1249 : f32 = u_xlat10.y;
        u_xlat11.w = x_1249;
        let x_1251 : vec4<f32> = u_xlat11;
        let x_1252 : vec2<f32> = vec2<f32>(x_1251.y, x_1251.z);
        let x_1253 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1253.x, x_1252.x, x_1253.z, x_1252.y);
        let x_1256 : vec3<f32> = u_xlat28;
        let x_1259 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1262 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y) * vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y)) + vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1262.y));
        let x_1265 : vec3<f32> = u_xlat28;
        let x_1268 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.w, x_1271.y, x_1271.w, x_1271.z));
        let x_1274 : vec3<f32> = u_xlat28;
        let x_1277 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y) * vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y)) + vec4<f32>(x_1280.x, x_1280.w, x_1280.z, x_1280.w));
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1286 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1284.x, x_1284.x, x_1284.x, x_1284.y) * vec4<f32>(x_1286.z, x_1286.w, x_1286.y, x_1286.z));
        let x_1290 : vec4<f32> = u_xlat8;
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1290.y, x_1290.y, x_1290.z, x_1290.z) * x_1292);
        let x_1295 : f32 = u_xlat8.z;
        let x_1297 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1295 * x_1297);
        let x_1301 : vec4<f32> = u_xlat12;
        let x_1302 : vec2<f32> = vec2<f32>(x_1301.x, x_1301.y);
        let x_1304 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1312 : vec3<f32> = txVec4;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1312.xy, x_1312.z);
        u_xlat50 = x_1314;
        let x_1316 : vec4<f32> = u_xlat12;
        let x_1317 : vec2<f32> = vec2<f32>(x_1316.z, x_1316.w);
        let x_1319 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1317.x, x_1317.y, x_1319);
        let x_1327 : vec3<f32> = txVec5;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1327.xy, x_1327.z);
        u_xlat72 = x_1329;
        let x_1330 : f32 = u_xlat72;
        let x_1332 : f32 = u_xlat15.y;
        u_xlat72 = (x_1330 * x_1332);
        let x_1335 : f32 = u_xlat15.x;
        let x_1336 : f32 = u_xlat50;
        let x_1338 : f32 = u_xlat72;
        u_xlat50 = ((x_1335 * x_1336) + x_1338);
        let x_1341 : vec4<f32> = u_xlat13;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec6;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1351.xy, x_1351.z);
        u_xlat72 = x_1353;
        let x_1355 : f32 = u_xlat15.z;
        let x_1356 : f32 = u_xlat72;
        let x_1358 : f32 = u_xlat50;
        u_xlat50 = ((x_1355 * x_1356) + x_1358);
        let x_1361 : vec4<f32> = u_xlat11;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec7;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1371.xy, x_1371.z);
        u_xlat72 = x_1373;
        let x_1375 : f32 = u_xlat15.w;
        let x_1376 : f32 = u_xlat72;
        let x_1378 : f32 = u_xlat50;
        u_xlat50 = ((x_1375 * x_1376) + x_1378);
        let x_1381 : vec4<f32> = u_xlat14;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.x, x_1381.y);
        let x_1384 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec8;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1391.xy, x_1391.z);
        u_xlat72 = x_1393;
        let x_1395 : f32 = u_xlat16.x;
        let x_1396 : f32 = u_xlat72;
        let x_1398 : f32 = u_xlat50;
        u_xlat50 = ((x_1395 * x_1396) + x_1398);
        let x_1401 : vec4<f32> = u_xlat14;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec9;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat72 = x_1413;
        let x_1415 : f32 = u_xlat16.y;
        let x_1416 : f32 = u_xlat72;
        let x_1418 : f32 = u_xlat50;
        u_xlat50 = ((x_1415 * x_1416) + x_1418);
        let x_1421 : vec4<f32> = u_xlat11;
        let x_1422 : vec2<f32> = vec2<f32>(x_1421.z, x_1421.w);
        let x_1424 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec10;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1431.xy, x_1431.z);
        u_xlat72 = x_1433;
        let x_1435 : f32 = u_xlat16.z;
        let x_1436 : f32 = u_xlat72;
        let x_1438 : f32 = u_xlat50;
        u_xlat50 = ((x_1435 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat10;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.x, x_1441.y);
        let x_1444 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec11;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1451.xy, x_1451.z);
        u_xlat72 = x_1453;
        let x_1455 : f32 = u_xlat16.w;
        let x_1456 : f32 = u_xlat72;
        let x_1458 : f32 = u_xlat50;
        u_xlat50 = ((x_1455 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat10;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.z, x_1461.w);
        let x_1464 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec12;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1471.xy, x_1471.z);
        u_xlat72 = x_1473;
        let x_1475 : f32 = u_xlat28.x;
        let x_1476 : f32 = u_xlat72;
        let x_1478 : f32 = u_xlat50;
        u_xlat71 = ((x_1475 * x_1476) + x_1478);
      } else {
        let x_1481 : vec4<f32> = u_xlat3;
        let x_1484 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1487 : vec2<f32> = ((vec2<f32>(x_1481.x, x_1481.y) * vec2<f32>(x_1484.z, x_1484.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1488 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1487.x, x_1487.y, x_1488.z);
        let x_1490 : vec3<f32> = u_xlat28;
        let x_1492 : vec2<f32> = floor(vec2<f32>(x_1490.x, x_1490.y));
        let x_1493 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1492.x, x_1492.y, x_1493.z);
        let x_1495 : vec4<f32> = u_xlat3;
        let x_1498 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1501 : vec3<f32> = u_xlat28;
        let x_1504 : vec2<f32> = ((vec2<f32>(x_1495.x, x_1495.y) * vec2<f32>(x_1498.z, x_1498.w)) + -(vec2<f32>(x_1501.x, x_1501.y)));
        let x_1505 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1504.x, x_1504.y, x_1505.z, x_1505.w);
        let x_1507 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1507.x, x_1507.x, x_1507.y, x_1507.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1510 : vec4<f32> = u_xlat9;
        let x_1512 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1510.x, x_1510.x, x_1510.z, x_1510.z) * vec4<f32>(x_1512.x, x_1512.x, x_1512.z, x_1512.z));
        let x_1515 : vec4<f32> = u_xlat10;
        let x_1519 : vec2<f32> = (vec2<f32>(x_1515.y, x_1515.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1520 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1520.x, x_1519.x, x_1520.z, x_1519.y);
        let x_1522 : vec4<f32> = u_xlat10;
        let x_1525 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1522.x, x_1522.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1525.x, x_1525.y)));
        let x_1529 : vec4<f32> = u_xlat8;
        let x_1532 : vec2<f32> = (-(vec2<f32>(x_1529.x, x_1529.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1533 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1532.x, x_1533.y, x_1532.y, x_1533.w);
        let x_1535 : vec4<f32> = u_xlat8;
        let x_1537 : vec2<f32> = min(vec2<f32>(x_1535.x, x_1535.y), vec2<f32>(0.0f, 0.0f));
        let x_1538 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1537.x, x_1537.y, x_1538.z, x_1538.w);
        let x_1540 : vec4<f32> = u_xlat10;
        let x_1543 : vec4<f32> = u_xlat10;
        let x_1546 : vec4<f32> = u_xlat9;
        let x_1548 : vec2<f32> = ((-(vec2<f32>(x_1540.x, x_1540.y)) * vec2<f32>(x_1543.x, x_1543.y)) + vec2<f32>(x_1546.x, x_1546.z));
        let x_1549 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1548.x, x_1549.y, x_1548.y, x_1549.w);
        let x_1551 : vec4<f32> = u_xlat8;
        let x_1553 : vec2<f32> = max(vec2<f32>(x_1551.x, x_1551.y), vec2<f32>(0.0f, 0.0f));
        let x_1554 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1553.x, x_1553.y, x_1554.z, x_1554.w);
        let x_1556 : vec4<f32> = u_xlat10;
        let x_1559 : vec4<f32> = u_xlat10;
        let x_1562 : vec4<f32> = u_xlat9;
        let x_1564 : vec2<f32> = ((-(vec2<f32>(x_1556.x, x_1556.y)) * vec2<f32>(x_1559.x, x_1559.y)) + vec2<f32>(x_1562.y, x_1562.w));
        let x_1565 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1565.x, x_1564.x, x_1565.z, x_1564.y);
        let x_1567 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1567 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1571 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1571 * 0.081632003f);
        let x_1575 : vec2<f32> = u_xlat52;
        let x_1578 : vec2<f32> = (vec2<f32>(x_1575.y, x_1575.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1579 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1578.x, x_1578.y, x_1579.z, x_1579.w);
        let x_1581 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1581.x, x_1581.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1585 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1585 * 0.081632003f);
        let x_1589 : f32 = u_xlat12.y;
        u_xlat10.x = x_1589;
        let x_1591 : vec4<f32> = u_xlat8;
        let x_1598 : vec2<f32> = ((vec2<f32>(x_1591.x, x_1591.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1599 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1599.x, x_1598.x, x_1599.z, x_1598.y);
        let x_1601 : vec4<f32> = u_xlat8;
        let x_1605 : vec2<f32> = ((vec2<f32>(x_1601.x, x_1601.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1606 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1605.x, x_1606.y, x_1605.y, x_1606.w);
        let x_1609 : f32 = u_xlat52.x;
        u_xlat9.y = x_1609;
        let x_1612 : f32 = u_xlat11.y;
        u_xlat9.w = x_1612;
        let x_1614 : vec4<f32> = u_xlat9;
        let x_1615 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1614 + x_1615);
        let x_1617 : vec4<f32> = u_xlat8;
        let x_1620 : vec2<f32> = ((vec2<f32>(x_1617.y, x_1617.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1621 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1621.x, x_1620.x, x_1621.z, x_1620.y);
        let x_1623 : vec4<f32> = u_xlat8;
        let x_1626 : vec2<f32> = ((vec2<f32>(x_1623.y, x_1623.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1626.x, x_1627.y, x_1626.y, x_1627.w);
        let x_1630 : f32 = u_xlat52.y;
        u_xlat11.y = x_1630;
        let x_1632 : vec4<f32> = u_xlat11;
        let x_1633 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1632 + x_1633);
        let x_1635 : vec4<f32> = u_xlat9;
        let x_1636 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1635 / x_1636);
        let x_1638 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1638 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1644 : vec4<f32> = u_xlat11;
        let x_1645 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1644 / x_1645);
        let x_1647 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1647 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1649 : vec4<f32> = u_xlat9;
        let x_1652 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1649.w, x_1649.x, x_1649.y, x_1649.z) * vec4<f32>(x_1652.x, x_1652.x, x_1652.x, x_1652.x));
        let x_1655 : vec4<f32> = u_xlat11;
        let x_1658 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1655.x, x_1655.w, x_1655.y, x_1655.z) * vec4<f32>(x_1658.y, x_1658.y, x_1658.y, x_1658.y));
        let x_1661 : vec4<f32> = u_xlat9;
        let x_1662 : vec3<f32> = vec3<f32>(x_1661.y, x_1661.z, x_1661.w);
        let x_1663 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1662.x, x_1663.y, x_1662.y, x_1662.z);
        let x_1666 : f32 = u_xlat11.x;
        u_xlat12.y = x_1666;
        let x_1668 : vec3<f32> = u_xlat28;
        let x_1671 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1674 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1668.x, x_1668.y, x_1668.x, x_1668.y) * vec4<f32>(x_1671.x, x_1671.y, x_1671.x, x_1671.y)) + vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1674.y));
        let x_1677 : vec3<f32> = u_xlat28;
        let x_1680 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1683 : vec4<f32> = u_xlat12;
        let x_1685 : vec2<f32> = ((vec2<f32>(x_1677.x, x_1677.y) * vec2<f32>(x_1680.x, x_1680.y)) + vec2<f32>(x_1683.w, x_1683.y));
        let x_1686 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1685.x, x_1685.y, x_1686.z, x_1686.w);
        let x_1689 : f32 = u_xlat12.y;
        u_xlat9.y = x_1689;
        let x_1692 : f32 = u_xlat11.z;
        u_xlat12.y = x_1692;
        let x_1694 : vec3<f32> = u_xlat28;
        let x_1697 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1700 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1694.x, x_1694.y, x_1694.x, x_1694.y) * vec4<f32>(x_1697.x, x_1697.y, x_1697.x, x_1697.y)) + vec4<f32>(x_1700.x, x_1700.y, x_1700.z, x_1700.y));
        let x_1704 : vec3<f32> = u_xlat28;
        let x_1707 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1710 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1704.x, x_1704.y) * vec2<f32>(x_1707.x, x_1707.y)) + vec2<f32>(x_1710.w, x_1710.y));
        let x_1714 : f32 = u_xlat12.y;
        u_xlat9.z = x_1714;
        let x_1716 : vec3<f32> = u_xlat28;
        let x_1719 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1722 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1716.x, x_1716.y, x_1716.x, x_1716.y) * vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.y)) + vec4<f32>(x_1722.x, x_1722.y, x_1722.x, x_1722.z));
        let x_1726 : f32 = u_xlat11.w;
        u_xlat12.y = x_1726;
        let x_1729 : vec3<f32> = u_xlat28;
        let x_1732 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1735 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1729.x, x_1729.y, x_1729.x, x_1729.y) * vec4<f32>(x_1732.x, x_1732.y, x_1732.x, x_1732.y)) + vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1735.y));
        let x_1739 : vec3<f32> = u_xlat28;
        let x_1742 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1745 : vec4<f32> = u_xlat12;
        u_xlat31 = ((vec2<f32>(x_1739.x, x_1739.y) * vec2<f32>(x_1742.x, x_1742.y)) + vec2<f32>(x_1745.w, x_1745.y));
        let x_1749 : f32 = u_xlat12.y;
        u_xlat9.w = x_1749;
        let x_1752 : vec3<f32> = u_xlat28;
        let x_1755 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1758 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1752.x, x_1752.y) * vec2<f32>(x_1755.x, x_1755.y)) + vec2<f32>(x_1758.x, x_1758.w));
        let x_1761 : vec4<f32> = u_xlat12;
        let x_1762 : vec3<f32> = vec3<f32>(x_1761.x, x_1761.z, x_1761.w);
        let x_1763 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1762.x, x_1763.y, x_1762.y, x_1762.z);
        let x_1765 : vec3<f32> = u_xlat28;
        let x_1768 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1771 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1765.x, x_1765.y, x_1765.x, x_1765.y) * vec4<f32>(x_1768.x, x_1768.y, x_1768.x, x_1768.y)) + vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1771.y));
        let x_1775 : vec3<f32> = u_xlat28;
        let x_1778 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1781 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1775.x, x_1775.y) * vec2<f32>(x_1778.x, x_1778.y)) + vec2<f32>(x_1781.w, x_1781.y));
        let x_1785 : f32 = u_xlat9.x;
        u_xlat11.x = x_1785;
        let x_1787 : vec3<f32> = u_xlat28;
        let x_1790 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1793 : vec4<f32> = u_xlat11;
        let x_1795 : vec2<f32> = ((vec2<f32>(x_1787.x, x_1787.y) * vec2<f32>(x_1790.x, x_1790.y)) + vec2<f32>(x_1793.x, x_1793.y));
        let x_1796 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1795.x, x_1795.y, x_1796.z);
        let x_1799 : vec4<f32> = u_xlat8;
        let x_1801 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1799.x, x_1799.x, x_1799.x, x_1799.x) * x_1801);
        let x_1804 : vec4<f32> = u_xlat8;
        let x_1806 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1804.y, x_1804.y, x_1804.y, x_1804.y) * x_1806);
        let x_1809 : vec4<f32> = u_xlat8;
        let x_1811 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1809.z, x_1809.z, x_1809.z, x_1809.z) * x_1811);
        let x_1813 : vec4<f32> = u_xlat8;
        let x_1815 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1813.w, x_1813.w, x_1813.w, x_1813.w) * x_1815);
        let x_1818 : vec4<f32> = u_xlat13;
        let x_1819 : vec2<f32> = vec2<f32>(x_1818.x, x_1818.y);
        let x_1821 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1819.x, x_1819.y, x_1821);
        let x_1828 : vec3<f32> = txVec13;
        let x_1830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1828.xy, x_1828.z);
        u_xlat72 = x_1830;
        let x_1832 : vec4<f32> = u_xlat13;
        let x_1833 : vec2<f32> = vec2<f32>(x_1832.z, x_1832.w);
        let x_1835 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1833.x, x_1833.y, x_1835);
        let x_1843 : vec3<f32> = txVec14;
        let x_1845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1843.xy, x_1843.z);
        u_xlat73 = x_1845;
        let x_1846 : f32 = u_xlat73;
        let x_1848 : f32 = u_xlat19.y;
        u_xlat73 = (x_1846 * x_1848);
        let x_1851 : f32 = u_xlat19.x;
        let x_1852 : f32 = u_xlat72;
        let x_1854 : f32 = u_xlat73;
        u_xlat72 = ((x_1851 * x_1852) + x_1854);
        let x_1857 : vec4<f32> = u_xlat14;
        let x_1858 : vec2<f32> = vec2<f32>(x_1857.x, x_1857.y);
        let x_1860 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1858.x, x_1858.y, x_1860);
        let x_1867 : vec3<f32> = txVec15;
        let x_1869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1867.xy, x_1867.z);
        u_xlat73 = x_1869;
        let x_1871 : f32 = u_xlat19.z;
        let x_1872 : f32 = u_xlat73;
        let x_1874 : f32 = u_xlat72;
        u_xlat72 = ((x_1871 * x_1872) + x_1874);
        let x_1877 : vec4<f32> = u_xlat16;
        let x_1878 : vec2<f32> = vec2<f32>(x_1877.x, x_1877.y);
        let x_1880 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1878.x, x_1878.y, x_1880);
        let x_1887 : vec3<f32> = txVec16;
        let x_1889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1887.xy, x_1887.z);
        u_xlat73 = x_1889;
        let x_1891 : f32 = u_xlat19.w;
        let x_1892 : f32 = u_xlat73;
        let x_1894 : f32 = u_xlat72;
        u_xlat72 = ((x_1891 * x_1892) + x_1894);
        let x_1897 : vec4<f32> = u_xlat15;
        let x_1898 : vec2<f32> = vec2<f32>(x_1897.x, x_1897.y);
        let x_1900 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1898.x, x_1898.y, x_1900);
        let x_1907 : vec3<f32> = txVec17;
        let x_1909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1907.xy, x_1907.z);
        u_xlat73 = x_1909;
        let x_1911 : f32 = u_xlat20.x;
        let x_1912 : f32 = u_xlat73;
        let x_1914 : f32 = u_xlat72;
        u_xlat72 = ((x_1911 * x_1912) + x_1914);
        let x_1917 : vec4<f32> = u_xlat15;
        let x_1918 : vec2<f32> = vec2<f32>(x_1917.z, x_1917.w);
        let x_1920 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
        let x_1927 : vec3<f32> = txVec18;
        let x_1929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1927.xy, x_1927.z);
        u_xlat73 = x_1929;
        let x_1931 : f32 = u_xlat20.y;
        let x_1932 : f32 = u_xlat73;
        let x_1934 : f32 = u_xlat72;
        u_xlat72 = ((x_1931 * x_1932) + x_1934);
        let x_1937 : vec2<f32> = u_xlat58;
        let x_1939 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec19;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1946.xy, x_1946.z);
        u_xlat73 = x_1948;
        let x_1950 : f32 = u_xlat20.z;
        let x_1951 : f32 = u_xlat73;
        let x_1953 : f32 = u_xlat72;
        u_xlat72 = ((x_1950 * x_1951) + x_1953);
        let x_1956 : vec4<f32> = u_xlat16;
        let x_1957 : vec2<f32> = vec2<f32>(x_1956.z, x_1956.w);
        let x_1959 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1957.x, x_1957.y, x_1959);
        let x_1966 : vec3<f32> = txVec20;
        let x_1968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1966.xy, x_1966.z);
        u_xlat73 = x_1968;
        let x_1970 : f32 = u_xlat20.w;
        let x_1971 : f32 = u_xlat73;
        let x_1973 : f32 = u_xlat72;
        u_xlat72 = ((x_1970 * x_1971) + x_1973);
        let x_1976 : vec4<f32> = u_xlat17;
        let x_1977 : vec2<f32> = vec2<f32>(x_1976.x, x_1976.y);
        let x_1979 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
        let x_1986 : vec3<f32> = txVec21;
        let x_1988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1986.xy, x_1986.z);
        u_xlat73 = x_1988;
        let x_1990 : f32 = u_xlat21.x;
        let x_1991 : f32 = u_xlat73;
        let x_1993 : f32 = u_xlat72;
        u_xlat72 = ((x_1990 * x_1991) + x_1993);
        let x_1996 : vec4<f32> = u_xlat17;
        let x_1997 : vec2<f32> = vec2<f32>(x_1996.z, x_1996.w);
        let x_1999 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
        let x_2006 : vec3<f32> = txVec22;
        let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2006.xy, x_2006.z);
        u_xlat73 = x_2008;
        let x_2010 : f32 = u_xlat21.y;
        let x_2011 : f32 = u_xlat73;
        let x_2013 : f32 = u_xlat72;
        u_xlat72 = ((x_2010 * x_2011) + x_2013);
        let x_2016 : vec2<f32> = u_xlat31;
        let x_2018 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2016.x, x_2016.y, x_2018);
        let x_2025 : vec3<f32> = txVec23;
        let x_2027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2025.xy, x_2025.z);
        u_xlat73 = x_2027;
        let x_2029 : f32 = u_xlat21.z;
        let x_2030 : f32 = u_xlat73;
        let x_2032 : f32 = u_xlat72;
        u_xlat72 = ((x_2029 * x_2030) + x_2032);
        let x_2035 : vec2<f32> = u_xlat18;
        let x_2037 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2035.x, x_2035.y, x_2037);
        let x_2044 : vec3<f32> = txVec24;
        let x_2046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2044.xy, x_2044.z);
        u_xlat73 = x_2046;
        let x_2048 : f32 = u_xlat21.w;
        let x_2049 : f32 = u_xlat73;
        let x_2051 : f32 = u_xlat72;
        u_xlat72 = ((x_2048 * x_2049) + x_2051);
        let x_2054 : vec4<f32> = u_xlat12;
        let x_2055 : vec2<f32> = vec2<f32>(x_2054.x, x_2054.y);
        let x_2057 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2055.x, x_2055.y, x_2057);
        let x_2064 : vec3<f32> = txVec25;
        let x_2066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2064.xy, x_2064.z);
        u_xlat73 = x_2066;
        let x_2068 : f32 = u_xlat8.x;
        let x_2069 : f32 = u_xlat73;
        let x_2071 : f32 = u_xlat72;
        u_xlat72 = ((x_2068 * x_2069) + x_2071);
        let x_2074 : vec4<f32> = u_xlat12;
        let x_2075 : vec2<f32> = vec2<f32>(x_2074.z, x_2074.w);
        let x_2077 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
        let x_2084 : vec3<f32> = txVec26;
        let x_2086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2084.xy, x_2084.z);
        u_xlat73 = x_2086;
        let x_2088 : f32 = u_xlat8.y;
        let x_2089 : f32 = u_xlat73;
        let x_2091 : f32 = u_xlat72;
        u_xlat72 = ((x_2088 * x_2089) + x_2091);
        let x_2094 : vec2<f32> = u_xlat55;
        let x_2096 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2094.x, x_2094.y, x_2096);
        let x_2103 : vec3<f32> = txVec27;
        let x_2105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2103.xy, x_2103.z);
        u_xlat73 = x_2105;
        let x_2107 : f32 = u_xlat8.z;
        let x_2108 : f32 = u_xlat73;
        let x_2110 : f32 = u_xlat72;
        u_xlat72 = ((x_2107 * x_2108) + x_2110);
        let x_2113 : vec3<f32> = u_xlat28;
        let x_2114 : vec2<f32> = vec2<f32>(x_2113.x, x_2113.y);
        let x_2116 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2114.x, x_2114.y, x_2116);
        let x_2123 : vec3<f32> = txVec28;
        let x_2125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2123.xy, x_2123.z);
        u_xlat28.x = x_2125;
        let x_2128 : f32 = u_xlat8.w;
        let x_2130 : f32 = u_xlat28.x;
        let x_2132 : f32 = u_xlat72;
        u_xlat71 = ((x_2128 * x_2130) + x_2132);
      }
    }
  } else {
    let x_2136 : vec4<f32> = u_xlat3;
    let x_2137 : vec2<f32> = vec2<f32>(x_2136.x, x_2136.y);
    let x_2139 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
    let x_2146 : vec3<f32> = txVec29;
    let x_2148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2146.xy, x_2146.z);
    u_xlat71 = x_2148;
  }
  let x_2150 : f32 = x_583.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2150) + 1.0f);
  let x_2154 : f32 = u_xlat71;
  let x_2156 : f32 = x_583.x_MainLightShadowParams.x;
  let x_2159 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2154 * x_2156) + x_2159);
  let x_2164 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f >= x_2164);
  let x_2168 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2168 >= 1.0f);
  let x_2170 : bool = u_xlatb47;
  let x_2171 : bool = u_xlatb25;
  u_xlatb25 = (x_2170 | x_2171);
  let x_2173 : bool = u_xlatb25;
  if (x_2173) {
    x_2174 = 1.0f;
  } else {
    let x_2179 : f32 = u_xlat3.x;
    x_2174 = x_2179;
  }
  let x_2180 : f32 = x_2174;
  u_xlat3.x = x_2180;
  let x_2182 : vec3<f32> = vs_TEXCOORD7;
  let x_2184 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2182 + -(x_2184));
  let x_2188 : vec3<f32> = u_xlat28;
  let x_2189 : vec3<f32> = u_xlat28;
  u_xlat25.x = dot(x_2188, x_2189);
  let x_2193 : f32 = u_xlat25.x;
  let x_2195 : f32 = x_583.x_MainLightShadowParams.z;
  let x_2198 : f32 = x_583.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2193 * x_2195) + x_2198);
  let x_2202 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2202, 0.0f, 1.0f);
  let x_2207 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2207) + 1.0f);
  let x_2211 : f32 = u_xlat25.x;
  let x_2212 : f32 = u_xlat47;
  let x_2215 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2211 * x_2212) + x_2215);
  let x_2218 : vec4<f32> = u_xlat6;
  let x_2221 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat28 = (vec3<f32>(x_2218.x, x_2218.x, x_2218.x) * vec3<f32>(x_2221.x, x_2221.y, x_2221.z));
  let x_2224 : vec4<f32> = u_xlat1;
  let x_2227 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(-(vec3<f32>(x_2224.x, x_2224.y, x_2224.z)), x_2227);
  let x_2231 : f32 = u_xlat25.x;
  let x_2233 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2231 + x_2233);
  let x_2236 : vec3<f32> = u_xlat2;
  let x_2237 : vec3<f32> = u_xlat25;
  let x_2241 : vec4<f32> = u_xlat1;
  let x_2244 : vec3<f32> = ((x_2236 * -(vec3<f32>(x_2237.x, x_2237.x, x_2237.x))) + -(vec3<f32>(x_2241.x, x_2241.y, x_2241.z)));
  let x_2245 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
  let x_2247 : vec3<f32> = u_xlat2;
  let x_2248 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2247, vec3<f32>(x_2248.x, x_2248.y, x_2248.z));
  let x_2253 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2253, 0.0f, 1.0f);
  let x_2257 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2257) + 1.0f);
  let x_2262 : f32 = u_xlat25.x;
  let x_2264 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2262 * x_2264);
  let x_2268 : f32 = u_xlat25.x;
  let x_2270 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2268 * x_2270);
  let x_2274 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2274) * 0.699999988f) + 1.700000048f);
  let x_2281 : f32 = u_xlat0.x;
  let x_2282 : f32 = u_xlat47;
  u_xlat0.x = (x_2281 * x_2282);
  let x_2286 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2286 * 6.0f);
  let x_2298 : vec4<f32> = u_xlat8;
  let x_2301 : f32 = u_xlat0.x;
  let x_2302 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2298.x, x_2298.y, x_2298.z), x_2301);
  u_xlat8 = x_2302;
  let x_2304 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2304 + -1.0f);
  let x_2312 : f32 = x_2310.unity_SpecCube0_HDR.w;
  let x_2314 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2312 * x_2314) + 1.0f);
  let x_2319 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2319, 0.0f);
  let x_2323 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2323);
  let x_2327 : f32 = u_xlat0.x;
  let x_2329 : f32 = x_2310.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2327 * x_2329);
  let x_2333 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2333);
  let x_2337 : f32 = u_xlat0.x;
  let x_2339 : f32 = x_2310.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2337 * x_2339);
  let x_2342 : vec4<f32> = u_xlat8;
  let x_2344 : vec3<f32> = u_xlat0;
  let x_2346 : vec3<f32> = (vec3<f32>(x_2342.x, x_2342.y, x_2342.z) * vec3<f32>(x_2344.x, x_2344.x, x_2344.x));
  let x_2347 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
  let x_2349 : f32 = u_xlat44;
  let x_2351 : f32 = u_xlat44;
  let x_2355 : vec2<f32> = ((vec2<f32>(x_2349, x_2349) * vec2<f32>(x_2351, x_2351)) + vec2<f32>(-1.0f, 1.0f));
  let x_2356 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2355.x, x_2356.y, x_2355.y);
  let x_2359 : f32 = u_xlat0.z;
  u_xlat44 = (1.0f / x_2359);
  let x_2361 : vec4<f32> = u_xlat5;
  let x_2364 : f32 = u_xlat69;
  let x_2366 : vec3<f32> = (-(vec3<f32>(x_2361.x, x_2361.y, x_2361.z)) + vec3<f32>(x_2364, x_2364, x_2364));
  let x_2367 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2366.x, x_2366.y, x_2366.z, x_2367.w);
  let x_2369 : vec3<f32> = u_xlat25;
  let x_2371 : vec4<f32> = u_xlat9;
  let x_2374 : vec4<f32> = u_xlat5;
  u_xlat25 = ((vec3<f32>(x_2369.x, x_2369.x, x_2369.x) * vec3<f32>(x_2371.x, x_2371.y, x_2371.z)) + vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
  let x_2377 : f32 = u_xlat44;
  let x_2379 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2377, x_2377, x_2377) * x_2379);
  let x_2381 : vec3<f32> = u_xlat25;
  let x_2382 : vec4<f32> = u_xlat8;
  u_xlat25 = (x_2381 * vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
  let x_2385 : vec4<f32> = u_xlat4;
  let x_2387 : vec4<f32> = u_xlat7;
  let x_2390 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_2385.x, x_2385.y, x_2385.z) * vec3<f32>(x_2387.x, x_2387.y, x_2387.z)) + x_2390);
  let x_2393 : f32 = u_xlat3.x;
  let x_2395 : f32 = x_2310.unity_LightData.z;
  u_xlat44 = (x_2393 * x_2395);
  let x_2397 : vec3<f32> = u_xlat2;
  let x_2399 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_2397, vec3<f32>(x_2399.x, x_2399.y, x_2399.z));
  let x_2404 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2404, 0.0f, 1.0f);
  let x_2407 : f32 = u_xlat44;
  let x_2409 : f32 = u_xlat3.x;
  u_xlat44 = (x_2407 * x_2409);
  let x_2411 : f32 = u_xlat44;
  let x_2413 : vec3<f32> = u_xlat28;
  let x_2414 : vec3<f32> = (vec3<f32>(x_2411, x_2411, x_2411) * x_2413);
  let x_2415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2414.x, x_2414.y, x_2414.z, x_2415.w);
  let x_2417 : vec4<f32> = u_xlat1;
  let x_2420 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2417.x, x_2417.y, x_2417.z) + vec3<f32>(x_2420.x, x_2420.y, x_2420.z));
  let x_2423 : vec3<f32> = u_xlat28;
  let x_2424 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2423, x_2424);
  let x_2426 : f32 = u_xlat44;
  u_xlat44 = max(x_2426, 1.17549435e-37f);
  let x_2429 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_2429);
  let x_2431 : f32 = u_xlat44;
  let x_2433 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2431, x_2431, x_2431) * x_2433);
  let x_2435 : vec3<f32> = u_xlat2;
  let x_2436 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2435, x_2436);
  let x_2438 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2438, 0.0f, 1.0f);
  let x_2441 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2443 : vec3<f32> = u_xlat28;
  u_xlat3.x = dot(vec3<f32>(x_2441.x, x_2441.y, x_2441.z), x_2443);
  let x_2447 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2447, 0.0f, 1.0f);
  let x_2450 : f32 = u_xlat44;
  let x_2451 : f32 = u_xlat44;
  u_xlat44 = (x_2450 * x_2451);
  let x_2453 : f32 = u_xlat44;
  let x_2455 : f32 = u_xlat0.x;
  u_xlat44 = ((x_2453 * x_2455) + 1.000010014f);
  let x_2460 : f32 = u_xlat3.x;
  let x_2462 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2460 * x_2462);
  let x_2465 : f32 = u_xlat44;
  let x_2466 : f32 = u_xlat44;
  u_xlat44 = (x_2465 * x_2466);
  let x_2469 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2469, 0.100000001f);
  let x_2473 : f32 = u_xlat44;
  let x_2475 : f32 = u_xlat3.x;
  u_xlat44 = (x_2473 * x_2475);
  let x_2477 : f32 = u_xlat70;
  let x_2478 : f32 = u_xlat44;
  u_xlat44 = (x_2477 * x_2478);
  let x_2480 : f32 = u_xlat68;
  let x_2481 : f32 = u_xlat44;
  u_xlat44 = (x_2480 / x_2481);
  let x_2483 : vec4<f32> = u_xlat5;
  let x_2485 : f32 = u_xlat44;
  let x_2488 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2483.x, x_2483.y, x_2483.z) * vec3<f32>(x_2485, x_2485, x_2485)) + vec3<f32>(x_2488.x, x_2488.y, x_2488.z));
  let x_2491 : vec4<f32> = u_xlat4;
  let x_2493 : vec3<f32> = u_xlat28;
  let x_2494 : vec3<f32> = (vec3<f32>(x_2491.x, x_2491.y, x_2491.z) * x_2493);
  let x_2495 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
  let x_2498 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2500 : f32 = x_2310.unity_LightData.y;
  u_xlat44 = min(x_2498, x_2500);
  let x_2503 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_2503));
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2515 : u32 = u_xlatu_loop_1;
    let x_2516 : u32 = u_xlatu44;
    if ((x_2515 < x_2516)) {
    } else {
      break;
    }
    let x_2519 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2519 >> 2u);
    let x_2522 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_2522 & 3u));
    let x_2525 : u32 = u_xlatu71;
    let x_2528 : vec4<f32> = x_2310.unity_LightIndices[bitcast<i32>(x_2525)];
    let x_2538 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2543 : vec4<u32> = indexable[x_2538];
    u_xlat71 = dot(x_2528, bitcast<vec4<f32>>(x_2543));
    let x_2547 : f32 = u_xlat71;
    u_xlati71 = i32(x_2547);
    let x_2549 : vec3<f32> = vs_TEXCOORD7;
    let x_2561 : i32 = u_xlati71;
    let x_2563 : vec4<f32> = x_2560.x_AdditionalLightsPosition[x_2561];
    let x_2566 : i32 = u_xlati71;
    let x_2568 : vec4<f32> = x_2560.x_AdditionalLightsPosition[x_2566];
    let x_2570 : vec3<f32> = ((-(x_2549) * vec3<f32>(x_2563.w, x_2563.w, x_2563.w)) + vec3<f32>(x_2568.x, x_2568.y, x_2568.z));
    let x_2571 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
    let x_2573 : vec4<f32> = u_xlat8;
    let x_2575 : vec4<f32> = u_xlat8;
    u_xlat73 = dot(vec3<f32>(x_2573.x, x_2573.y, x_2573.z), vec3<f32>(x_2575.x, x_2575.y, x_2575.z));
    let x_2578 : f32 = u_xlat73;
    u_xlat73 = max(x_2578, 6.10351562e-05f);
    let x_2581 : f32 = u_xlat73;
    u_xlat74 = inverseSqrt(x_2581);
    let x_2583 : f32 = u_xlat74;
    let x_2585 : vec4<f32> = u_xlat8;
    let x_2587 : vec3<f32> = (vec3<f32>(x_2583, x_2583, x_2583) * vec3<f32>(x_2585.x, x_2585.y, x_2585.z));
    let x_2588 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2588.w);
    let x_2591 : f32 = u_xlat73;
    u_xlat75 = (1.0f / x_2591);
    let x_2593 : f32 = u_xlat73;
    let x_2594 : i32 = u_xlati71;
    let x_2596 : f32 = x_2560.x_AdditionalLightsAttenuation[x_2594].x;
    u_xlat73 = (x_2593 * x_2596);
    let x_2598 : f32 = u_xlat73;
    let x_2600 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2598) * x_2600) + 1.0f);
    let x_2603 : f32 = u_xlat73;
    u_xlat73 = max(x_2603, 0.0f);
    let x_2605 : f32 = u_xlat73;
    let x_2606 : f32 = u_xlat73;
    u_xlat73 = (x_2605 * x_2606);
    let x_2608 : f32 = u_xlat73;
    let x_2609 : f32 = u_xlat75;
    u_xlat73 = (x_2608 * x_2609);
    let x_2611 : i32 = u_xlati71;
    let x_2613 : vec4<f32> = x_2560.x_AdditionalLightsSpotDir[x_2611];
    let x_2615 : vec4<f32> = u_xlat9;
    u_xlat75 = dot(vec3<f32>(x_2613.x, x_2613.y, x_2613.z), vec3<f32>(x_2615.x, x_2615.y, x_2615.z));
    let x_2618 : f32 = u_xlat75;
    let x_2619 : i32 = u_xlati71;
    let x_2621 : f32 = x_2560.x_AdditionalLightsAttenuation[x_2619].z;
    let x_2623 : i32 = u_xlati71;
    let x_2625 : f32 = x_2560.x_AdditionalLightsAttenuation[x_2623].w;
    u_xlat75 = ((x_2618 * x_2621) + x_2625);
    let x_2627 : f32 = u_xlat75;
    u_xlat75 = clamp(x_2627, 0.0f, 1.0f);
    let x_2629 : f32 = u_xlat75;
    let x_2630 : f32 = u_xlat75;
    u_xlat75 = (x_2629 * x_2630);
    let x_2632 : f32 = u_xlat73;
    let x_2633 : f32 = u_xlat75;
    u_xlat73 = (x_2632 * x_2633);
    let x_2635 : vec4<f32> = u_xlat6;
    let x_2637 : i32 = u_xlati71;
    let x_2639 : vec4<f32> = x_2560.x_AdditionalLightsColor[x_2637];
    let x_2641 : vec3<f32> = (vec3<f32>(x_2635.x, x_2635.x, x_2635.x) * vec3<f32>(x_2639.x, x_2639.y, x_2639.z));
    let x_2642 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
    let x_2644 : vec3<f32> = u_xlat2;
    let x_2645 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(x_2644, vec3<f32>(x_2645.x, x_2645.y, x_2645.z));
    let x_2648 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2648, 0.0f, 1.0f);
    let x_2650 : f32 = u_xlat71;
    let x_2651 : f32 = u_xlat73;
    u_xlat71 = (x_2650 * x_2651);
    let x_2653 : f32 = u_xlat71;
    let x_2655 : vec4<f32> = u_xlat10;
    let x_2657 : vec3<f32> = (vec3<f32>(x_2653, x_2653, x_2653) * vec3<f32>(x_2655.x, x_2655.y, x_2655.z));
    let x_2658 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2658.w);
    let x_2660 : vec4<f32> = u_xlat8;
    let x_2662 : f32 = u_xlat74;
    let x_2665 : vec4<f32> = u_xlat1;
    let x_2667 : vec3<f32> = ((vec3<f32>(x_2660.x, x_2660.y, x_2660.z) * vec3<f32>(x_2662, x_2662, x_2662)) + vec3<f32>(x_2665.x, x_2665.y, x_2665.z));
    let x_2668 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2667.x, x_2667.y, x_2667.z, x_2668.w);
    let x_2670 : vec4<f32> = u_xlat8;
    let x_2672 : vec4<f32> = u_xlat8;
    u_xlat71 = dot(vec3<f32>(x_2670.x, x_2670.y, x_2670.z), vec3<f32>(x_2672.x, x_2672.y, x_2672.z));
    let x_2675 : f32 = u_xlat71;
    u_xlat71 = max(x_2675, 1.17549435e-37f);
    let x_2677 : f32 = u_xlat71;
    u_xlat71 = inverseSqrt(x_2677);
    let x_2679 : f32 = u_xlat71;
    let x_2681 : vec4<f32> = u_xlat8;
    let x_2683 : vec3<f32> = (vec3<f32>(x_2679, x_2679, x_2679) * vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
    let x_2684 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
    let x_2686 : vec3<f32> = u_xlat2;
    let x_2687 : vec4<f32> = u_xlat8;
    u_xlat71 = dot(x_2686, vec3<f32>(x_2687.x, x_2687.y, x_2687.z));
    let x_2690 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2690, 0.0f, 1.0f);
    let x_2692 : vec4<f32> = u_xlat9;
    let x_2694 : vec4<f32> = u_xlat8;
    u_xlat73 = dot(vec3<f32>(x_2692.x, x_2692.y, x_2692.z), vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
    let x_2697 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2697, 0.0f, 1.0f);
    let x_2699 : f32 = u_xlat71;
    let x_2700 : f32 = u_xlat71;
    u_xlat71 = (x_2699 * x_2700);
    let x_2702 : f32 = u_xlat71;
    let x_2704 : f32 = u_xlat0.x;
    u_xlat71 = ((x_2702 * x_2704) + 1.000010014f);
    let x_2707 : f32 = u_xlat73;
    let x_2708 : f32 = u_xlat73;
    u_xlat73 = (x_2707 * x_2708);
    let x_2710 : f32 = u_xlat71;
    let x_2711 : f32 = u_xlat71;
    u_xlat71 = (x_2710 * x_2711);
    let x_2713 : f32 = u_xlat73;
    u_xlat73 = max(x_2713, 0.100000001f);
    let x_2715 : f32 = u_xlat71;
    let x_2716 : f32 = u_xlat73;
    u_xlat71 = (x_2715 * x_2716);
    let x_2718 : f32 = u_xlat70;
    let x_2719 : f32 = u_xlat71;
    u_xlat71 = (x_2718 * x_2719);
    let x_2721 : f32 = u_xlat68;
    let x_2722 : f32 = u_xlat71;
    u_xlat71 = (x_2721 / x_2722);
    let x_2724 : vec4<f32> = u_xlat5;
    let x_2726 : f32 = u_xlat71;
    let x_2729 : vec4<f32> = u_xlat7;
    let x_2731 : vec3<f32> = ((vec3<f32>(x_2724.x, x_2724.y, x_2724.z) * vec3<f32>(x_2726, x_2726, x_2726)) + vec3<f32>(x_2729.x, x_2729.y, x_2729.z));
    let x_2732 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2732.w);
    let x_2734 : vec4<f32> = u_xlat8;
    let x_2736 : vec4<f32> = u_xlat10;
    let x_2739 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2734.x, x_2734.y, x_2734.z) * vec3<f32>(x_2736.x, x_2736.y, x_2736.z)) + x_2739);

    continuing {
      let x_2741 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2741 + bitcast<u32>(1i));
    }
  }
  let x_2743 : vec3<f32> = u_xlat25;
  let x_2744 : f32 = u_xlat22;
  let x_2747 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_2743 * vec3<f32>(x_2744, x_2744, x_2744)) + vec3<f32>(x_2747.x, x_2747.y, x_2747.z));
  let x_2750 : vec3<f32> = u_xlat28;
  let x_2751 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2750 + x_2751);
  let x_2753 : f32 = u_xlat67;
  let x_2754 : f32 = u_xlat67;
  u_xlat1.x = (x_2753 * -(x_2754));
  let x_2759 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2759);
  let x_2762 : vec3<f32> = u_xlat0;
  let x_2763 : f32 = u_xlat66;
  let x_2767 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_2762 * vec3<f32>(x_2763, x_2763, x_2763)) + -(vec3<f32>(x_2767.x, x_2767.y, x_2767.z)));
  let x_2773 : vec4<f32> = u_xlat1;
  let x_2775 : vec3<f32> = u_xlat0;
  let x_2778 : vec4<f32> = x_126.unity_FogColor;
  let x_2780 : vec3<f32> = ((vec3<f32>(x_2773.x, x_2773.x, x_2773.x) * x_2775) + vec3<f32>(x_2778.x, x_2778.y, x_2778.z));
  let x_2781 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2781.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

