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
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_125 : PGlobals;

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

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_973 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2333 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2597 : AdditionalLights;

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
  var u_xlatb62 : bool;
  var u_xlat40 : f32;
  var u_xlat20 : f32;
  var u_xlat62 : f32;
  var u_xlat23 : f32;
  var u_xlat43 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb63 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat63 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
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
  var u_xlatb64 : bool;
  var x_2199 : f32;
  var u_xlatu40 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati63 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati3 : i32;
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
  let x_130 : f32 = x_125.x_GlobalMipBias.x;
  let x_131 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_130);
  u_xlat4 = x_131;
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat60 = dot(x_134, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_125.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat5 = x_148;
  let x_154 : vec4<f32> = vs_TEXCOORD1;
  let x_157 : f32 = x_125.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_154.z, x_154.w), x_157);
  u_xlat6 = x_158;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_125.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_165.x, x_165.y), x_168);
  u_xlat7 = x_169;
  let x_175 : vec4<f32> = vs_TEXCOORD2;
  let x_178 : f32 = x_125.x_GlobalMipBias.x;
  let x_179 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_175.z, x_175.w), x_178);
  u_xlat8 = x_179;
  let x_182 : f32 = u_xlat5.w;
  u_xlat9.x = x_182;
  let x_185 : f32 = u_xlat6.w;
  u_xlat9.y = x_185;
  let x_189 : f32 = u_xlat7.w;
  u_xlat9.z = x_189;
  let x_193 : f32 = u_xlat8.w;
  u_xlat9.w = x_193;
  let x_196 : vec4<f32> = u_xlat9;
  let x_199 : f32 = x_30.x_Smoothness0;
  let x_202 : f32 = x_30.x_Smoothness1;
  let x_205 : f32 = x_30.x_Smoothness2;
  let x_208 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_196 * vec4<f32>(x_199, x_202, x_205, x_208));
  let x_217 : f32 = x_30.x_NumLayersCount;
  u_xlatb61 = (4.0f >= x_217);
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_220) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_223 : vec4<f32> = u_xlat9;
  let x_224 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_223 + -(x_224));
  let x_227 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_227 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_231, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_236 : vec4<f32> = u_xlat4;
  let x_240 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_236 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_240);
  let x_243 : vec4<f32> = u_xlat4;
  let x_244 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_243 + -(x_244));
  let x_249 : f32 = u_xlat12.x;
  let x_252 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_249 * x_252);
  let x_256 : f32 = u_xlat12.y;
  let x_259 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_256 * x_259);
  let x_263 : f32 = u_xlat12.z;
  let x_266 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.w;
  let x_273 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_270 * x_273);
  let x_276 : vec4<f32> = u_xlat11;
  let x_277 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_276 + x_277);
  let x_279 : bool = u_xlatb61;
  let x_280 : vec4<f32> = u_xlat11;
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_281, x_280, vec4<bool>(x_279, x_279, x_279, x_279));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_286, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_290 : f32 = u_xlat61;
  u_xlatb62 = (0.005f >= x_290);
  let x_292 : bool = u_xlatb62;
  if (((select(0i, 1i, x_292) * -1i) != 0i)) {
    discard;
  }
  let x_301 : f32 = u_xlat61;
  u_xlat61 = (x_301 + 6.10351562e-05f);
  let x_304 : vec4<f32> = u_xlat4;
  let x_305 : f32 = u_xlat61;
  u_xlat4 = (x_304 / vec4<f32>(x_305, x_305, x_305, x_305));
  let x_308 : vec4<f32> = u_xlat4;
  let x_311 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_313 : vec3<f32> = (vec3<f32>(x_308.x, x_308.x, x_308.x) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_321 : vec3<f32> = (vec3<f32>(x_316.y, x_316.y, x_316.y) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec4<f32> = u_xlat12;
  let x_328 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = u_xlat11;
  let x_336 : vec4<f32> = u_xlat6;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.x, x_333.y, x_333.z)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat4;
  let x_344 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_346 : vec3<f32> = (vec3<f32>(x_341.z, x_341.z, x_341.z) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat7;
  let x_351 : vec4<f32> = u_xlat6;
  let x_354 : vec4<f32> = u_xlat5;
  let x_356 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_351.x, x_351.y, x_351.z)) + vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat4;
  let x_362 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_364 : vec3<f32> = (vec3<f32>(x_359.w, x_359.w, x_359.w) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec4<f32> = u_xlat8;
  let x_369 : vec4<f32> = u_xlat6;
  let x_372 : vec4<f32> = u_xlat5;
  let x_374 : vec3<f32> = ((vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(x_369.x, x_369.y, x_369.z)) + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_382 : vec4<f32> = vs_TEXCOORD1;
  let x_385 : f32 = x_125.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_382.x, x_382.y), x_385);
  let x_387 : vec3<f32> = vec3<f32>(x_386.x, x_386.y, x_386.w);
  let x_388 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : f32 = u_xlat6.x;
  let x_393 : f32 = u_xlat6.z;
  u_xlat6.x = (x_391 * x_393);
  let x_396 : vec4<f32> = u_xlat6;
  let x_401 : vec2<f32> = ((vec2<f32>(x_396.x, x_396.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat6;
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_404.x, x_404.y), vec2<f32>(x_406.x, x_406.y));
  let x_409 : f32 = u_xlat61;
  u_xlat61 = min(x_409, 1.0f);
  let x_411 : f32 = u_xlat61;
  u_xlat61 = (-(x_411) + 1.0f);
  let x_414 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_414);
  let x_416 : f32 = u_xlat61;
  u_xlat7.z = max(x_416, 1.00000002e-16f);
  let x_420 : vec4<f32> = u_xlat6;
  let x_423 : f32 = x_30.x_NormalScale0;
  let x_425 : vec2<f32> = (vec2<f32>(x_420.x, x_420.y) * vec2<f32>(x_423, x_423));
  let x_426 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_432 : vec4<f32> = vs_TEXCOORD1;
  let x_435 : f32 = x_125.x_GlobalMipBias.x;
  let x_436 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_432.z, x_432.w), x_435);
  let x_437 : vec3<f32> = vec3<f32>(x_436.x, x_436.y, x_436.w);
  let x_438 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_441 : f32 = u_xlat6.x;
  let x_443 : f32 = u_xlat6.z;
  u_xlat6.x = (x_441 * x_443);
  let x_446 : vec4<f32> = u_xlat6;
  let x_449 : vec2<f32> = ((vec2<f32>(x_446.x, x_446.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat6;
  let x_454 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_452.x, x_452.y), vec2<f32>(x_454.x, x_454.y));
  let x_457 : f32 = u_xlat61;
  u_xlat61 = min(x_457, 1.0f);
  let x_459 : f32 = u_xlat61;
  u_xlat61 = (-(x_459) + 1.0f);
  let x_462 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_462);
  let x_464 : f32 = u_xlat61;
  u_xlat8.z = max(x_464, 1.00000002e-16f);
  let x_467 : vec4<f32> = u_xlat6;
  let x_470 : f32 = x_30.x_NormalScale1;
  let x_472 : f32 = x_30.x_NormalScale1;
  let x_473 : vec2<f32> = vec2<f32>(x_470, x_472);
  let x_477 : vec2<f32> = (vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_473.x, x_473.y));
  let x_478 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat4;
  let x_482 : vec4<f32> = u_xlat8;
  let x_484 : vec3<f32> = (vec3<f32>(x_480.y, x_480.y, x_480.y) * vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  let x_492 : vec4<f32> = u_xlat6;
  let x_494 : vec3<f32> = ((vec3<f32>(x_487.x, x_487.x, x_487.x) * vec3<f32>(x_489.x, x_489.y, x_489.z)) + vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_501 : vec4<f32> = vs_TEXCOORD2;
  let x_504 : f32 = x_125.x_GlobalMipBias.x;
  let x_505 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_501.x, x_501.y), x_504);
  let x_506 : vec3<f32> = vec3<f32>(x_505.x, x_505.y, x_505.w);
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_510 : f32 = u_xlat7.x;
  let x_512 : f32 = u_xlat7.z;
  u_xlat7.x = (x_510 * x_512);
  let x_515 : vec4<f32> = u_xlat7;
  let x_518 : vec2<f32> = ((vec2<f32>(x_515.x, x_515.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat7;
  let x_523 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_521.x, x_521.y), vec2<f32>(x_523.x, x_523.y));
  let x_526 : f32 = u_xlat61;
  u_xlat61 = min(x_526, 1.0f);
  let x_528 : f32 = u_xlat61;
  u_xlat61 = (-(x_528) + 1.0f);
  let x_531 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_531);
  let x_533 : f32 = u_xlat61;
  u_xlat8.z = max(x_533, 1.00000002e-16f);
  let x_536 : vec4<f32> = u_xlat7;
  let x_540 : f32 = x_30.x_NormalScale2;
  let x_542 : f32 = x_30.x_NormalScale2;
  let x_543 : vec2<f32> = vec2<f32>(x_540, x_542);
  let x_547 : vec2<f32> = (vec2<f32>(x_536.x, x_536.y) * vec2<f32>(x_543.x, x_543.y));
  let x_548 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_547.x, x_547.y, x_548.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat4;
  let x_552 : vec4<f32> = u_xlat8;
  let x_555 : vec4<f32> = u_xlat6;
  let x_557 : vec3<f32> = ((vec3<f32>(x_550.z, x_550.z, x_550.z) * vec3<f32>(x_552.x, x_552.y, x_552.z)) + vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_564 : vec4<f32> = vs_TEXCOORD2;
  let x_567 : f32 = x_125.x_GlobalMipBias.x;
  let x_568 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_564.z, x_564.w), x_567);
  let x_569 : vec3<f32> = vec3<f32>(x_568.x, x_568.y, x_568.w);
  let x_570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : f32 = u_xlat7.x;
  let x_575 : f32 = u_xlat7.z;
  u_xlat7.x = (x_573 * x_575);
  let x_578 : vec4<f32> = u_xlat7;
  let x_581 : vec2<f32> = ((vec2<f32>(x_578.x, x_578.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_582 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
  let x_584 : vec4<f32> = u_xlat7;
  let x_586 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_584.x, x_584.y), vec2<f32>(x_586.x, x_586.y));
  let x_589 : f32 = u_xlat61;
  u_xlat61 = min(x_589, 1.0f);
  let x_591 : f32 = u_xlat61;
  u_xlat61 = (-(x_591) + 1.0f);
  let x_594 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_594);
  let x_596 : f32 = u_xlat61;
  u_xlat8.z = max(x_596, 1.00000002e-16f);
  let x_599 : vec4<f32> = u_xlat7;
  let x_603 : f32 = x_30.x_NormalScale3;
  let x_605 : f32 = x_30.x_NormalScale3;
  let x_606 : vec2<f32> = vec2<f32>(x_603, x_605);
  let x_610 : vec2<f32> = (vec2<f32>(x_599.x, x_599.y) * vec2<f32>(x_606.x, x_606.y));
  let x_611 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat4;
  let x_615 : vec4<f32> = u_xlat8;
  let x_618 : vec4<f32> = u_xlat6;
  let x_620 : vec3<f32> = ((vec3<f32>(x_613.w, x_613.w, x_613.w) * vec3<f32>(x_615.x, x_615.y, x_615.z)) + vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_624 : f32 = u_xlat6.z;
  u_xlat6.w = (x_624 + 0.00001f);
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_628.x, x_628.y, x_628.w), vec3<f32>(x_630.x, x_630.y, x_630.w));
  let x_633 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_633);
  let x_635 : f32 = u_xlat61;
  let x_637 : vec4<f32> = u_xlat6;
  let x_639 : vec3<f32> = (vec3<f32>(x_635, x_635, x_635) * vec3<f32>(x_637.x, x_637.y, x_637.w));
  let x_640 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_643 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_643;
  let x_646 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_652;
  let x_655 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_655;
  let x_658 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_658;
  let x_661 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_661;
  let x_664 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_664;
  let x_666 : vec4<f32> = u_xlat7;
  let x_667 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_666 + x_667);
  let x_670 : f32 = u_xlat0.z;
  u_xlat8.x = x_670;
  let x_673 : f32 = u_xlat1.z;
  u_xlat8.y = x_673;
  let x_676 : f32 = u_xlat2.z;
  u_xlat8.z = x_676;
  let x_679 : f32 = u_xlat3.y;
  u_xlat8.w = x_679;
  let x_681 : vec4<f32> = u_xlat9;
  let x_684 : f32 = x_30.x_Smoothness0;
  let x_686 : f32 = x_30.x_Smoothness1;
  let x_688 : f32 = x_30.x_Smoothness2;
  let x_690 : f32 = x_30.x_Smoothness3;
  let x_693 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_681) * vec4<f32>(x_684, x_686, x_688, x_690)) + x_693);
  let x_697 : f32 = x_30.x_LayerHasMask0;
  let x_700 : f32 = x_30.x_LayerHasMask1;
  let x_703 : f32 = x_30.x_LayerHasMask2;
  let x_706 : f32 = x_30.x_LayerHasMask3;
  let x_708 : vec4<f32> = u_xlat8;
  let x_710 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_697, x_700, x_703, x_706) * x_708) + x_710);
  let x_713 : vec4<f32> = u_xlat4;
  let x_714 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_713, x_714);
  let x_717 : f32 = u_xlat0.x;
  u_xlat8.x = x_717;
  let x_720 : f32 = u_xlat1.x;
  u_xlat8.y = x_720;
  let x_723 : f32 = u_xlat2.x;
  u_xlat8.z = x_723;
  let x_726 : f32 = u_xlat3.x;
  u_xlat8.w = x_726;
  let x_728 : vec4<f32> = u_xlat8;
  let x_731 : f32 = x_30.x_Metallic0;
  let x_734 : f32 = x_30.x_Metallic1;
  let x_737 : f32 = x_30.x_Metallic2;
  let x_740 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_728 + -(vec4<f32>(x_731, x_734, x_737, x_740)));
  let x_745 : f32 = x_30.x_LayerHasMask0;
  let x_747 : f32 = x_30.x_LayerHasMask1;
  let x_749 : f32 = x_30.x_LayerHasMask2;
  let x_751 : f32 = x_30.x_LayerHasMask3;
  let x_753 : vec4<f32> = u_xlat8;
  let x_756 : f32 = x_30.x_Metallic0;
  let x_758 : f32 = x_30.x_Metallic1;
  let x_760 : f32 = x_30.x_Metallic2;
  let x_762 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_745, x_747, x_749, x_751) * x_753) + vec4<f32>(x_756, x_758, x_760, x_762));
  let x_765 : vec4<f32> = u_xlat4;
  let x_766 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_765, x_766);
  let x_770 : f32 = u_xlat0.y;
  u_xlat3.x = x_770;
  let x_773 : f32 = u_xlat1.y;
  u_xlat3.y = x_773;
  let x_776 : f32 = u_xlat2.y;
  u_xlat3.z = x_776;
  let x_778 : vec4<f32> = u_xlat7;
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_778) + x_780);
  let x_783 : f32 = x_30.x_LayerHasMask0;
  let x_785 : f32 = x_30.x_LayerHasMask1;
  let x_787 : f32 = x_30.x_LayerHasMask2;
  let x_789 : f32 = x_30.x_LayerHasMask3;
  let x_791 : vec4<f32> = u_xlat1;
  let x_793 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_783, x_785, x_787, x_789) * x_791) + x_793);
  let x_796 : vec4<f32> = u_xlat4;
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_796, x_797);
  let x_799 : vec4<f32> = u_xlat6;
  let x_802 : vec4<f32> = vs_TEXCOORD5;
  let x_804 : vec3<f32> = (vec3<f32>(x_799.y, x_799.y, x_799.y) * vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat6;
  let x_810 : vec4<f32> = vs_TEXCOORD4;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = ((vec3<f32>(x_807.x, x_807.x, x_807.x) * -(vec3<f32>(x_810.x, x_810.y, x_810.z))) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat6;
  let x_822 : vec4<f32> = vs_TEXCOORD3;
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec3<f32> = ((vec3<f32>(x_819.z, x_819.z, x_819.z) * vec3<f32>(x_822.x, x_822.y, x_822.z)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_835);
  let x_837 : f32 = u_xlat61;
  let x_839 : vec4<f32> = u_xlat1;
  let x_841 : vec3<f32> = (vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_849 : vec4<f32> = vs_TEXCOORD0;
  let x_852 : f32 = x_125.x_GlobalMipBias.x;
  let x_853 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_849.z, x_849.w), x_852);
  u_xlat2 = vec3<f32>(x_853.x, x_853.y, x_853.z);
  let x_857 : vec4<f32> = x_125.x_ScaledScreenParams;
  let x_858 : vec2<f32> = vec2<f32>(x_857.x, x_857.y);
  let x_862 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_858.x, x_858.y));
  let x_863 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat3;
  let x_867 : vec4<f32> = hlslcc_FragCoord;
  let x_869 : vec2<f32> = (vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_867.x, x_867.y));
  let x_870 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
  let x_873 : f32 = u_xlat3.y;
  let x_875 : f32 = x_125.x_ScaleBiasRt.x;
  let x_878 : f32 = x_125.x_ScaleBiasRt.y;
  u_xlat61 = ((x_873 * x_875) + x_878);
  let x_880 : f32 = u_xlat61;
  u_xlat3.z = (-(x_880) + 1.0f);
  let x_885 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_885) * 0.959999979f) + 0.959999979f);
  let x_891 : f32 = u_xlat40;
  let x_892 : f32 = u_xlat61;
  u_xlat62 = (x_891 + -(x_892));
  let x_895 : f32 = u_xlat61;
  let x_897 : vec4<f32> = u_xlat5;
  let x_899 : vec3<f32> = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat5;
  let x_906 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_907 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec3<f32> = u_xlat0;
  let x_911 : vec4<f32> = u_xlat5;
  let x_916 : vec3<f32> = ((vec3<f32>(x_909.x, x_909.x, x_909.x) * vec3<f32>(x_911.x, x_911.y, x_911.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_917 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_919 : f32 = u_xlat40;
  u_xlat0.x = (-(x_919) + 1.0f);
  let x_924 : f32 = u_xlat0.x;
  let x_926 : f32 = u_xlat0.x;
  u_xlat40 = (x_924 * x_926);
  let x_928 : f32 = u_xlat40;
  u_xlat40 = max(x_928, 0.0078125f);
  let x_931 : f32 = u_xlat40;
  let x_932 : f32 = u_xlat40;
  u_xlat61 = (x_931 * x_932);
  let x_934 : f32 = u_xlat62;
  u_xlat62 = (x_934 + 1.0f);
  let x_936 : f32 = u_xlat62;
  u_xlat62 = clamp(x_936, 0.0f, 1.0f);
  let x_939 : f32 = u_xlat40;
  u_xlat23 = ((x_939 * 4.0f) + 2.0f);
  let x_947 : vec4<f32> = u_xlat3;
  let x_950 : f32 = x_125.x_GlobalMipBias.x;
  let x_951 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_947.x, x_947.z), x_950);
  u_xlat3.x = x_951.x;
  let x_956 : f32 = u_xlat3.x;
  u_xlat43 = (x_956 + -1.0f);
  let x_959 : f32 = x_125.x_AmbientOcclusionParam.w;
  let x_960 : f32 = u_xlat43;
  u_xlat43 = ((x_959 * x_960) + 1.0f);
  let x_963 : f32 = u_xlat20;
  let x_965 : f32 = u_xlat3.x;
  u_xlat20 = min(x_963, x_965);
  let x_975 : f32 = x_973.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_975);
  let x_977 : bool = u_xlatb3;
  if (x_977) {
    let x_981 : f32 = x_973.x_MainLightShadowParams.y;
    u_xlatb3 = (x_981 == 1.0f);
    let x_983 : bool = u_xlatb3;
    if (x_983) {
      let x_987 : vec4<f32> = vs_TEXCOORD8;
      let x_990 : vec4<f32> = x_973.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_987.x, x_987.y, x_987.x, x_987.y) + x_990);
      let x_993 : vec4<f32> = u_xlat6;
      let x_994 : vec2<f32> = vec2<f32>(x_993.x, x_993.y);
      let x_996 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_994.x, x_994.y, x_996);
      let x_1008 : vec3<f32> = txVec0;
      let x_1010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1008.xy, x_1008.z);
      u_xlat7.x = x_1010;
      let x_1013 : vec4<f32> = u_xlat6;
      let x_1014 : vec2<f32> = vec2<f32>(x_1013.z, x_1013.w);
      let x_1016 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
      let x_1023 : vec3<f32> = txVec1;
      let x_1025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1023.xy, x_1023.z);
      u_xlat7.y = x_1025;
      let x_1027 : vec4<f32> = vs_TEXCOORD8;
      let x_1030 : vec4<f32> = x_973.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y) + x_1030);
      let x_1033 : vec4<f32> = u_xlat6;
      let x_1034 : vec2<f32> = vec2<f32>(x_1033.x, x_1033.y);
      let x_1036 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1034.x, x_1034.y, x_1036);
      let x_1043 : vec3<f32> = txVec2;
      let x_1045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1043.xy, x_1043.z);
      u_xlat7.z = x_1045;
      let x_1048 : vec4<f32> = u_xlat6;
      let x_1049 : vec2<f32> = vec2<f32>(x_1048.z, x_1048.w);
      let x_1051 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1049.x, x_1049.y, x_1051);
      let x_1058 : vec3<f32> = txVec3;
      let x_1060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1058.xy, x_1058.z);
      u_xlat7.w = x_1060;
      let x_1062 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1062, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1070 : f32 = x_973.x_MainLightShadowParams.y;
      u_xlatb63 = (x_1070 == 2.0f);
      let x_1072 : bool = u_xlatb63;
      if (x_1072) {
        let x_1075 : vec4<f32> = vs_TEXCOORD8;
        let x_1078 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1078.z, x_1078.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1082 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat6;
        let x_1086 : vec2<f32> = floor(vec2<f32>(x_1084.x, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1091 : vec4<f32> = vs_TEXCOORD8;
        let x_1094 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1094.z, x_1094.w)) + -(vec2<f32>(x_1097.x, x_1097.y)));
        let x_1101 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1101.x, x_1101.x, x_1101.y, x_1101.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1105 : vec4<f32> = u_xlat7;
        let x_1107 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1105.x, x_1105.x, x_1105.z, x_1105.z) * vec4<f32>(x_1107.x, x_1107.x, x_1107.z, x_1107.z));
        let x_1110 : vec4<f32> = u_xlat8;
        let x_1114 : vec2<f32> = (vec2<f32>(x_1110.y, x_1110.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1114.x, x_1115.y, x_1114.y, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat8;
        let x_1120 : vec2<f32> = u_xlat46;
        let x_1122 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1120));
        let x_1123 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1126 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1126) + vec2<f32>(1.0f, 1.0f));
        let x_1129 : vec2<f32> = u_xlat46;
        let x_1131 : vec2<f32> = min(x_1129, vec2<f32>(0.0f, 0.0f));
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat9;
        let x_1137 : vec4<f32> = u_xlat9;
        let x_1140 : vec2<f32> = u_xlat48;
        let x_1141 : vec2<f32> = ((-(vec2<f32>(x_1134.x, x_1134.y)) * vec2<f32>(x_1137.x, x_1137.y)) + x_1140);
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1144, vec2<f32>(0.0f, 0.0f));
        let x_1146 : vec2<f32> = u_xlat46;
        let x_1148 : vec2<f32> = u_xlat46;
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1146) * x_1148) + vec2<f32>(x_1150.y, x_1150.w));
        let x_1153 : vec4<f32> = u_xlat9;
        let x_1155 : vec2<f32> = (vec2<f32>(x_1153.x, x_1153.y) + vec2<f32>(1.0f, 1.0f));
        let x_1156 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1158 + vec2<f32>(1.0f, 1.0f));
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1164 : vec2<f32> = (vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec2<f32> = u_xlat48;
        let x_1168 : vec2<f32> = (x_1167 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1173 : vec2<f32> = (vec2<f32>(x_1171.x, x_1171.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec2<f32> = u_xlat46;
        let x_1177 : vec2<f32> = (x_1176 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1178 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1180.y, x_1180.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1184 : f32 = u_xlat9.x;
        u_xlat10.z = x_1184;
        let x_1187 : f32 = u_xlat46.x;
        u_xlat10.w = x_1187;
        let x_1190 : f32 = u_xlat11.x;
        u_xlat8.z = x_1190;
        let x_1193 : f32 = u_xlat7.x;
        u_xlat8.w = x_1193;
        let x_1195 : vec4<f32> = u_xlat8;
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1195.z, x_1195.w, x_1195.x, x_1195.z) + vec4<f32>(x_1197.z, x_1197.w, x_1197.x, x_1197.z));
        let x_1201 : f32 = u_xlat10.y;
        u_xlat9.z = x_1201;
        let x_1204 : f32 = u_xlat46.y;
        u_xlat9.w = x_1204;
        let x_1207 : f32 = u_xlat8.y;
        u_xlat11.z = x_1207;
        let x_1210 : f32 = u_xlat7.z;
        u_xlat11.w = x_1210;
        let x_1212 : vec4<f32> = u_xlat9;
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1216 : vec3<f32> = (vec3<f32>(x_1212.z, x_1212.y, x_1212.w) + vec3<f32>(x_1214.z, x_1214.y, x_1214.w));
        let x_1217 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
        let x_1219 : vec4<f32> = u_xlat8;
        let x_1221 : vec4<f32> = u_xlat12;
        let x_1223 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.z, x_1219.w) / vec3<f32>(x_1221.z, x_1221.w, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat8;
        let x_1232 : vec3<f32> = (vec3<f32>(x_1226.x, x_1226.y, x_1226.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1233 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat11;
        let x_1237 : vec4<f32> = u_xlat7;
        let x_1239 : vec3<f32> = (vec3<f32>(x_1235.z, x_1235.y, x_1235.w) / vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
        let x_1242 : vec4<f32> = u_xlat9;
        let x_1244 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.y, x_1242.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1250 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1252 : vec3<f32> = (vec3<f32>(x_1247.y, x_1247.x, x_1247.z) * vec3<f32>(x_1250.x, x_1250.x, x_1250.x));
        let x_1253 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
        let x_1255 : vec4<f32> = u_xlat9;
        let x_1258 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1260 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1258.y, x_1258.y, x_1258.y));
        let x_1261 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
        let x_1264 : f32 = u_xlat9.x;
        u_xlat8.w = x_1264;
        let x_1266 : vec4<f32> = u_xlat6;
        let x_1269 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.y, x_1272.w, x_1272.x, x_1272.w));
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1278 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.z, x_1281.w));
        let x_1285 : f32 = u_xlat8.y;
        u_xlat9.w = x_1285;
        let x_1287 : vec4<f32> = u_xlat9;
        let x_1288 : vec2<f32> = vec2<f32>(x_1287.y, x_1287.z);
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1289.x, x_1288.x, x_1289.z, x_1288.y);
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1297.y));
        let x_1300 : vec4<f32> = u_xlat6;
        let x_1303 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y) * vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y)) + vec4<f32>(x_1306.w, x_1306.y, x_1306.w, x_1306.z));
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1312 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1315 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1309.x, x_1309.y, x_1309.x, x_1309.y) * vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y)) + vec4<f32>(x_1315.x, x_1315.w, x_1315.z, x_1315.w));
        let x_1318 : vec4<f32> = u_xlat7;
        let x_1320 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1318.x, x_1318.x, x_1318.x, x_1318.y) * vec4<f32>(x_1320.z, x_1320.w, x_1320.y, x_1320.z));
        let x_1324 : vec4<f32> = u_xlat7;
        let x_1326 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1324.y, x_1324.y, x_1324.z, x_1324.z) * x_1326);
        let x_1330 : f32 = u_xlat7.z;
        let x_1332 : f32 = u_xlat12.y;
        u_xlat63 = (x_1330 * x_1332);
        let x_1335 : vec4<f32> = u_xlat10;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.x, x_1335.y);
        let x_1338 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1346 : vec3<f32> = txVec4;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1346.xy, x_1346.z);
        u_xlat64 = x_1348;
        let x_1350 : vec4<f32> = u_xlat10;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.z, x_1350.w);
        let x_1353 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1361 : vec3<f32> = txVec5;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1361.xy, x_1361.z);
        u_xlat65 = x_1363;
        let x_1364 : f32 = u_xlat65;
        let x_1366 : f32 = u_xlat13.y;
        u_xlat65 = (x_1364 * x_1366);
        let x_1369 : f32 = u_xlat13.x;
        let x_1370 : f32 = u_xlat64;
        let x_1372 : f32 = u_xlat65;
        u_xlat64 = ((x_1369 * x_1370) + x_1372);
        let x_1375 : vec2<f32> = u_xlat46;
        let x_1377 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec6;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat65 = x_1386;
        let x_1388 : f32 = u_xlat13.z;
        let x_1389 : f32 = u_xlat65;
        let x_1391 : f32 = u_xlat64;
        u_xlat64 = ((x_1388 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat9;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
        let x_1397 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec7;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1404.xy, x_1404.z);
        u_xlat65 = x_1406;
        let x_1408 : f32 = u_xlat13.w;
        let x_1409 : f32 = u_xlat65;
        let x_1411 : f32 = u_xlat64;
        u_xlat64 = ((x_1408 * x_1409) + x_1411);
        let x_1414 : vec4<f32> = u_xlat11;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.x, x_1414.y);
        let x_1417 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec8;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1424.xy, x_1424.z);
        u_xlat65 = x_1426;
        let x_1428 : f32 = u_xlat14.x;
        let x_1429 : f32 = u_xlat65;
        let x_1431 : f32 = u_xlat64;
        u_xlat64 = ((x_1428 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat11;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec9;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat65 = x_1446;
        let x_1448 : f32 = u_xlat14.y;
        let x_1449 : f32 = u_xlat65;
        let x_1451 : f32 = u_xlat64;
        u_xlat64 = ((x_1448 * x_1449) + x_1451);
        let x_1454 : vec4<f32> = u_xlat9;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.z, x_1454.w);
        let x_1457 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec10;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1464.xy, x_1464.z);
        u_xlat65 = x_1466;
        let x_1468 : f32 = u_xlat14.z;
        let x_1469 : f32 = u_xlat65;
        let x_1471 : f32 = u_xlat64;
        u_xlat64 = ((x_1468 * x_1469) + x_1471);
        let x_1474 : vec4<f32> = u_xlat8;
        let x_1475 : vec2<f32> = vec2<f32>(x_1474.x, x_1474.y);
        let x_1477 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec11;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1484.xy, x_1484.z);
        u_xlat65 = x_1486;
        let x_1488 : f32 = u_xlat14.w;
        let x_1489 : f32 = u_xlat65;
        let x_1491 : f32 = u_xlat64;
        u_xlat64 = ((x_1488 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat8;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec12;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat65 = x_1506;
        let x_1507 : f32 = u_xlat63;
        let x_1508 : f32 = u_xlat65;
        let x_1510 : f32 = u_xlat64;
        u_xlat3.x = ((x_1507 * x_1508) + x_1510);
      } else {
        let x_1514 : vec4<f32> = vs_TEXCOORD8;
        let x_1517 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1520 : vec2<f32> = ((vec2<f32>(x_1514.x, x_1514.y) * vec2<f32>(x_1517.z, x_1517.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1521 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
        let x_1523 : vec4<f32> = u_xlat6;
        let x_1525 : vec2<f32> = floor(vec2<f32>(x_1523.x, x_1523.y));
        let x_1526 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1528 : vec4<f32> = vs_TEXCOORD8;
        let x_1531 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1528.x, x_1528.y) * vec2<f32>(x_1531.z, x_1531.w)) + -(vec2<f32>(x_1534.x, x_1534.y)));
        let x_1538 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1538.x, x_1538.x, x_1538.y, x_1538.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1541 : vec4<f32> = u_xlat7;
        let x_1543 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1541.x, x_1541.x, x_1541.z, x_1541.z) * vec4<f32>(x_1543.x, x_1543.x, x_1543.z, x_1543.z));
        let x_1546 : vec4<f32> = u_xlat8;
        let x_1550 : vec2<f32> = (vec2<f32>(x_1546.y, x_1546.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1551 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1551.x, x_1550.x, x_1551.z, x_1550.y);
        let x_1553 : vec4<f32> = u_xlat8;
        let x_1556 : vec2<f32> = u_xlat46;
        let x_1558 : vec2<f32> = ((vec2<f32>(x_1553.x, x_1553.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1556));
        let x_1559 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1558.x, x_1559.y, x_1558.y, x_1559.w);
        let x_1561 : vec2<f32> = u_xlat46;
        let x_1563 : vec2<f32> = (-(x_1561) + vec2<f32>(1.0f, 1.0f));
        let x_1564 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1563.x, x_1563.y, x_1564.z, x_1564.w);
        let x_1566 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1566, vec2<f32>(0.0f, 0.0f));
        let x_1568 : vec2<f32> = u_xlat48;
        let x_1570 : vec2<f32> = u_xlat48;
        let x_1572 : vec4<f32> = u_xlat8;
        let x_1574 : vec2<f32> = ((-(x_1568) * x_1570) + vec2<f32>(x_1572.x, x_1572.y));
        let x_1575 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1574.x, x_1574.y, x_1575.z, x_1575.w);
        let x_1577 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1577, vec2<f32>(0.0f, 0.0f));
        let x_1580 : vec2<f32> = u_xlat48;
        let x_1582 : vec2<f32> = u_xlat48;
        let x_1584 : vec4<f32> = u_xlat7;
        let x_1586 : vec2<f32> = ((-(x_1580) * x_1582) + vec2<f32>(x_1584.y, x_1584.w));
        let x_1587 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1586.x, x_1587.y, x_1586.y);
        let x_1589 : vec4<f32> = u_xlat8;
        let x_1591 : vec2<f32> = (vec2<f32>(x_1589.x, x_1589.y) + vec2<f32>(2.0f, 2.0f));
        let x_1592 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1591.x, x_1591.y, x_1592.z, x_1592.w);
        let x_1594 : vec3<f32> = u_xlat27;
        let x_1596 : vec2<f32> = (vec2<f32>(x_1594.x, x_1594.z) + vec2<f32>(2.0f, 2.0f));
        let x_1597 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1597.x, x_1596.x, x_1597.z, x_1596.y);
        let x_1600 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1600 * 0.081632003f);
        let x_1604 : vec4<f32> = u_xlat7;
        let x_1607 : vec3<f32> = (vec3<f32>(x_1604.z, x_1604.x, x_1604.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1608 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
        let x_1610 : vec4<f32> = u_xlat8;
        let x_1613 : vec2<f32> = (vec2<f32>(x_1610.x, x_1610.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1614 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1613.x, x_1613.y, x_1614.z, x_1614.w);
        let x_1617 : f32 = u_xlat11.y;
        u_xlat10.x = x_1617;
        let x_1619 : vec2<f32> = u_xlat46;
        let x_1626 : vec2<f32> = ((vec2<f32>(x_1619.x, x_1619.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1627 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1627.x, x_1626.x, x_1627.z, x_1626.y);
        let x_1629 : vec2<f32> = u_xlat46;
        let x_1633 : vec2<f32> = ((vec2<f32>(x_1629.x, x_1629.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1634 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1633.x, x_1634.y, x_1633.y, x_1634.w);
        let x_1637 : f32 = u_xlat7.x;
        u_xlat8.y = x_1637;
        let x_1640 : f32 = u_xlat9.y;
        u_xlat8.w = x_1640;
        let x_1642 : vec4<f32> = u_xlat8;
        let x_1643 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1642 + x_1643);
        let x_1645 : vec2<f32> = u_xlat46;
        let x_1648 : vec2<f32> = ((vec2<f32>(x_1645.y, x_1645.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1649 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1649.x, x_1648.x, x_1649.z, x_1648.y);
        let x_1651 : vec2<f32> = u_xlat46;
        let x_1654 : vec2<f32> = ((vec2<f32>(x_1651.y, x_1651.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1655 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1654.x, x_1655.y, x_1654.y, x_1655.w);
        let x_1658 : f32 = u_xlat7.y;
        u_xlat9.y = x_1658;
        let x_1660 : vec4<f32> = u_xlat9;
        let x_1661 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1660 + x_1661);
        let x_1663 : vec4<f32> = u_xlat8;
        let x_1664 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1663 / x_1664);
        let x_1666 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1666 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1672 : vec4<f32> = u_xlat9;
        let x_1673 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1672 / x_1673);
        let x_1675 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1675 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1677 : vec4<f32> = u_xlat8;
        let x_1680 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1677.w, x_1677.x, x_1677.y, x_1677.z) * vec4<f32>(x_1680.x, x_1680.x, x_1680.x, x_1680.x));
        let x_1683 : vec4<f32> = u_xlat9;
        let x_1686 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1683.x, x_1683.w, x_1683.y, x_1683.z) * vec4<f32>(x_1686.y, x_1686.y, x_1686.y, x_1686.y));
        let x_1689 : vec4<f32> = u_xlat8;
        let x_1690 : vec3<f32> = vec3<f32>(x_1689.y, x_1689.z, x_1689.w);
        let x_1691 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1690.x, x_1691.y, x_1690.y, x_1690.z);
        let x_1694 : f32 = u_xlat9.x;
        u_xlat11.y = x_1694;
        let x_1696 : vec4<f32> = u_xlat6;
        let x_1699 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1702 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1696.x, x_1696.y, x_1696.x, x_1696.y) * vec4<f32>(x_1699.x, x_1699.y, x_1699.x, x_1699.y)) + vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1702.y));
        let x_1705 : vec4<f32> = u_xlat6;
        let x_1708 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1711 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1705.x, x_1705.y) * vec2<f32>(x_1708.x, x_1708.y)) + vec2<f32>(x_1711.w, x_1711.y));
        let x_1715 : f32 = u_xlat11.y;
        u_xlat8.y = x_1715;
        let x_1718 : f32 = u_xlat9.z;
        u_xlat11.y = x_1718;
        let x_1720 : vec4<f32> = u_xlat6;
        let x_1723 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1726 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1720.x, x_1720.y, x_1720.x, x_1720.y) * vec4<f32>(x_1723.x, x_1723.y, x_1723.x, x_1723.y)) + vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1726.y));
        let x_1729 : vec4<f32> = u_xlat6;
        let x_1732 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1735 : vec4<f32> = u_xlat11;
        let x_1737 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(x_1732.x, x_1732.y)) + vec2<f32>(x_1735.w, x_1735.y));
        let x_1738 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1737.x, x_1737.y, x_1738.z, x_1738.w);
        let x_1741 : f32 = u_xlat11.y;
        u_xlat8.z = x_1741;
        let x_1744 : vec4<f32> = u_xlat6;
        let x_1747 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1750 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y) * vec4<f32>(x_1747.x, x_1747.y, x_1747.x, x_1747.y)) + vec4<f32>(x_1750.x, x_1750.y, x_1750.x, x_1750.z));
        let x_1754 : f32 = u_xlat9.w;
        u_xlat11.y = x_1754;
        let x_1757 : vec4<f32> = u_xlat6;
        let x_1760 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1763 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1757.x, x_1757.y, x_1757.x, x_1757.y) * vec4<f32>(x_1760.x, x_1760.y, x_1760.x, x_1760.y)) + vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1763.y));
        let x_1767 : vec4<f32> = u_xlat6;
        let x_1770 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1773 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1767.x, x_1767.y) * vec2<f32>(x_1770.x, x_1770.y)) + vec2<f32>(x_1773.w, x_1773.y));
        let x_1777 : f32 = u_xlat11.y;
        u_xlat8.w = x_1777;
        let x_1780 : vec4<f32> = u_xlat6;
        let x_1783 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1786 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1780.x, x_1780.y) * vec2<f32>(x_1783.x, x_1783.y)) + vec2<f32>(x_1786.x, x_1786.w));
        let x_1789 : vec4<f32> = u_xlat11;
        let x_1790 : vec3<f32> = vec3<f32>(x_1789.x, x_1789.z, x_1789.w);
        let x_1791 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1790.x, x_1791.y, x_1790.y, x_1790.z);
        let x_1793 : vec4<f32> = u_xlat6;
        let x_1796 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1799 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1793.x, x_1793.y, x_1793.x, x_1793.y) * vec4<f32>(x_1796.x, x_1796.y, x_1796.x, x_1796.y)) + vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1799.y));
        let x_1803 : vec4<f32> = u_xlat6;
        let x_1806 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.w, x_1809.y));
        let x_1813 : f32 = u_xlat8.x;
        u_xlat9.x = x_1813;
        let x_1815 : vec4<f32> = u_xlat6;
        let x_1818 : vec4<f32> = x_973.x_MainLightShadowmapSize;
        let x_1821 : vec4<f32> = u_xlat9;
        let x_1823 : vec2<f32> = ((vec2<f32>(x_1815.x, x_1815.y) * vec2<f32>(x_1818.x, x_1818.y)) + vec2<f32>(x_1821.x, x_1821.y));
        let x_1824 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1823.x, x_1823.y, x_1824.z, x_1824.w);
        let x_1827 : vec4<f32> = u_xlat7;
        let x_1829 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1827.x, x_1827.x, x_1827.x, x_1827.x) * x_1829);
        let x_1832 : vec4<f32> = u_xlat7;
        let x_1834 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1832.y, x_1832.y, x_1832.y, x_1832.y) * x_1834);
        let x_1837 : vec4<f32> = u_xlat7;
        let x_1839 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1837.z, x_1837.z, x_1837.z, x_1837.z) * x_1839);
        let x_1841 : vec4<f32> = u_xlat7;
        let x_1843 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1841.w, x_1841.w, x_1841.w, x_1841.w) * x_1843);
        let x_1846 : vec4<f32> = u_xlat12;
        let x_1847 : vec2<f32> = vec2<f32>(x_1846.x, x_1846.y);
        let x_1849 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1847.x, x_1847.y, x_1849);
        let x_1856 : vec3<f32> = txVec13;
        let x_1858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1856.xy, x_1856.z);
        u_xlat63 = x_1858;
        let x_1860 : vec4<f32> = u_xlat12;
        let x_1861 : vec2<f32> = vec2<f32>(x_1860.z, x_1860.w);
        let x_1863 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1861.x, x_1861.y, x_1863);
        let x_1870 : vec3<f32> = txVec14;
        let x_1872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1870.xy, x_1870.z);
        u_xlat64 = x_1872;
        let x_1873 : f32 = u_xlat64;
        let x_1875 : f32 = u_xlat17.y;
        u_xlat64 = (x_1873 * x_1875);
        let x_1878 : f32 = u_xlat17.x;
        let x_1879 : f32 = u_xlat63;
        let x_1881 : f32 = u_xlat64;
        u_xlat63 = ((x_1878 * x_1879) + x_1881);
        let x_1884 : vec2<f32> = u_xlat46;
        let x_1886 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1884.x, x_1884.y, x_1886);
        let x_1893 : vec3<f32> = txVec15;
        let x_1895 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1893.xy, x_1893.z);
        u_xlat64 = x_1895;
        let x_1897 : f32 = u_xlat17.z;
        let x_1898 : f32 = u_xlat64;
        let x_1900 : f32 = u_xlat63;
        u_xlat63 = ((x_1897 * x_1898) + x_1900);
        let x_1903 : vec4<f32> = u_xlat15;
        let x_1904 : vec2<f32> = vec2<f32>(x_1903.x, x_1903.y);
        let x_1906 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1904.x, x_1904.y, x_1906);
        let x_1913 : vec3<f32> = txVec16;
        let x_1915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1913.xy, x_1913.z);
        u_xlat64 = x_1915;
        let x_1917 : f32 = u_xlat17.w;
        let x_1918 : f32 = u_xlat64;
        let x_1920 : f32 = u_xlat63;
        u_xlat63 = ((x_1917 * x_1918) + x_1920);
        let x_1923 : vec4<f32> = u_xlat13;
        let x_1924 : vec2<f32> = vec2<f32>(x_1923.x, x_1923.y);
        let x_1926 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1924.x, x_1924.y, x_1926);
        let x_1933 : vec3<f32> = txVec17;
        let x_1935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1933.xy, x_1933.z);
        u_xlat64 = x_1935;
        let x_1937 : f32 = u_xlat18.x;
        let x_1938 : f32 = u_xlat64;
        let x_1940 : f32 = u_xlat63;
        u_xlat63 = ((x_1937 * x_1938) + x_1940);
        let x_1943 : vec4<f32> = u_xlat13;
        let x_1944 : vec2<f32> = vec2<f32>(x_1943.z, x_1943.w);
        let x_1946 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1944.x, x_1944.y, x_1946);
        let x_1953 : vec3<f32> = txVec18;
        let x_1955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1953.xy, x_1953.z);
        u_xlat64 = x_1955;
        let x_1957 : f32 = u_xlat18.y;
        let x_1958 : f32 = u_xlat64;
        let x_1960 : f32 = u_xlat63;
        u_xlat63 = ((x_1957 * x_1958) + x_1960);
        let x_1963 : vec4<f32> = u_xlat14;
        let x_1964 : vec2<f32> = vec2<f32>(x_1963.x, x_1963.y);
        let x_1966 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1964.x, x_1964.y, x_1966);
        let x_1973 : vec3<f32> = txVec19;
        let x_1975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1973.xy, x_1973.z);
        u_xlat64 = x_1975;
        let x_1977 : f32 = u_xlat18.z;
        let x_1978 : f32 = u_xlat64;
        let x_1980 : f32 = u_xlat63;
        u_xlat63 = ((x_1977 * x_1978) + x_1980);
        let x_1983 : vec4<f32> = u_xlat15;
        let x_1984 : vec2<f32> = vec2<f32>(x_1983.z, x_1983.w);
        let x_1986 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1984.x, x_1984.y, x_1986);
        let x_1993 : vec3<f32> = txVec20;
        let x_1995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1993.xy, x_1993.z);
        u_xlat64 = x_1995;
        let x_1997 : f32 = u_xlat18.w;
        let x_1998 : f32 = u_xlat64;
        let x_2000 : f32 = u_xlat63;
        u_xlat63 = ((x_1997 * x_1998) + x_2000);
        let x_2003 : vec4<f32> = u_xlat16;
        let x_2004 : vec2<f32> = vec2<f32>(x_2003.x, x_2003.y);
        let x_2006 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2004.x, x_2004.y, x_2006);
        let x_2013 : vec3<f32> = txVec21;
        let x_2015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2013.xy, x_2013.z);
        u_xlat64 = x_2015;
        let x_2017 : f32 = u_xlat19.x;
        let x_2018 : f32 = u_xlat64;
        let x_2020 : f32 = u_xlat63;
        u_xlat63 = ((x_2017 * x_2018) + x_2020);
        let x_2023 : vec4<f32> = u_xlat16;
        let x_2024 : vec2<f32> = vec2<f32>(x_2023.z, x_2023.w);
        let x_2026 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2024.x, x_2024.y, x_2026);
        let x_2033 : vec3<f32> = txVec22;
        let x_2035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2033.xy, x_2033.z);
        u_xlat64 = x_2035;
        let x_2037 : f32 = u_xlat19.y;
        let x_2038 : f32 = u_xlat64;
        let x_2040 : f32 = u_xlat63;
        u_xlat63 = ((x_2037 * x_2038) + x_2040);
        let x_2043 : vec2<f32> = u_xlat28;
        let x_2045 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2043.x, x_2043.y, x_2045);
        let x_2052 : vec3<f32> = txVec23;
        let x_2054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2052.xy, x_2052.z);
        u_xlat64 = x_2054;
        let x_2056 : f32 = u_xlat19.z;
        let x_2057 : f32 = u_xlat64;
        let x_2059 : f32 = u_xlat63;
        u_xlat63 = ((x_2056 * x_2057) + x_2059);
        let x_2062 : vec2<f32> = u_xlat54;
        let x_2064 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2062.x, x_2062.y, x_2064);
        let x_2071 : vec3<f32> = txVec24;
        let x_2073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2071.xy, x_2071.z);
        u_xlat64 = x_2073;
        let x_2075 : f32 = u_xlat19.w;
        let x_2076 : f32 = u_xlat64;
        let x_2078 : f32 = u_xlat63;
        u_xlat63 = ((x_2075 * x_2076) + x_2078);
        let x_2081 : vec4<f32> = u_xlat11;
        let x_2082 : vec2<f32> = vec2<f32>(x_2081.x, x_2081.y);
        let x_2084 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2082.x, x_2082.y, x_2084);
        let x_2091 : vec3<f32> = txVec25;
        let x_2093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2091.xy, x_2091.z);
        u_xlat64 = x_2093;
        let x_2095 : f32 = u_xlat7.x;
        let x_2096 : f32 = u_xlat64;
        let x_2098 : f32 = u_xlat63;
        u_xlat63 = ((x_2095 * x_2096) + x_2098);
        let x_2101 : vec4<f32> = u_xlat11;
        let x_2102 : vec2<f32> = vec2<f32>(x_2101.z, x_2101.w);
        let x_2104 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2102.x, x_2102.y, x_2104);
        let x_2111 : vec3<f32> = txVec26;
        let x_2113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2111.xy, x_2111.z);
        u_xlat64 = x_2113;
        let x_2115 : f32 = u_xlat7.y;
        let x_2116 : f32 = u_xlat64;
        let x_2118 : f32 = u_xlat63;
        u_xlat63 = ((x_2115 * x_2116) + x_2118);
        let x_2121 : vec2<f32> = u_xlat49;
        let x_2123 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2121.x, x_2121.y, x_2123);
        let x_2130 : vec3<f32> = txVec27;
        let x_2132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2130.xy, x_2130.z);
        u_xlat64 = x_2132;
        let x_2134 : f32 = u_xlat7.z;
        let x_2135 : f32 = u_xlat64;
        let x_2137 : f32 = u_xlat63;
        u_xlat63 = ((x_2134 * x_2135) + x_2137);
        let x_2140 : vec4<f32> = u_xlat6;
        let x_2141 : vec2<f32> = vec2<f32>(x_2140.x, x_2140.y);
        let x_2143 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2141.x, x_2141.y, x_2143);
        let x_2150 : vec3<f32> = txVec28;
        let x_2152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2150.xy, x_2150.z);
        u_xlat64 = x_2152;
        let x_2154 : f32 = u_xlat7.w;
        let x_2155 : f32 = u_xlat64;
        let x_2157 : f32 = u_xlat63;
        u_xlat3.x = ((x_2154 * x_2155) + x_2157);
      }
    }
  } else {
    let x_2162 : vec4<f32> = vs_TEXCOORD8;
    let x_2163 : vec2<f32> = vec2<f32>(x_2162.x, x_2162.y);
    let x_2165 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2163.x, x_2163.y, x_2165);
    let x_2172 : vec3<f32> = txVec29;
    let x_2174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2172.xy, x_2172.z);
    u_xlat3.x = x_2174;
  }
  let x_2177 : f32 = x_973.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_2177) + 1.0f);
  let x_2181 : f32 = u_xlat3.x;
  let x_2183 : f32 = x_973.x_MainLightShadowParams.x;
  let x_2185 : f32 = u_xlat63;
  u_xlat3.x = ((x_2181 * x_2183) + x_2185);
  let x_2189 : f32 = vs_TEXCOORD8.z;
  u_xlatb63 = (0.0f >= x_2189);
  let x_2193 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (x_2193 >= 1.0f);
  let x_2195 : bool = u_xlatb63;
  let x_2196 : bool = u_xlatb64;
  u_xlatb63 = (x_2195 | x_2196);
  let x_2198 : bool = u_xlatb63;
  if (x_2198) {
    x_2199 = 1.0f;
  } else {
    let x_2204 : f32 = u_xlat3.x;
    x_2199 = x_2204;
  }
  let x_2205 : f32 = x_2199;
  u_xlat3.x = x_2205;
  let x_2209 : vec3<f32> = vs_TEXCOORD7;
  let x_2212 : vec3<f32> = x_125.x_WorldSpaceCameraPos;
  let x_2214 : vec3<f32> = (x_2209 + -(x_2212));
  let x_2215 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2214.x, x_2214.y, x_2214.z, x_2215.w);
  let x_2217 : vec4<f32> = u_xlat6;
  let x_2219 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2217.x, x_2217.y, x_2217.z), vec3<f32>(x_2219.x, x_2219.y, x_2219.z));
  let x_2222 : f32 = u_xlat63;
  let x_2224 : f32 = x_973.x_MainLightShadowParams.z;
  let x_2227 : f32 = x_973.x_MainLightShadowParams.w;
  u_xlat63 = ((x_2222 * x_2224) + x_2227);
  let x_2229 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2229, 0.0f, 1.0f);
  let x_2232 : f32 = u_xlat3.x;
  u_xlat64 = (-(x_2232) + 1.0f);
  let x_2235 : f32 = u_xlat63;
  let x_2236 : f32 = u_xlat64;
  let x_2239 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2235 * x_2236) + x_2239);
  let x_2242 : f32 = u_xlat43;
  let x_2245 : vec4<f32> = x_125.x_MainLightColor;
  let x_2247 : vec3<f32> = (vec3<f32>(x_2242, x_2242, x_2242) * vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
  let x_2248 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
  let x_2251 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2251;
  let x_2254 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2254;
  let x_2257 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2257;
  let x_2259 : vec4<f32> = u_xlat7;
  let x_2262 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(-(vec3<f32>(x_2259.x, x_2259.y, x_2259.z)), vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
  let x_2265 : f32 = u_xlat63;
  let x_2266 : f32 = u_xlat63;
  u_xlat63 = (x_2265 + x_2266);
  let x_2268 : vec4<f32> = u_xlat1;
  let x_2270 : f32 = u_xlat63;
  let x_2274 : vec4<f32> = u_xlat7;
  let x_2277 : vec3<f32> = ((vec3<f32>(x_2268.x, x_2268.y, x_2268.z) * -(vec3<f32>(x_2270, x_2270, x_2270))) + -(vec3<f32>(x_2274.x, x_2274.y, x_2274.z)));
  let x_2278 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2277.x, x_2277.y, x_2277.z, x_2278.w);
  let x_2280 : vec4<f32> = u_xlat1;
  let x_2282 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2280.x, x_2280.y, x_2280.z), vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
  let x_2285 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2285, 0.0f, 1.0f);
  let x_2287 : f32 = u_xlat63;
  u_xlat63 = (-(x_2287) + 1.0f);
  let x_2290 : f32 = u_xlat63;
  let x_2291 : f32 = u_xlat63;
  u_xlat63 = (x_2290 * x_2291);
  let x_2293 : f32 = u_xlat63;
  let x_2294 : f32 = u_xlat63;
  u_xlat63 = (x_2293 * x_2294);
  let x_2297 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2297) * 0.699999988f) + 1.700000048f);
  let x_2304 : f32 = u_xlat0.x;
  let x_2305 : f32 = u_xlat64;
  u_xlat0.x = (x_2304 * x_2305);
  let x_2309 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2309 * 6.0f);
  let x_2321 : vec4<f32> = u_xlat8;
  let x_2324 : f32 = u_xlat0.x;
  let x_2325 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2321.x, x_2321.y, x_2321.z), x_2324);
  u_xlat8 = x_2325;
  let x_2327 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2327 + -1.0f);
  let x_2335 : f32 = x_2333.unity_SpecCube0_HDR.w;
  let x_2337 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2335 * x_2337) + 1.0f);
  let x_2342 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2342, 0.0f);
  let x_2346 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2346);
  let x_2350 : f32 = u_xlat0.x;
  let x_2352 : f32 = x_2333.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2350 * x_2352);
  let x_2356 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2356);
  let x_2360 : f32 = u_xlat0.x;
  let x_2362 : f32 = x_2333.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2360 * x_2362);
  let x_2365 : vec4<f32> = u_xlat8;
  let x_2367 : vec3<f32> = u_xlat0;
  let x_2369 : vec3<f32> = (vec3<f32>(x_2365.x, x_2365.y, x_2365.z) * vec3<f32>(x_2367.x, x_2367.x, x_2367.x));
  let x_2370 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
  let x_2372 : f32 = u_xlat40;
  let x_2374 : f32 = u_xlat40;
  let x_2378 : vec2<f32> = ((vec2<f32>(x_2372, x_2372) * vec2<f32>(x_2374, x_2374)) + vec2<f32>(-1.0f, 1.0f));
  let x_2379 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2378.x, x_2379.y, x_2378.y);
  let x_2382 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2382);
  let x_2384 : vec4<f32> = u_xlat5;
  let x_2387 : f32 = u_xlat62;
  let x_2389 : vec3<f32> = (-(vec3<f32>(x_2384.x, x_2384.y, x_2384.z)) + vec3<f32>(x_2387, x_2387, x_2387));
  let x_2390 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
  let x_2392 : f32 = u_xlat63;
  let x_2394 : vec4<f32> = u_xlat9;
  let x_2397 : vec4<f32> = u_xlat5;
  let x_2399 : vec3<f32> = ((vec3<f32>(x_2392, x_2392, x_2392) * vec3<f32>(x_2394.x, x_2394.y, x_2394.z)) + vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
  let x_2400 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
  let x_2402 : f32 = u_xlat40;
  let x_2404 : vec4<f32> = u_xlat9;
  let x_2406 : vec3<f32> = (vec3<f32>(x_2402, x_2402, x_2402) * vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2407 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2406.x, x_2406.y, x_2406.z, x_2407.w);
  let x_2409 : vec4<f32> = u_xlat8;
  let x_2411 : vec4<f32> = u_xlat9;
  let x_2413 : vec3<f32> = (vec3<f32>(x_2409.x, x_2409.y, x_2409.z) * vec3<f32>(x_2411.x, x_2411.y, x_2411.z));
  let x_2414 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
  let x_2416 : vec3<f32> = u_xlat2;
  let x_2417 : vec4<f32> = u_xlat4;
  let x_2420 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_2416 * vec3<f32>(x_2417.x, x_2417.y, x_2417.z)) + vec3<f32>(x_2420.x, x_2420.y, x_2420.z));
  let x_2424 : f32 = u_xlat3.x;
  let x_2426 : f32 = x_2333.unity_LightData.z;
  u_xlat40 = (x_2424 * x_2426);
  let x_2428 : vec4<f32> = u_xlat1;
  let x_2431 : vec4<f32> = x_125.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_2428.x, x_2428.y, x_2428.z), vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
  let x_2434 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2434, 0.0f, 1.0f);
  let x_2436 : f32 = u_xlat40;
  let x_2437 : f32 = u_xlat62;
  u_xlat40 = (x_2436 * x_2437);
  let x_2439 : f32 = u_xlat40;
  let x_2441 : vec4<f32> = u_xlat6;
  let x_2443 : vec3<f32> = (vec3<f32>(x_2439, x_2439, x_2439) * vec3<f32>(x_2441.x, x_2441.y, x_2441.z));
  let x_2444 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2443.x, x_2443.y, x_2443.z, x_2444.w);
  let x_2446 : vec4<f32> = u_xlat7;
  let x_2449 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2451 : vec3<f32> = (vec3<f32>(x_2446.x, x_2446.y, x_2446.z) + vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
  let x_2452 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
  let x_2454 : vec4<f32> = u_xlat8;
  let x_2456 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2454.x, x_2454.y, x_2454.z), vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2459 : f32 = u_xlat40;
  u_xlat40 = max(x_2459, 1.17549435e-37f);
  let x_2462 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2462);
  let x_2464 : f32 = u_xlat40;
  let x_2466 : vec4<f32> = u_xlat8;
  let x_2468 : vec3<f32> = (vec3<f32>(x_2464, x_2464, x_2464) * vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
  let x_2469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
  let x_2471 : vec4<f32> = u_xlat1;
  let x_2473 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2471.x, x_2471.y, x_2471.z), vec3<f32>(x_2473.x, x_2473.y, x_2473.z));
  let x_2476 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2476, 0.0f, 1.0f);
  let x_2479 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2481 : vec4<f32> = u_xlat8;
  u_xlat62 = dot(vec3<f32>(x_2479.x, x_2479.y, x_2479.z), vec3<f32>(x_2481.x, x_2481.y, x_2481.z));
  let x_2484 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2484, 0.0f, 1.0f);
  let x_2486 : f32 = u_xlat40;
  let x_2487 : f32 = u_xlat40;
  u_xlat40 = (x_2486 * x_2487);
  let x_2489 : f32 = u_xlat40;
  let x_2491 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2489 * x_2491) + 1.000010014f);
  let x_2495 : f32 = u_xlat62;
  let x_2496 : f32 = u_xlat62;
  u_xlat62 = (x_2495 * x_2496);
  let x_2498 : f32 = u_xlat40;
  let x_2499 : f32 = u_xlat40;
  u_xlat40 = (x_2498 * x_2499);
  let x_2501 : f32 = u_xlat62;
  u_xlat62 = max(x_2501, 0.100000001f);
  let x_2504 : f32 = u_xlat40;
  let x_2505 : f32 = u_xlat62;
  u_xlat40 = (x_2504 * x_2505);
  let x_2507 : f32 = u_xlat23;
  let x_2508 : f32 = u_xlat40;
  u_xlat40 = (x_2507 * x_2508);
  let x_2510 : f32 = u_xlat61;
  let x_2511 : f32 = u_xlat40;
  u_xlat40 = (x_2510 / x_2511);
  let x_2513 : vec4<f32> = u_xlat5;
  let x_2515 : f32 = u_xlat40;
  let x_2518 : vec4<f32> = u_xlat4;
  let x_2520 : vec3<f32> = ((vec3<f32>(x_2513.x, x_2513.y, x_2513.z) * vec3<f32>(x_2515, x_2515, x_2515)) + vec3<f32>(x_2518.x, x_2518.y, x_2518.z));
  let x_2521 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
  let x_2523 : vec4<f32> = u_xlat6;
  let x_2525 : vec4<f32> = u_xlat8;
  let x_2527 : vec3<f32> = (vec3<f32>(x_2523.x, x_2523.y, x_2523.z) * vec3<f32>(x_2525.x, x_2525.y, x_2525.z));
  let x_2528 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2528.w);
  let x_2531 : f32 = x_125.x_AdditionalLightsCount.x;
  let x_2533 : f32 = x_2333.unity_LightData.y;
  u_xlat40 = min(x_2531, x_2533);
  let x_2537 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2537));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2549 : u32 = u_xlatu_loop_1;
    let x_2550 : u32 = u_xlatu40;
    if ((x_2549 < x_2550)) {
    } else {
      break;
    }
    let x_2553 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2553 >> 2u);
    let x_2557 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_2557 & 3u));
    let x_2560 : u32 = u_xlatu3;
    let x_2563 : vec4<f32> = x_2333.unity_LightIndices[bitcast<i32>(x_2560)];
    let x_2573 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2578 : vec4<u32> = indexable[x_2573];
    u_xlat3.x = dot(x_2563, bitcast<vec4<f32>>(x_2578));
    let x_2584 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_2584);
    let x_2586 : vec3<f32> = vs_TEXCOORD7;
    let x_2598 : i32 = u_xlati3;
    let x_2600 : vec4<f32> = x_2597.x_AdditionalLightsPosition[x_2598];
    let x_2603 : i32 = u_xlati3;
    let x_2605 : vec4<f32> = x_2597.x_AdditionalLightsPosition[x_2603];
    let x_2607 : vec3<f32> = ((-(x_2586) * vec3<f32>(x_2600.w, x_2600.w, x_2600.w)) + vec3<f32>(x_2605.x, x_2605.y, x_2605.z));
    let x_2608 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
    let x_2610 : vec4<f32> = u_xlat9;
    let x_2612 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2610.x, x_2610.y, x_2610.z), vec3<f32>(x_2612.x, x_2612.y, x_2612.z));
    let x_2615 : f32 = u_xlat63;
    u_xlat63 = max(x_2615, 6.10351562e-05f);
    let x_2617 : f32 = u_xlat63;
    u_xlat64 = inverseSqrt(x_2617);
    let x_2619 : f32 = u_xlat64;
    let x_2621 : vec4<f32> = u_xlat9;
    let x_2623 : vec3<f32> = (vec3<f32>(x_2619, x_2619, x_2619) * vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
    let x_2624 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
    let x_2626 : f32 = u_xlat63;
    u_xlat65 = (1.0f / x_2626);
    let x_2628 : f32 = u_xlat63;
    let x_2629 : i32 = u_xlati3;
    let x_2631 : f32 = x_2597.x_AdditionalLightsAttenuation[x_2629].x;
    u_xlat63 = (x_2628 * x_2631);
    let x_2633 : f32 = u_xlat63;
    let x_2635 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2633) * x_2635) + 1.0f);
    let x_2638 : f32 = u_xlat63;
    u_xlat63 = max(x_2638, 0.0f);
    let x_2640 : f32 = u_xlat63;
    let x_2641 : f32 = u_xlat63;
    u_xlat63 = (x_2640 * x_2641);
    let x_2643 : f32 = u_xlat63;
    let x_2644 : f32 = u_xlat65;
    u_xlat63 = (x_2643 * x_2644);
    let x_2646 : i32 = u_xlati3;
    let x_2648 : vec4<f32> = x_2597.x_AdditionalLightsSpotDir[x_2646];
    let x_2650 : vec4<f32> = u_xlat10;
    u_xlat65 = dot(vec3<f32>(x_2648.x, x_2648.y, x_2648.z), vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
    let x_2653 : f32 = u_xlat65;
    let x_2654 : i32 = u_xlati3;
    let x_2656 : f32 = x_2597.x_AdditionalLightsAttenuation[x_2654].z;
    let x_2658 : i32 = u_xlati3;
    let x_2660 : f32 = x_2597.x_AdditionalLightsAttenuation[x_2658].w;
    u_xlat65 = ((x_2653 * x_2656) + x_2660);
    let x_2662 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2662, 0.0f, 1.0f);
    let x_2664 : f32 = u_xlat65;
    let x_2665 : f32 = u_xlat65;
    u_xlat65 = (x_2664 * x_2665);
    let x_2667 : f32 = u_xlat63;
    let x_2668 : f32 = u_xlat65;
    u_xlat63 = (x_2667 * x_2668);
    let x_2670 : f32 = u_xlat43;
    let x_2672 : i32 = u_xlati3;
    let x_2674 : vec4<f32> = x_2597.x_AdditionalLightsColor[x_2672];
    let x_2676 : vec3<f32> = (vec3<f32>(x_2670, x_2670, x_2670) * vec3<f32>(x_2674.x, x_2674.y, x_2674.z));
    let x_2677 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2676.x, x_2676.y, x_2676.z, x_2677.w);
    let x_2679 : vec4<f32> = u_xlat1;
    let x_2681 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2679.x, x_2679.y, x_2679.z), vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
    let x_2686 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2686, 0.0f, 1.0f);
    let x_2690 : f32 = u_xlat3.x;
    let x_2691 : f32 = u_xlat63;
    u_xlat3.x = (x_2690 * x_2691);
    let x_2694 : vec4<f32> = u_xlat3;
    let x_2696 : vec4<f32> = u_xlat11;
    let x_2698 : vec3<f32> = (vec3<f32>(x_2694.x, x_2694.x, x_2694.x) * vec3<f32>(x_2696.x, x_2696.y, x_2696.z));
    let x_2699 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2698.x, x_2698.y, x_2698.z, x_2699.w);
    let x_2701 : vec4<f32> = u_xlat9;
    let x_2703 : f32 = u_xlat64;
    let x_2706 : vec4<f32> = u_xlat7;
    let x_2708 : vec3<f32> = ((vec3<f32>(x_2701.x, x_2701.y, x_2701.z) * vec3<f32>(x_2703, x_2703, x_2703)) + vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
    let x_2709 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2709.w);
    let x_2711 : vec4<f32> = u_xlat9;
    let x_2713 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_2711.x, x_2711.y, x_2711.z), vec3<f32>(x_2713.x, x_2713.y, x_2713.z));
    let x_2718 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2718, 1.17549435e-37f);
    let x_2722 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2722);
    let x_2725 : vec4<f32> = u_xlat3;
    let x_2727 : vec4<f32> = u_xlat9;
    let x_2729 : vec3<f32> = (vec3<f32>(x_2725.x, x_2725.x, x_2725.x) * vec3<f32>(x_2727.x, x_2727.y, x_2727.z));
    let x_2730 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2729.x, x_2729.y, x_2729.z, x_2730.w);
    let x_2732 : vec4<f32> = u_xlat1;
    let x_2734 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_2732.x, x_2732.y, x_2732.z), vec3<f32>(x_2734.x, x_2734.y, x_2734.z));
    let x_2739 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2739, 0.0f, 1.0f);
    let x_2742 : vec4<f32> = u_xlat10;
    let x_2744 : vec4<f32> = u_xlat9;
    u_xlat3.w = dot(vec3<f32>(x_2742.x, x_2742.y, x_2742.z), vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2749 : f32 = u_xlat3.w;
    u_xlat3.w = clamp(x_2749, 0.0f, 1.0f);
    let x_2752 : vec4<f32> = u_xlat3;
    let x_2754 : vec4<f32> = u_xlat3;
    let x_2756 : vec2<f32> = (vec2<f32>(x_2752.x, x_2752.w) * vec2<f32>(x_2754.x, x_2754.w));
    let x_2757 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_2756.x, x_2757.y, x_2757.z, x_2756.y);
    let x_2760 : f32 = u_xlat3.x;
    let x_2762 : f32 = u_xlat0.x;
    u_xlat3.x = ((x_2760 * x_2762) + 1.000010014f);
    let x_2767 : f32 = u_xlat3.x;
    let x_2769 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2767 * x_2769);
    let x_2773 : f32 = u_xlat3.w;
    u_xlat63 = max(x_2773, 0.100000001f);
    let x_2775 : f32 = u_xlat63;
    let x_2777 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2775 * x_2777);
    let x_2780 : f32 = u_xlat23;
    let x_2782 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2780 * x_2782);
    let x_2785 : f32 = u_xlat61;
    let x_2787 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2785 / x_2787);
    let x_2790 : vec4<f32> = u_xlat5;
    let x_2792 : vec4<f32> = u_xlat3;
    let x_2795 : vec4<f32> = u_xlat4;
    let x_2797 : vec3<f32> = ((vec3<f32>(x_2790.x, x_2790.y, x_2790.z) * vec3<f32>(x_2792.x, x_2792.x, x_2792.x)) + vec3<f32>(x_2795.x, x_2795.y, x_2795.z));
    let x_2798 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2798.w);
    let x_2800 : vec4<f32> = u_xlat9;
    let x_2802 : vec4<f32> = u_xlat11;
    let x_2805 : vec4<f32> = u_xlat8;
    let x_2807 : vec3<f32> = ((vec3<f32>(x_2800.x, x_2800.y, x_2800.z) * vec3<f32>(x_2802.x, x_2802.y, x_2802.z)) + vec3<f32>(x_2805.x, x_2805.y, x_2805.z));
    let x_2808 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2807.x, x_2807.y, x_2807.z, x_2808.w);

    continuing {
      let x_2810 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2810 + bitcast<u32>(1i));
    }
  }
  let x_2812 : vec3<f32> = u_xlat2;
  let x_2813 : f32 = u_xlat20;
  let x_2816 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2812 * vec3<f32>(x_2813, x_2813, x_2813)) + vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
  let x_2819 : vec4<f32> = u_xlat8;
  let x_2821 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2819.x, x_2819.y, x_2819.z) + x_2821);
  let x_2825 : f32 = u_xlat60;
  let x_2827 : vec3<f32> = u_xlat0;
  let x_2828 : vec3<f32> = (vec3<f32>(x_2825, x_2825, x_2825) * x_2827);
  let x_2829 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2828.x, x_2828.y, x_2828.z, x_2829.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

