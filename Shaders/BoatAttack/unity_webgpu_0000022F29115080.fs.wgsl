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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_91 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1782 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1998 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2260 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2370 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat22 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat24 : f32;
  var u_xlat60 : f32;
  var u_xlat44 : f32;
  var u_xlatb64 : bool;
  var u_xlat6 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlatb65 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat65 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat26 : f32;
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
  var u_xlatb22 : vec2<bool>;
  var u_xlatb42 : bool;
  var x_1728 : f32;
  var u_xlat42 : vec2<f32>;
  var x_1864 : f32;
  var x_1876 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat66 : f32;
  var u_xlatu66 : u32;
  var u_xlati67 : i32;
  var u_xlati66 : i32;
  var u_xlati68 : i32;
  var u_xlatb66 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb51 : vec2<bool>;
  var x_2663 : f32;
  var x_2676 : f32;
  var x_2728 : f32;
  var x_2739 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_49);
  u_xlat0 = x_50;
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_43.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_58.x, x_58.y), x_61);
  u_xlat1 = x_62.x;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec4<f32> = vs_TEXCOORD3;
  u_xlat21.x = dot(vec3<f32>(x_67.x, x_67.y, x_67.z), vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_74 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_74);
  let x_77 : vec3<f32> = u_xlat21;
  let x_79 : vec4<f32> = vs_TEXCOORD3;
  u_xlat21 = (vec3<f32>(x_77.x, x_77.x, x_77.x) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_85 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres0;
  let x_97 : vec3<f32> = (x_85 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_101 : vec3<f32> = vs_TEXCOORD7;
  let x_104 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres1;
  let x_107 : vec3<f32> = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = vs_TEXCOORD7;
  let x_114 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_111 + -(vec3<f32>(x_114.x, x_114.y, x_114.z)));
  let x_119 : vec3<f32> = vs_TEXCOORD7;
  let x_122 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_119 + -(vec3<f32>(x_122.x, x_122.y, x_122.z)));
  let x_126 : vec4<f32> = u_xlat2;
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_139 : vec3<f32> = u_xlat4;
  let x_140 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_139, x_140);
  let x_144 : vec3<f32> = u_xlat5;
  let x_145 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_144, x_145);
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : vec4<f32> = x_91.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_152 < x_155);
  let x_159 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_159);
  let x_164 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_176);
  let x_182 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_182);
  let x_186 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_186);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(x_191.y, x_191.z, x_191.w));
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat2;
  let x_199 : vec3<f32> = max(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_199.x, x_199.y, x_199.z);
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_202, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_210 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_210) + 4.0f);
  let x_217 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_217);
  let x_221 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_221) << bitcast<u32>(2i));
  let x_225 : vec3<f32> = vs_TEXCOORD7;
  let x_228 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati2;
  let x_235 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_228 + 1i) / 4i)][((x_231 + 1i) % 4i)];
  u_xlat22 = (vec3<f32>(x_225.y, x_225.y, x_225.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : i32 = u_xlati2;
  let x_240 : i32 = u_xlati2;
  let x_243 : vec4<f32> = x_91.x_MainLightWorldToShadow[(x_238 / 4i)][(x_240 % 4i)];
  let x_245 : vec3<f32> = vs_TEXCOORD7;
  let x_248 : vec3<f32> = u_xlat22;
  u_xlat22 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.x, x_245.x, x_245.x)) + x_248);
  let x_250 : i32 = u_xlati2;
  let x_253 : i32 = u_xlati2;
  let x_257 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_250 + 2i) / 4i)][((x_253 + 2i) % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD7;
  let x_262 : vec3<f32> = u_xlat22;
  u_xlat22 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.z, x_259.z, x_259.z)) + x_262);
  let x_264 : vec3<f32> = u_xlat22;
  let x_265 : i32 = u_xlati2;
  let x_268 : i32 = u_xlati2;
  let x_272 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_265 + 3i) / 4i)][((x_268 + 3i) % 4i)];
  let x_274 : vec3<f32> = (x_264 + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_282 : vec4<f32> = vs_TEXCOORD0;
  let x_285 : f32 = x_43.x_GlobalMipBias.x;
  let x_286 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_282.z, x_282.w), x_285);
  u_xlat3 = x_286;
  let x_291 : vec4<f32> = vs_TEXCOORD0;
  let x_294 : f32 = x_43.x_GlobalMipBias.x;
  let x_295 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_291.z, x_291.w), x_294);
  u_xlat4 = vec3<f32>(x_295.x, x_295.y, x_295.z);
  let x_297 : vec4<f32> = u_xlat3;
  let x_301 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec3<f32> = u_xlat21;
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat62 = dot(x_305, vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : f32 = u_xlat62;
  u_xlat62 = (x_309 + 0.5f);
  let x_312 : f32 = u_xlat62;
  let x_314 : vec3<f32> = u_xlat4;
  let x_315 : vec3<f32> = (vec3<f32>(x_312, x_312, x_312) * x_314);
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_319 : f32 = u_xlat3.w;
  u_xlat62 = max(x_319, 0.0001f);
  let x_322 : vec4<f32> = u_xlat3;
  let x_324 : f32 = u_xlat62;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) / vec3<f32>(x_324, x_324, x_324));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_331 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_332 : vec2<f32> = vec2<f32>(x_331.x, x_331.y);
  let x_336 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_332.x, x_332.y));
  let x_337 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_336.x, x_336.y, x_337.z);
  let x_339 : vec3<f32> = u_xlat4;
  let x_341 : vec4<f32> = hlslcc_FragCoord;
  let x_343 : vec2<f32> = (vec2<f32>(x_339.x, x_339.y) * vec2<f32>(x_341.x, x_341.y));
  let x_344 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_343.x, x_343.y, x_344.z);
  let x_347 : f32 = u_xlat4.y;
  let x_350 : f32 = x_43.x_ScaleBiasRt.x;
  let x_353 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat62 = ((x_347 * x_350) + x_353);
  let x_355 : f32 = u_xlat62;
  u_xlat4.z = (-(x_355) + 1.0f);
  let x_359 : f32 = u_xlat1;
  u_xlat62 = ((-(x_359) * 0.959999979f) + 0.959999979f);
  let x_365 : f32 = u_xlat62;
  u_xlat63 = (-(x_365) + 1.0f);
  let x_368 : vec4<f32> = u_xlat0;
  let x_370 : f32 = u_xlat62;
  u_xlat5 = (vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370, x_370, x_370));
  let x_373 : vec4<f32> = u_xlat0;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_378 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : f32 = u_xlat1;
  let x_382 : vec4<f32> = u_xlat0;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380, x_380, x_380) * vec3<f32>(x_382.x, x_382.y, x_382.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_391) + 1.0f);
  let x_394 : f32 = u_xlat1;
  let x_395 : f32 = u_xlat1;
  u_xlat62 = (x_394 * x_395);
  let x_397 : f32 = u_xlat62;
  u_xlat62 = max(x_397, 0.0078125f);
  let x_401 : f32 = u_xlat62;
  let x_402 : f32 = u_xlat62;
  u_xlat24 = (x_401 * x_402);
  let x_406 : f32 = u_xlat0.w;
  let x_407 : f32 = u_xlat63;
  u_xlat60 = (x_406 + x_407);
  let x_409 : f32 = u_xlat60;
  u_xlat60 = clamp(x_409, 0.0f, 1.0f);
  let x_411 : f32 = u_xlat62;
  u_xlat63 = ((x_411 * 4.0f) + 2.0f);
  let x_419 : vec3<f32> = u_xlat4;
  let x_422 : f32 = x_43.x_GlobalMipBias.x;
  let x_423 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_419.x, x_419.z), x_422);
  u_xlat4.x = x_423.x;
  let x_428 : f32 = u_xlat4.x;
  u_xlat44 = (x_428 + -1.0f);
  let x_431 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_432 : f32 = u_xlat44;
  u_xlat44 = ((x_431 * x_432) + 1.0f);
  let x_436 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_436, 1.0f);
  let x_442 : f32 = x_91.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_442);
  let x_444 : bool = u_xlatb64;
  if (x_444) {
    let x_448 : f32 = x_91.x_MainLightShadowParams.y;
    u_xlatb64 = (x_448 == 1.0f);
    let x_450 : bool = u_xlatb64;
    if (x_450) {
      let x_454 : vec4<f32> = u_xlat2;
      let x_458 : vec4<f32> = x_91.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_454.x, x_454.y, x_454.x, x_454.y) + x_458);
      let x_461 : vec4<f32> = u_xlat6;
      let x_462 : vec2<f32> = vec2<f32>(x_461.x, x_461.y);
      let x_464 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_462.x, x_462.y, x_464);
      let x_477 : vec3<f32> = txVec0;
      let x_479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_477.xy, x_477.z);
      u_xlat7.x = x_479;
      let x_482 : vec4<f32> = u_xlat6;
      let x_483 : vec2<f32> = vec2<f32>(x_482.z, x_482.w);
      let x_485 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_483.x, x_483.y, x_485);
      let x_492 : vec3<f32> = txVec1;
      let x_494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_492.xy, x_492.z);
      u_xlat7.y = x_494;
      let x_496 : vec4<f32> = u_xlat2;
      let x_499 : vec4<f32> = x_91.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_496.x, x_496.y, x_496.x, x_496.y) + x_499);
      let x_502 : vec4<f32> = u_xlat6;
      let x_503 : vec2<f32> = vec2<f32>(x_502.x, x_502.y);
      let x_505 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_503.x, x_503.y, x_505);
      let x_512 : vec3<f32> = txVec2;
      let x_514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_512.xy, x_512.z);
      u_xlat7.z = x_514;
      let x_517 : vec4<f32> = u_xlat6;
      let x_518 : vec2<f32> = vec2<f32>(x_517.z, x_517.w);
      let x_520 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_518.x, x_518.y, x_520);
      let x_527 : vec3<f32> = txVec3;
      let x_529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_527.xy, x_527.z);
      u_xlat7.w = x_529;
      let x_532 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_532, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_539 : f32 = x_91.x_MainLightShadowParams.y;
      u_xlatb65 = (x_539 == 2.0f);
      let x_541 : bool = u_xlatb65;
      if (x_541) {
        let x_544 : vec4<f32> = u_xlat2;
        let x_548 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_552 : vec2<f32> = ((vec2<f32>(x_544.x, x_544.y) * vec2<f32>(x_548.z, x_548.w)) + vec2<f32>(0.5f, 0.5f));
        let x_553 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat6;
        let x_557 : vec2<f32> = floor(vec2<f32>(x_555.x, x_555.y));
        let x_558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
        let x_562 : vec4<f32> = u_xlat2;
        let x_565 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_562.x, x_562.y) * vec2<f32>(x_565.z, x_565.w)) + -(vec2<f32>(x_568.x, x_568.y)));
        let x_572 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_572.x, x_572.x, x_572.y, x_572.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_577 : vec4<f32> = u_xlat7;
        let x_579 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_577.x, x_577.x, x_577.z, x_577.z) * vec4<f32>(x_579.x, x_579.x, x_579.z, x_579.z));
        let x_582 : vec4<f32> = u_xlat8;
        let x_586 : vec2<f32> = (vec2<f32>(x_582.y, x_582.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_586.x, x_587.y, x_586.y, x_587.w);
        let x_589 : vec4<f32> = u_xlat8;
        let x_592 : vec2<f32> = u_xlat46;
        let x_594 : vec2<f32> = ((vec2<f32>(x_589.x, x_589.z) * vec2<f32>(0.5f, 0.5f)) + -(x_592));
        let x_595 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
        let x_598 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_598) + vec2<f32>(1.0f, 1.0f));
        let x_602 : vec2<f32> = u_xlat46;
        let x_604 : vec2<f32> = min(x_602, vec2<f32>(0.0f, 0.0f));
        let x_605 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat9;
        let x_610 : vec4<f32> = u_xlat9;
        let x_613 : vec2<f32> = u_xlat48;
        let x_614 : vec2<f32> = ((-(vec2<f32>(x_607.x, x_607.y)) * vec2<f32>(x_610.x, x_610.y)) + x_613);
        let x_615 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_617, vec2<f32>(0.0f, 0.0f));
        let x_619 : vec2<f32> = u_xlat46;
        let x_621 : vec2<f32> = u_xlat46;
        let x_623 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_619) * x_621) + vec2<f32>(x_623.y, x_623.w));
        let x_626 : vec4<f32> = u_xlat9;
        let x_628 : vec2<f32> = (vec2<f32>(x_626.x, x_626.y) + vec2<f32>(1.0f, 1.0f));
        let x_629 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
        let x_631 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_631 + vec2<f32>(1.0f, 1.0f));
        let x_634 : vec4<f32> = u_xlat8;
        let x_638 : vec2<f32> = (vec2<f32>(x_634.x, x_634.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_639 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_641 : vec2<f32> = u_xlat48;
        let x_642 : vec2<f32> = (x_641 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_643 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
        let x_645 : vec4<f32> = u_xlat9;
        let x_647 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_648 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_651 : vec2<f32> = u_xlat46;
        let x_652 : vec2<f32> = (x_651 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_653 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_655.y, x_655.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_659 : f32 = u_xlat9.x;
        u_xlat10.z = x_659;
        let x_662 : f32 = u_xlat46.x;
        u_xlat10.w = x_662;
        let x_665 : f32 = u_xlat11.x;
        u_xlat8.z = x_665;
        let x_668 : f32 = u_xlat7.x;
        u_xlat8.w = x_668;
        let x_671 : vec4<f32> = u_xlat8;
        let x_673 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_671.z, x_671.w, x_671.x, x_671.z) + vec4<f32>(x_673.z, x_673.w, x_673.x, x_673.z));
        let x_677 : f32 = u_xlat10.y;
        u_xlat9.z = x_677;
        let x_680 : f32 = u_xlat46.y;
        u_xlat9.w = x_680;
        let x_683 : f32 = u_xlat8.y;
        u_xlat11.z = x_683;
        let x_686 : f32 = u_xlat7.z;
        u_xlat11.w = x_686;
        let x_688 : vec4<f32> = u_xlat9;
        let x_690 : vec4<f32> = u_xlat11;
        let x_692 : vec3<f32> = (vec3<f32>(x_688.z, x_688.y, x_688.w) + vec3<f32>(x_690.z, x_690.y, x_690.w));
        let x_693 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat8;
        let x_697 : vec4<f32> = u_xlat12;
        let x_699 : vec3<f32> = (vec3<f32>(x_695.x, x_695.z, x_695.w) / vec3<f32>(x_697.z, x_697.w, x_697.y));
        let x_700 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat8;
        let x_707 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_708 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
        let x_710 : vec4<f32> = u_xlat11;
        let x_712 : vec4<f32> = u_xlat7;
        let x_714 : vec3<f32> = (vec3<f32>(x_710.z, x_710.y, x_710.w) / vec3<f32>(x_712.x, x_712.y, x_712.z));
        let x_715 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
        let x_717 : vec4<f32> = u_xlat9;
        let x_719 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_720 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
        let x_722 : vec4<f32> = u_xlat8;
        let x_725 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_727 : vec3<f32> = (vec3<f32>(x_722.y, x_722.x, x_722.z) * vec3<f32>(x_725.x, x_725.x, x_725.x));
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
        let x_730 : vec4<f32> = u_xlat9;
        let x_733 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_735 : vec3<f32> = (vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(x_733.y, x_733.y, x_733.y));
        let x_736 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
        let x_739 : f32 = u_xlat9.x;
        u_xlat8.w = x_739;
        let x_741 : vec4<f32> = u_xlat6;
        let x_744 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y) * vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y)) + vec4<f32>(x_747.y, x_747.w, x_747.x, x_747.w));
        let x_750 : vec4<f32> = u_xlat6;
        let x_753 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_756 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_750.x, x_750.y) * vec2<f32>(x_753.x, x_753.y)) + vec2<f32>(x_756.z, x_756.w));
        let x_760 : f32 = u_xlat8.y;
        u_xlat9.w = x_760;
        let x_762 : vec4<f32> = u_xlat9;
        let x_763 : vec2<f32> = vec2<f32>(x_762.y, x_762.z);
        let x_764 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_764.x, x_763.x, x_764.z, x_763.y);
        let x_766 : vec4<f32> = u_xlat6;
        let x_769 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_766.x, x_766.y, x_766.x, x_766.y) * vec4<f32>(x_769.x, x_769.y, x_769.x, x_769.y)) + vec4<f32>(x_772.x, x_772.y, x_772.z, x_772.y));
        let x_775 : vec4<f32> = u_xlat6;
        let x_778 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_781 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_775.x, x_775.y, x_775.x, x_775.y) * vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y)) + vec4<f32>(x_781.w, x_781.y, x_781.w, x_781.z));
        let x_784 : vec4<f32> = u_xlat6;
        let x_787 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_790 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_784.x, x_784.y, x_784.x, x_784.y) * vec4<f32>(x_787.x, x_787.y, x_787.x, x_787.y)) + vec4<f32>(x_790.x, x_790.w, x_790.z, x_790.w));
        let x_794 : vec4<f32> = u_xlat7;
        let x_796 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_794.x, x_794.x, x_794.x, x_794.y) * vec4<f32>(x_796.z, x_796.w, x_796.y, x_796.z));
        let x_800 : vec4<f32> = u_xlat7;
        let x_802 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_800.y, x_800.y, x_800.z, x_800.z) * x_802);
        let x_806 : f32 = u_xlat7.z;
        let x_808 : f32 = u_xlat12.y;
        u_xlat65 = (x_806 * x_808);
        let x_811 : vec4<f32> = u_xlat10;
        let x_812 : vec2<f32> = vec2<f32>(x_811.x, x_811.y);
        let x_814 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_812.x, x_812.y, x_814);
        let x_821 : vec3<f32> = txVec4;
        let x_823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_821.xy, x_821.z);
        u_xlat6.x = x_823;
        let x_826 : vec4<f32> = u_xlat10;
        let x_827 : vec2<f32> = vec2<f32>(x_826.z, x_826.w);
        let x_829 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_827.x, x_827.y, x_829);
        let x_837 : vec3<f32> = txVec5;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_837.xy, x_837.z);
        u_xlat26 = x_839;
        let x_840 : f32 = u_xlat26;
        let x_842 : f32 = u_xlat13.y;
        u_xlat26 = (x_840 * x_842);
        let x_845 : f32 = u_xlat13.x;
        let x_847 : f32 = u_xlat6.x;
        let x_849 : f32 = u_xlat26;
        u_xlat6.x = ((x_845 * x_847) + x_849);
        let x_853 : vec2<f32> = u_xlat46;
        let x_855 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec6;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_862.xy, x_862.z);
        u_xlat26 = x_864;
        let x_866 : f32 = u_xlat13.z;
        let x_867 : f32 = u_xlat26;
        let x_870 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_866 * x_867) + x_870);
        let x_874 : vec4<f32> = u_xlat9;
        let x_875 : vec2<f32> = vec2<f32>(x_874.x, x_874.y);
        let x_877 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_875.x, x_875.y, x_877);
        let x_884 : vec3<f32> = txVec7;
        let x_886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_884.xy, x_884.z);
        u_xlat26 = x_886;
        let x_888 : f32 = u_xlat13.w;
        let x_889 : f32 = u_xlat26;
        let x_892 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_888 * x_889) + x_892);
        let x_896 : vec4<f32> = u_xlat11;
        let x_897 : vec2<f32> = vec2<f32>(x_896.x, x_896.y);
        let x_899 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_897.x, x_897.y, x_899);
        let x_906 : vec3<f32> = txVec8;
        let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_906.xy, x_906.z);
        u_xlat26 = x_908;
        let x_910 : f32 = u_xlat14.x;
        let x_911 : f32 = u_xlat26;
        let x_914 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_910 * x_911) + x_914);
        let x_918 : vec4<f32> = u_xlat11;
        let x_919 : vec2<f32> = vec2<f32>(x_918.z, x_918.w);
        let x_921 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_919.x, x_919.y, x_921);
        let x_928 : vec3<f32> = txVec9;
        let x_930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_928.xy, x_928.z);
        u_xlat26 = x_930;
        let x_932 : f32 = u_xlat14.y;
        let x_933 : f32 = u_xlat26;
        let x_936 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_932 * x_933) + x_936);
        let x_940 : vec4<f32> = u_xlat9;
        let x_941 : vec2<f32> = vec2<f32>(x_940.z, x_940.w);
        let x_943 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_941.x, x_941.y, x_943);
        let x_950 : vec3<f32> = txVec10;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_950.xy, x_950.z);
        u_xlat26 = x_952;
        let x_954 : f32 = u_xlat14.z;
        let x_955 : f32 = u_xlat26;
        let x_958 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_954 * x_955) + x_958);
        let x_962 : vec4<f32> = u_xlat8;
        let x_963 : vec2<f32> = vec2<f32>(x_962.x, x_962.y);
        let x_965 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_963.x, x_963.y, x_965);
        let x_972 : vec3<f32> = txVec11;
        let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_972.xy, x_972.z);
        u_xlat26 = x_974;
        let x_976 : f32 = u_xlat14.w;
        let x_977 : f32 = u_xlat26;
        let x_980 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_976 * x_977) + x_980);
        let x_984 : vec4<f32> = u_xlat8;
        let x_985 : vec2<f32> = vec2<f32>(x_984.z, x_984.w);
        let x_987 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_985.x, x_985.y, x_987);
        let x_994 : vec3<f32> = txVec12;
        let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_994.xy, x_994.z);
        u_xlat26 = x_996;
        let x_997 : f32 = u_xlat65;
        let x_998 : f32 = u_xlat26;
        let x_1001 : f32 = u_xlat6.x;
        u_xlat64 = ((x_997 * x_998) + x_1001);
      } else {
        let x_1004 : vec4<f32> = u_xlat2;
        let x_1007 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1007.z, x_1007.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1011 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1015 : vec2<f32> = floor(vec2<f32>(x_1013.x, x_1013.y));
        let x_1016 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat2;
        let x_1021 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1024 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1018.x, x_1018.y) * vec2<f32>(x_1021.z, x_1021.w)) + -(vec2<f32>(x_1024.x, x_1024.y)));
        let x_1028 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1028.x, x_1028.x, x_1028.y, x_1028.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1031 : vec4<f32> = u_xlat7;
        let x_1033 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1031.x, x_1031.x, x_1031.z, x_1031.z) * vec4<f32>(x_1033.x, x_1033.x, x_1033.z, x_1033.z));
        let x_1036 : vec4<f32> = u_xlat8;
        let x_1040 : vec2<f32> = (vec2<f32>(x_1036.y, x_1036.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1041.x, x_1040.x, x_1041.z, x_1040.y);
        let x_1043 : vec4<f32> = u_xlat8;
        let x_1046 : vec2<f32> = u_xlat46;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1043.x, x_1043.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1046));
        let x_1049 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1049.w);
        let x_1051 : vec2<f32> = u_xlat46;
        let x_1053 : vec2<f32> = (-(x_1051) + vec2<f32>(1.0f, 1.0f));
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
        let x_1056 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1056, vec2<f32>(0.0f, 0.0f));
        let x_1058 : vec2<f32> = u_xlat48;
        let x_1060 : vec2<f32> = u_xlat48;
        let x_1062 : vec4<f32> = u_xlat8;
        let x_1064 : vec2<f32> = ((-(x_1058) * x_1060) + vec2<f32>(x_1062.x, x_1062.y));
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1067 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1067, vec2<f32>(0.0f, 0.0f));
        let x_1070 : vec2<f32> = u_xlat48;
        let x_1072 : vec2<f32> = u_xlat48;
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1076 : vec2<f32> = ((-(x_1070) * x_1072) + vec2<f32>(x_1074.y, x_1074.w));
        let x_1077 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1076.x, x_1077.y, x_1076.y);
        let x_1079 : vec4<f32> = u_xlat8;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1079.x, x_1079.y) + vec2<f32>(2.0f, 2.0f));
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1085 : vec3<f32> = u_xlat27;
        let x_1087 : vec2<f32> = (vec2<f32>(x_1085.x, x_1085.z) + vec2<f32>(2.0f, 2.0f));
        let x_1088 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1088.x, x_1087.x, x_1088.z, x_1087.y);
        let x_1091 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1091 * 0.081632003f);
        let x_1095 : vec4<f32> = u_xlat7;
        let x_1098 : vec3<f32> = (vec3<f32>(x_1095.z, x_1095.x, x_1095.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1104 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1105 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1108 : f32 = u_xlat11.y;
        u_xlat10.x = x_1108;
        let x_1110 : vec2<f32> = u_xlat46;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1118 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1118.x, x_1117.x, x_1118.z, x_1117.y);
        let x_1120 : vec2<f32> = u_xlat46;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1120.x, x_1120.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1124.x, x_1125.y, x_1124.y, x_1125.w);
        let x_1128 : f32 = u_xlat7.x;
        u_xlat8.y = x_1128;
        let x_1131 : f32 = u_xlat9.y;
        u_xlat8.w = x_1131;
        let x_1133 : vec4<f32> = u_xlat8;
        let x_1134 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1133 + x_1134);
        let x_1136 : vec2<f32> = u_xlat46;
        let x_1139 : vec2<f32> = ((vec2<f32>(x_1136.y, x_1136.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1140 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1140.x, x_1139.x, x_1140.z, x_1139.y);
        let x_1142 : vec2<f32> = u_xlat46;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1142.y, x_1142.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1145.x, x_1146.y, x_1145.y, x_1146.w);
        let x_1149 : f32 = u_xlat7.y;
        u_xlat9.y = x_1149;
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1152 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1151 + x_1152);
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1155 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1154 / x_1155);
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1157 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1163 : vec4<f32> = u_xlat9;
        let x_1164 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1163 / x_1164);
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1166 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1168 : vec4<f32> = u_xlat8;
        let x_1171 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1168.w, x_1168.x, x_1168.y, x_1168.z) * vec4<f32>(x_1171.x, x_1171.x, x_1171.x, x_1171.x));
        let x_1174 : vec4<f32> = u_xlat9;
        let x_1177 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1174.x, x_1174.w, x_1174.y, x_1174.z) * vec4<f32>(x_1177.y, x_1177.y, x_1177.y, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1181 : vec3<f32> = vec3<f32>(x_1180.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1181.x, x_1182.y, x_1181.y, x_1181.z);
        let x_1185 : f32 = u_xlat9.x;
        u_xlat11.y = x_1185;
        let x_1187 : vec4<f32> = u_xlat6;
        let x_1190 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1193 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1187.x, x_1187.y, x_1187.x, x_1187.y) * vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y)) + vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1193.y));
        let x_1196 : vec4<f32> = u_xlat6;
        let x_1199 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1202 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.w, x_1202.y));
        let x_1206 : f32 = u_xlat11.y;
        u_xlat8.y = x_1206;
        let x_1209 : f32 = u_xlat9.z;
        u_xlat11.y = x_1209;
        let x_1211 : vec4<f32> = u_xlat6;
        let x_1214 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1220 : vec4<f32> = u_xlat6;
        let x_1223 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1226 : vec4<f32> = u_xlat11;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1220.x, x_1220.y) * vec2<f32>(x_1223.x, x_1223.y)) + vec2<f32>(x_1226.w, x_1226.y));
        let x_1229 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1228.x, x_1228.y, x_1229.z, x_1229.w);
        let x_1232 : f32 = u_xlat11.y;
        u_xlat8.z = x_1232;
        let x_1235 : vec4<f32> = u_xlat6;
        let x_1238 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1241 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y) * vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y)) + vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.z));
        let x_1245 : f32 = u_xlat9.w;
        u_xlat11.y = x_1245;
        let x_1248 : vec4<f32> = u_xlat6;
        let x_1251 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y) * vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.y)) + vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1254.y));
        let x_1258 : vec4<f32> = u_xlat6;
        let x_1261 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1258.x, x_1258.y) * vec2<f32>(x_1261.x, x_1261.y)) + vec2<f32>(x_1264.w, x_1264.y));
        let x_1268 : f32 = u_xlat11.y;
        u_xlat8.w = x_1268;
        let x_1271 : vec4<f32> = u_xlat6;
        let x_1274 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1271.x, x_1271.y) * vec2<f32>(x_1274.x, x_1274.y)) + vec2<f32>(x_1277.x, x_1277.w));
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1281 : vec3<f32> = vec3<f32>(x_1280.x, x_1280.z, x_1280.w);
        let x_1282 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1281.x, x_1282.y, x_1281.y, x_1281.z);
        let x_1284 : vec4<f32> = u_xlat6;
        let x_1287 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y) * vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y)) + vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1290.y));
        let x_1294 : vec4<f32> = u_xlat6;
        let x_1297 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1297.x, x_1297.y)) + vec2<f32>(x_1300.w, x_1300.y));
        let x_1304 : f32 = u_xlat8.x;
        u_xlat9.x = x_1304;
        let x_1306 : vec4<f32> = u_xlat6;
        let x_1309 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1312 : vec4<f32> = u_xlat9;
        let x_1314 : vec2<f32> = ((vec2<f32>(x_1306.x, x_1306.y) * vec2<f32>(x_1309.x, x_1309.y)) + vec2<f32>(x_1312.x, x_1312.y));
        let x_1315 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1314.x, x_1314.y, x_1315.z, x_1315.w);
        let x_1318 : vec4<f32> = u_xlat7;
        let x_1320 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1318.x, x_1318.x, x_1318.x, x_1318.x) * x_1320);
        let x_1323 : vec4<f32> = u_xlat7;
        let x_1325 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1323.y, x_1323.y, x_1323.y, x_1323.y) * x_1325);
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1330 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1328.z, x_1328.z, x_1328.z, x_1328.z) * x_1330);
        let x_1332 : vec4<f32> = u_xlat7;
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1332.w, x_1332.w, x_1332.w, x_1332.w) * x_1334);
        let x_1337 : vec4<f32> = u_xlat12;
        let x_1338 : vec2<f32> = vec2<f32>(x_1337.x, x_1337.y);
        let x_1340 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec13;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1347.xy, x_1347.z);
        u_xlat65 = x_1349;
        let x_1351 : vec4<f32> = u_xlat12;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.z, x_1351.w);
        let x_1354 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec14;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1361.xy, x_1361.z);
        u_xlat8.x = x_1363;
        let x_1366 : f32 = u_xlat8.x;
        let x_1368 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1366 * x_1368);
        let x_1372 : f32 = u_xlat17.x;
        let x_1373 : f32 = u_xlat65;
        let x_1376 : f32 = u_xlat8.x;
        u_xlat65 = ((x_1372 * x_1373) + x_1376);
        let x_1379 : vec2<f32> = u_xlat46;
        let x_1381 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec15;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1388.xy, x_1388.z);
        u_xlat46.x = x_1390;
        let x_1393 : f32 = u_xlat17.z;
        let x_1395 : f32 = u_xlat46.x;
        let x_1397 : f32 = u_xlat65;
        u_xlat65 = ((x_1393 * x_1395) + x_1397);
        let x_1400 : vec4<f32> = u_xlat15;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.x, x_1400.y);
        let x_1403 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec16;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1410.xy, x_1410.z);
        u_xlat46.x = x_1412;
        let x_1415 : f32 = u_xlat17.w;
        let x_1417 : f32 = u_xlat46.x;
        let x_1419 : f32 = u_xlat65;
        u_xlat65 = ((x_1415 * x_1417) + x_1419);
        let x_1422 : vec4<f32> = u_xlat13;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.x, x_1422.y);
        let x_1425 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec17;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1432.xy, x_1432.z);
        u_xlat46.x = x_1434;
        let x_1437 : f32 = u_xlat18.x;
        let x_1439 : f32 = u_xlat46.x;
        let x_1441 : f32 = u_xlat65;
        u_xlat65 = ((x_1437 * x_1439) + x_1441);
        let x_1444 : vec4<f32> = u_xlat13;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.z, x_1444.w);
        let x_1447 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec18;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1454.xy, x_1454.z);
        u_xlat46.x = x_1456;
        let x_1459 : f32 = u_xlat18.y;
        let x_1461 : f32 = u_xlat46.x;
        let x_1463 : f32 = u_xlat65;
        u_xlat65 = ((x_1459 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat14;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec19;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1476.xy, x_1476.z);
        u_xlat46.x = x_1478;
        let x_1481 : f32 = u_xlat18.z;
        let x_1483 : f32 = u_xlat46.x;
        let x_1485 : f32 = u_xlat65;
        u_xlat65 = ((x_1481 * x_1483) + x_1485);
        let x_1488 : vec4<f32> = u_xlat15;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.z, x_1488.w);
        let x_1491 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec20;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat46.x = x_1500;
        let x_1503 : f32 = u_xlat18.w;
        let x_1505 : f32 = u_xlat46.x;
        let x_1507 : f32 = u_xlat65;
        u_xlat65 = ((x_1503 * x_1505) + x_1507);
        let x_1510 : vec4<f32> = u_xlat16;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec21;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat46.x = x_1522;
        let x_1525 : f32 = u_xlat19.x;
        let x_1527 : f32 = u_xlat46.x;
        let x_1529 : f32 = u_xlat65;
        u_xlat65 = ((x_1525 * x_1527) + x_1529);
        let x_1532 : vec4<f32> = u_xlat16;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.z, x_1532.w);
        let x_1535 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec22;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat46.x = x_1544;
        let x_1547 : f32 = u_xlat19.y;
        let x_1549 : f32 = u_xlat46.x;
        let x_1551 : f32 = u_xlat65;
        u_xlat65 = ((x_1547 * x_1549) + x_1551);
        let x_1554 : vec2<f32> = u_xlat28;
        let x_1556 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec23;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
        u_xlat46.x = x_1565;
        let x_1568 : f32 = u_xlat19.z;
        let x_1570 : f32 = u_xlat46.x;
        let x_1572 : f32 = u_xlat65;
        u_xlat65 = ((x_1568 * x_1570) + x_1572);
        let x_1575 : vec2<f32> = u_xlat54;
        let x_1577 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec24;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1584.xy, x_1584.z);
        u_xlat46.x = x_1586;
        let x_1589 : f32 = u_xlat19.w;
        let x_1591 : f32 = u_xlat46.x;
        let x_1593 : f32 = u_xlat65;
        u_xlat65 = ((x_1589 * x_1591) + x_1593);
        let x_1596 : vec4<f32> = u_xlat11;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.x, x_1596.y);
        let x_1599 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec25;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1606.xy, x_1606.z);
        u_xlat46.x = x_1608;
        let x_1611 : f32 = u_xlat7.x;
        let x_1613 : f32 = u_xlat46.x;
        let x_1615 : f32 = u_xlat65;
        u_xlat65 = ((x_1611 * x_1613) + x_1615);
        let x_1618 : vec4<f32> = u_xlat11;
        let x_1619 : vec2<f32> = vec2<f32>(x_1618.z, x_1618.w);
        let x_1621 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec26;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1628.xy, x_1628.z);
        u_xlat46.x = x_1630;
        let x_1633 : f32 = u_xlat7.y;
        let x_1635 : f32 = u_xlat46.x;
        let x_1637 : f32 = u_xlat65;
        u_xlat65 = ((x_1633 * x_1635) + x_1637);
        let x_1640 : vec2<f32> = u_xlat49;
        let x_1642 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
        let x_1649 : vec3<f32> = txVec27;
        let x_1651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1649.xy, x_1649.z);
        u_xlat46.x = x_1651;
        let x_1654 : f32 = u_xlat7.z;
        let x_1656 : f32 = u_xlat46.x;
        let x_1658 : f32 = u_xlat65;
        u_xlat65 = ((x_1654 * x_1656) + x_1658);
        let x_1661 : vec4<f32> = u_xlat6;
        let x_1662 : vec2<f32> = vec2<f32>(x_1661.x, x_1661.y);
        let x_1664 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec28;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1671.xy, x_1671.z);
        u_xlat6.x = x_1673;
        let x_1676 : f32 = u_xlat7.w;
        let x_1678 : f32 = u_xlat6.x;
        let x_1680 : f32 = u_xlat65;
        u_xlat64 = ((x_1676 * x_1678) + x_1680);
      }
    }
  } else {
    let x_1684 : vec4<f32> = u_xlat2;
    let x_1685 : vec2<f32> = vec2<f32>(x_1684.x, x_1684.y);
    let x_1687 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
    let x_1694 : vec3<f32> = txVec29;
    let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
    u_xlat64 = x_1696;
  }
  let x_1698 : f32 = x_91.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1698) + 1.0f);
  let x_1702 : f32 = u_xlat64;
  let x_1704 : f32 = x_91.x_MainLightShadowParams.x;
  let x_1707 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1702 * x_1704) + x_1707);
  let x_1714 : f32 = u_xlat2.z;
  u_xlatb22.x = (0.0f >= x_1714);
  let x_1719 : f32 = u_xlat2.z;
  u_xlatb42 = (x_1719 >= 1.0f);
  let x_1721 : bool = u_xlatb42;
  let x_1723 : bool = u_xlatb22.x;
  u_xlatb22.x = (x_1721 | x_1723);
  let x_1727 : bool = u_xlatb22.x;
  if (x_1727) {
    x_1728 = 1.0f;
  } else {
    let x_1733 : f32 = u_xlat2.x;
    x_1728 = x_1733;
  }
  let x_1734 : f32 = x_1728;
  u_xlat2.x = x_1734;
  let x_1736 : vec3<f32> = vs_TEXCOORD7;
  let x_1739 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1741 : vec3<f32> = (x_1736 + -(x_1739));
  let x_1742 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
  let x_1744 : vec4<f32> = u_xlat6;
  let x_1746 : vec4<f32> = u_xlat6;
  u_xlat22.x = dot(vec3<f32>(x_1744.x, x_1744.y, x_1744.z), vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
  let x_1751 : f32 = u_xlat22.x;
  let x_1753 : f32 = x_91.x_MainLightShadowParams.z;
  let x_1756 : f32 = x_91.x_MainLightShadowParams.w;
  u_xlat22.x = ((x_1751 * x_1753) + x_1756);
  let x_1760 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_1760, 0.0f, 1.0f);
  let x_1765 : f32 = u_xlat2.x;
  u_xlat42.x = (-(x_1765) + 1.0f);
  let x_1770 : f32 = u_xlat22.x;
  let x_1772 : f32 = u_xlat42.x;
  let x_1775 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1770 * x_1772) + x_1775);
  let x_1784 : f32 = x_1782.x_MainLightCookieTextureFormat;
  u_xlatb22.x = !((x_1784 == -1.0f));
  let x_1788 : bool = u_xlatb22.x;
  if (x_1788) {
    let x_1791 : vec3<f32> = vs_TEXCOORD7;
    let x_1794 : vec4<f32> = x_1782.x_MainLightWorldToLight[1i];
    let x_1796 : vec2<f32> = (vec2<f32>(x_1791.y, x_1791.y) * vec2<f32>(x_1794.x, x_1794.y));
    let x_1797 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1796.x, x_1796.y, x_1797.z);
    let x_1800 : vec4<f32> = x_1782.x_MainLightWorldToLight[0i];
    let x_1802 : vec3<f32> = vs_TEXCOORD7;
    let x_1805 : vec3<f32> = u_xlat22;
    let x_1807 : vec2<f32> = ((vec2<f32>(x_1800.x, x_1800.y) * vec2<f32>(x_1802.x, x_1802.x)) + vec2<f32>(x_1805.x, x_1805.y));
    let x_1808 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1807.x, x_1807.y, x_1808.z);
    let x_1811 : vec4<f32> = x_1782.x_MainLightWorldToLight[2i];
    let x_1813 : vec3<f32> = vs_TEXCOORD7;
    let x_1816 : vec3<f32> = u_xlat22;
    let x_1818 : vec2<f32> = ((vec2<f32>(x_1811.x, x_1811.y) * vec2<f32>(x_1813.z, x_1813.z)) + vec2<f32>(x_1816.x, x_1816.y));
    let x_1819 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1818.x, x_1818.y, x_1819.z);
    let x_1821 : vec3<f32> = u_xlat22;
    let x_1824 : vec4<f32> = x_1782.x_MainLightWorldToLight[3i];
    let x_1826 : vec2<f32> = (vec2<f32>(x_1821.x, x_1821.y) + vec2<f32>(x_1824.x, x_1824.y));
    let x_1827 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1826.x, x_1826.y, x_1827.z);
    let x_1829 : vec3<f32> = u_xlat22;
    let x_1832 : vec2<f32> = ((vec2<f32>(x_1829.x, x_1829.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1833 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1832.x, x_1832.y, x_1833.z);
    let x_1840 : vec3<f32> = u_xlat22;
    let x_1843 : f32 = x_43.x_GlobalMipBias.x;
    let x_1844 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1840.x, x_1840.y), x_1843);
    u_xlat6 = x_1844;
    let x_1846 : f32 = x_1782.x_MainLightCookieTextureFormat;
    let x_1848 : f32 = x_1782.x_MainLightCookieTextureFormat;
    let x_1850 : f32 = x_1782.x_MainLightCookieTextureFormat;
    let x_1852 : f32 = x_1782.x_MainLightCookieTextureFormat;
    let x_1853 : vec4<f32> = vec4<f32>(x_1846, x_1848, x_1850, x_1852);
    let x_1860 : vec4<bool> = (vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1853.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb22 = vec2<bool>(x_1860.x, x_1860.y);
    let x_1863 : bool = u_xlatb22.y;
    if (x_1863) {
      let x_1868 : f32 = u_xlat6.w;
      x_1864 = x_1868;
    } else {
      let x_1871 : f32 = u_xlat6.x;
      x_1864 = x_1871;
    }
    let x_1872 : f32 = x_1864;
    u_xlat42.x = x_1872;
    let x_1875 : bool = u_xlatb22.x;
    if (x_1875) {
      let x_1879 : vec4<f32> = u_xlat6;
      x_1876 = vec3<f32>(x_1879.x, x_1879.y, x_1879.z);
    } else {
      let x_1882 : vec2<f32> = u_xlat42;
      x_1876 = vec3<f32>(x_1882.x, x_1882.x, x_1882.x);
    }
    let x_1884 : vec3<f32> = x_1876;
    let x_1885 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1891 : vec4<f32> = u_xlat6;
  let x_1894 : vec4<f32> = x_43.x_MainLightColor;
  let x_1896 : vec3<f32> = (vec3<f32>(x_1891.x, x_1891.y, x_1891.z) * vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1897 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
  let x_1899 : f32 = u_xlat44;
  let x_1901 : vec4<f32> = u_xlat6;
  let x_1903 : vec3<f32> = (vec3<f32>(x_1899, x_1899, x_1899) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1907 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1907;
  let x_1911 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1911;
  let x_1915 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1915;
  let x_1917 : vec4<f32> = u_xlat7;
  let x_1920 : vec3<f32> = u_xlat21;
  u_xlat22.x = dot(-(vec3<f32>(x_1917.x, x_1917.y, x_1917.z)), x_1920);
  let x_1924 : f32 = u_xlat22.x;
  let x_1926 : f32 = u_xlat22.x;
  u_xlat22.x = (x_1924 + x_1926);
  let x_1929 : vec3<f32> = u_xlat21;
  let x_1930 : vec3<f32> = u_xlat22;
  let x_1934 : vec4<f32> = u_xlat7;
  let x_1937 : vec3<f32> = ((x_1929 * -(vec3<f32>(x_1930.x, x_1930.x, x_1930.x))) + -(vec3<f32>(x_1934.x, x_1934.y, x_1934.z)));
  let x_1938 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1937.x, x_1937.y, x_1937.z, x_1938.w);
  let x_1940 : vec3<f32> = u_xlat21;
  let x_1941 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(x_1940, vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1946 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_1946, 0.0f, 1.0f);
  let x_1950 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_1950) + 1.0f);
  let x_1955 : f32 = u_xlat22.x;
  let x_1957 : f32 = u_xlat22.x;
  u_xlat22.x = (x_1955 * x_1957);
  let x_1961 : f32 = u_xlat22.x;
  let x_1963 : f32 = u_xlat22.x;
  u_xlat22.x = (x_1961 * x_1963);
  let x_1966 : f32 = u_xlat1;
  u_xlat42.x = ((-(x_1966) * 0.699999988f) + 1.700000048f);
  let x_1973 : f32 = u_xlat1;
  let x_1975 : f32 = u_xlat42.x;
  u_xlat1 = (x_1973 * x_1975);
  let x_1977 : f32 = u_xlat1;
  u_xlat1 = (x_1977 * 6.0f);
  let x_1988 : vec4<f32> = u_xlat8;
  let x_1990 : f32 = u_xlat1;
  let x_1991 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1988.x, x_1988.y, x_1988.z), x_1990);
  u_xlat8 = x_1991;
  let x_1993 : f32 = u_xlat8.w;
  u_xlat1 = (x_1993 + -1.0f);
  let x_2000 : f32 = x_1998.unity_SpecCube0_HDR.w;
  let x_2001 : f32 = u_xlat1;
  u_xlat1 = ((x_2000 * x_2001) + 1.0f);
  let x_2004 : f32 = u_xlat1;
  u_xlat1 = max(x_2004, 0.0f);
  let x_2006 : f32 = u_xlat1;
  u_xlat1 = log2(x_2006);
  let x_2008 : f32 = u_xlat1;
  let x_2010 : f32 = x_1998.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_2008 * x_2010);
  let x_2012 : f32 = u_xlat1;
  u_xlat1 = exp2(x_2012);
  let x_2014 : f32 = u_xlat1;
  let x_2016 : f32 = x_1998.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_2014 * x_2016);
  let x_2018 : vec4<f32> = u_xlat8;
  let x_2020 : f32 = u_xlat1;
  let x_2022 : vec3<f32> = (vec3<f32>(x_2018.x, x_2018.y, x_2018.z) * vec3<f32>(x_2020, x_2020, x_2020));
  let x_2023 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
  let x_2025 : f32 = u_xlat62;
  let x_2027 : f32 = u_xlat62;
  u_xlat42 = ((vec2<f32>(x_2025, x_2025) * vec2<f32>(x_2027, x_2027)) + vec2<f32>(-1.0f, 1.0f));
  let x_2033 : f32 = u_xlat42.y;
  u_xlat1 = (1.0f / x_2033);
  let x_2035 : vec4<f32> = u_xlat0;
  let x_2038 : f32 = u_xlat60;
  let x_2040 : vec3<f32> = (-(vec3<f32>(x_2035.x, x_2035.y, x_2035.z)) + vec3<f32>(x_2038, x_2038, x_2038));
  let x_2041 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2040.x, x_2040.y, x_2040.z, x_2041.w);
  let x_2043 : vec3<f32> = u_xlat22;
  let x_2045 : vec4<f32> = u_xlat9;
  let x_2048 : vec4<f32> = u_xlat0;
  let x_2050 : vec3<f32> = ((vec3<f32>(x_2043.x, x_2043.x, x_2043.x) * vec3<f32>(x_2045.x, x_2045.y, x_2045.z)) + vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
  let x_2051 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : f32 = u_xlat1;
  let x_2055 : vec4<f32> = u_xlat9;
  let x_2057 : vec3<f32> = (vec3<f32>(x_2053, x_2053, x_2053) * vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
  let x_2058 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
  let x_2060 : vec4<f32> = u_xlat8;
  let x_2062 : vec4<f32> = u_xlat9;
  let x_2064 : vec3<f32> = (vec3<f32>(x_2060.x, x_2060.y, x_2060.z) * vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
  let x_2065 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2065.w);
  let x_2067 : vec4<f32> = u_xlat3;
  let x_2069 : vec3<f32> = u_xlat5;
  let x_2071 : vec4<f32> = u_xlat8;
  let x_2073 : vec3<f32> = ((vec3<f32>(x_2067.x, x_2067.y, x_2067.z) * x_2069) + vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2074 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
  let x_2077 : f32 = u_xlat2.x;
  let x_2079 : f32 = x_1998.unity_LightData.z;
  u_xlat60 = (x_2077 * x_2079);
  let x_2081 : vec3<f32> = u_xlat21;
  let x_2083 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat1 = dot(x_2081, vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
  let x_2086 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2086, 0.0f, 1.0f);
  let x_2088 : f32 = u_xlat60;
  let x_2089 : f32 = u_xlat1;
  u_xlat60 = (x_2088 * x_2089);
  let x_2091 : f32 = u_xlat60;
  let x_2093 : vec4<f32> = u_xlat6;
  let x_2095 : vec3<f32> = (vec3<f32>(x_2091, x_2091, x_2091) * vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2096 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2095.x, x_2095.y, x_2096.z, x_2095.z);
  let x_2098 : vec4<f32> = u_xlat7;
  let x_2101 : vec4<f32> = x_43.x_MainLightPosition;
  let x_2103 : vec3<f32> = (vec3<f32>(x_2098.x, x_2098.y, x_2098.z) + vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
  let x_2104 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
  let x_2106 : vec4<f32> = u_xlat6;
  let x_2108 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
  let x_2111 : f32 = u_xlat60;
  u_xlat60 = max(x_2111, 1.17549435e-37f);
  let x_2114 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2114);
  let x_2116 : f32 = u_xlat60;
  let x_2118 : vec4<f32> = u_xlat6;
  let x_2120 : vec3<f32> = (vec3<f32>(x_2116, x_2116, x_2116) * vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
  let x_2121 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
  let x_2123 : vec3<f32> = u_xlat21;
  let x_2124 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(x_2123, vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2127, 0.0f, 1.0f);
  let x_2130 : vec4<f32> = x_43.x_MainLightPosition;
  let x_2132 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_2130.x, x_2130.y, x_2130.z), vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
  let x_2135 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2135, 0.0f, 1.0f);
  let x_2137 : f32 = u_xlat60;
  let x_2138 : f32 = u_xlat60;
  u_xlat60 = (x_2137 * x_2138);
  let x_2140 : f32 = u_xlat60;
  let x_2142 : f32 = u_xlat42.x;
  u_xlat60 = ((x_2140 * x_2142) + 1.000010014f);
  let x_2146 : f32 = u_xlat1;
  let x_2147 : f32 = u_xlat1;
  u_xlat1 = (x_2146 * x_2147);
  let x_2149 : f32 = u_xlat60;
  let x_2150 : f32 = u_xlat60;
  u_xlat60 = (x_2149 * x_2150);
  let x_2152 : f32 = u_xlat1;
  u_xlat1 = max(x_2152, 0.100000001f);
  let x_2155 : f32 = u_xlat60;
  let x_2156 : f32 = u_xlat1;
  u_xlat60 = (x_2155 * x_2156);
  let x_2158 : f32 = u_xlat63;
  let x_2159 : f32 = u_xlat60;
  u_xlat60 = (x_2158 * x_2159);
  let x_2161 : f32 = u_xlat24;
  let x_2162 : f32 = u_xlat60;
  u_xlat60 = (x_2161 / x_2162);
  let x_2164 : vec4<f32> = u_xlat0;
  let x_2166 : f32 = u_xlat60;
  let x_2169 : vec3<f32> = u_xlat5;
  let x_2170 : vec3<f32> = ((vec3<f32>(x_2164.x, x_2164.y, x_2164.z) * vec3<f32>(x_2166, x_2166, x_2166)) + x_2169);
  let x_2171 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
  let x_2173 : vec4<f32> = u_xlat2;
  let x_2175 : vec4<f32> = u_xlat6;
  let x_2177 : vec3<f32> = (vec3<f32>(x_2173.x, x_2173.y, x_2173.w) * vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
  let x_2178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2177.x, x_2177.y, x_2178.z, x_2177.z);
  let x_2181 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_2183 : f32 = x_1998.unity_LightData.y;
  u_xlat60 = min(x_2181, x_2183);
  let x_2186 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2186));
  let x_2191 : f32 = x_1782.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2193 : f32 = x_1782.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2195 : f32 = x_1782.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2197 : f32 = x_1782.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2198 : vec4<f32> = vec4<f32>(x_2191, x_2193, x_2195, x_2197);
  let x_2204 : vec4<bool> = (vec4<f32>(x_2198.x, x_2198.y, x_2198.z, x_2198.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2204.x, x_2204.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2215 : u32 = u_xlatu_loop_1;
    let x_2216 : u32 = u_xlatu60;
    if ((x_2215 < x_2216)) {
    } else {
      break;
    }
    let x_2219 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2219 >> 2u);
    let x_2222 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2222 & 3u));
    let x_2225 : u32 = u_xlatu64;
    let x_2228 : vec4<f32> = x_1998.unity_LightIndices[bitcast<i32>(x_2225)];
    let x_2238 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2243 : vec4<u32> = indexable[x_2238];
    u_xlat64 = dot(x_2228, bitcast<vec4<f32>>(x_2243));
    let x_2246 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2246));
    let x_2249 : vec3<f32> = vs_TEXCOORD7;
    let x_2261 : u32 = u_xlatu64;
    let x_2264 : vec4<f32> = x_2260.x_AdditionalLightsPosition[bitcast<i32>(x_2261)];
    let x_2267 : u32 = u_xlatu64;
    let x_2270 : vec4<f32> = x_2260.x_AdditionalLightsPosition[bitcast<i32>(x_2267)];
    let x_2272 : vec3<f32> = ((-(x_2249) * vec3<f32>(x_2264.w, x_2264.w, x_2264.w)) + vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
    let x_2273 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
    let x_2275 : vec4<f32> = u_xlat9;
    let x_2277 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2275.x, x_2275.y, x_2275.z), vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
    let x_2280 : f32 = u_xlat65;
    u_xlat65 = max(x_2280, 6.10351562e-05f);
    let x_2283 : f32 = u_xlat65;
    u_xlat46.x = inverseSqrt(x_2283);
    let x_2286 : vec2<f32> = u_xlat46;
    let x_2288 : vec4<f32> = u_xlat9;
    let x_2290 : vec3<f32> = (vec3<f32>(x_2286.x, x_2286.x, x_2286.x) * vec3<f32>(x_2288.x, x_2288.y, x_2288.z));
    let x_2291 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2291.w);
    let x_2294 : f32 = u_xlat65;
    u_xlat66 = (1.0f / x_2294);
    let x_2296 : f32 = u_xlat65;
    let x_2297 : u32 = u_xlatu64;
    let x_2300 : f32 = x_2260.x_AdditionalLightsAttenuation[bitcast<i32>(x_2297)].x;
    u_xlat65 = (x_2296 * x_2300);
    let x_2302 : f32 = u_xlat65;
    let x_2304 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2302) * x_2304) + 1.0f);
    let x_2307 : f32 = u_xlat65;
    u_xlat65 = max(x_2307, 0.0f);
    let x_2309 : f32 = u_xlat65;
    let x_2310 : f32 = u_xlat65;
    u_xlat65 = (x_2309 * x_2310);
    let x_2312 : f32 = u_xlat65;
    let x_2313 : f32 = u_xlat66;
    u_xlat65 = (x_2312 * x_2313);
    let x_2315 : u32 = u_xlatu64;
    let x_2318 : vec4<f32> = x_2260.x_AdditionalLightsSpotDir[bitcast<i32>(x_2315)];
    let x_2320 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2318.x, x_2318.y, x_2318.z), vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
    let x_2323 : f32 = u_xlat66;
    let x_2324 : u32 = u_xlatu64;
    let x_2327 : f32 = x_2260.x_AdditionalLightsAttenuation[bitcast<i32>(x_2324)].z;
    let x_2329 : u32 = u_xlatu64;
    let x_2332 : f32 = x_2260.x_AdditionalLightsAttenuation[bitcast<i32>(x_2329)].w;
    u_xlat66 = ((x_2323 * x_2327) + x_2332);
    let x_2334 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2334, 0.0f, 1.0f);
    let x_2336 : f32 = u_xlat66;
    let x_2337 : f32 = u_xlat66;
    u_xlat66 = (x_2336 * x_2337);
    let x_2339 : f32 = u_xlat65;
    let x_2340 : f32 = u_xlat66;
    u_xlat65 = (x_2339 * x_2340);
    let x_2343 : u32 = u_xlatu64;
    u_xlatu66 = (x_2343 >> 5u);
    let x_2346 : u32 = u_xlatu64;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2346) & 31i)));
    let x_2352 : i32 = u_xlati67;
    let x_2354 : u32 = u_xlatu66;
    let x_2357 : f32 = x_1782.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2354)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2352) & bitcast<u32>(x_2357)));
    let x_2361 : i32 = u_xlati66;
    if ((x_2361 != 0i)) {
      let x_2371 : u32 = u_xlatu64;
      let x_2374 : f32 = x_2370.x_AdditionalLightsLightTypes[bitcast<i32>(x_2371)].el;
      u_xlati66 = i32(x_2374);
      let x_2376 : i32 = u_xlati66;
      u_xlati67 = select(1i, 0i, (x_2376 != 0i));
      let x_2380 : u32 = u_xlatu64;
      u_xlati68 = (bitcast<i32>(x_2380) << bitcast<u32>(2i));
      let x_2383 : i32 = u_xlati67;
      if ((x_2383 != 0i)) {
        let x_2387 : vec3<f32> = vs_TEXCOORD7;
        let x_2389 : i32 = u_xlati68;
        let x_2392 : i32 = u_xlati68;
        let x_2396 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2389 + 1i) / 4i)][((x_2392 + 1i) % 4i)];
        let x_2398 : vec3<f32> = (vec3<f32>(x_2387.y, x_2387.y, x_2387.y) * vec3<f32>(x_2396.x, x_2396.y, x_2396.w));
        let x_2399 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
        let x_2401 : i32 = u_xlati68;
        let x_2403 : i32 = u_xlati68;
        let x_2406 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[(x_2401 / 4i)][(x_2403 % 4i)];
        let x_2408 : vec3<f32> = vs_TEXCOORD7;
        let x_2411 : vec4<f32> = u_xlat11;
        let x_2413 : vec3<f32> = ((vec3<f32>(x_2406.x, x_2406.y, x_2406.w) * vec3<f32>(x_2408.x, x_2408.x, x_2408.x)) + vec3<f32>(x_2411.x, x_2411.y, x_2411.z));
        let x_2414 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
        let x_2416 : i32 = u_xlati68;
        let x_2419 : i32 = u_xlati68;
        let x_2423 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2416 + 2i) / 4i)][((x_2419 + 2i) % 4i)];
        let x_2425 : vec3<f32> = vs_TEXCOORD7;
        let x_2428 : vec4<f32> = u_xlat11;
        let x_2430 : vec3<f32> = ((vec3<f32>(x_2423.x, x_2423.y, x_2423.w) * vec3<f32>(x_2425.z, x_2425.z, x_2425.z)) + vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
        let x_2431 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
        let x_2433 : vec4<f32> = u_xlat11;
        let x_2435 : i32 = u_xlati68;
        let x_2438 : i32 = u_xlati68;
        let x_2442 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2435 + 3i) / 4i)][((x_2438 + 3i) % 4i)];
        let x_2444 : vec3<f32> = (vec3<f32>(x_2433.x, x_2433.y, x_2433.z) + vec3<f32>(x_2442.x, x_2442.y, x_2442.w));
        let x_2445 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
        let x_2447 : vec4<f32> = u_xlat11;
        let x_2449 : vec4<f32> = u_xlat11;
        let x_2451 : vec2<f32> = (vec2<f32>(x_2447.x, x_2447.y) / vec2<f32>(x_2449.z, x_2449.z));
        let x_2452 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2451.x, x_2451.y, x_2452.z, x_2452.w);
        let x_2454 : vec4<f32> = u_xlat11;
        let x_2457 : vec2<f32> = ((vec2<f32>(x_2454.x, x_2454.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2458 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2457.x, x_2457.y, x_2458.z, x_2458.w);
        let x_2460 : vec4<f32> = u_xlat11;
        let x_2464 : vec2<f32> = clamp(vec2<f32>(x_2460.x, x_2460.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2465 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2464.x, x_2464.y, x_2465.z, x_2465.w);
        let x_2467 : u32 = u_xlatu64;
        let x_2470 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2467)];
        let x_2472 : vec4<f32> = u_xlat11;
        let x_2475 : u32 = u_xlatu64;
        let x_2478 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2475)];
        let x_2480 : vec2<f32> = ((vec2<f32>(x_2470.x, x_2470.y) * vec2<f32>(x_2472.x, x_2472.y)) + vec2<f32>(x_2478.z, x_2478.w));
        let x_2481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2480.x, x_2480.y, x_2481.z, x_2481.w);
      } else {
        let x_2485 : i32 = u_xlati66;
        u_xlatb66 = (x_2485 == 1i);
        let x_2487 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2487);
        let x_2489 : i32 = u_xlati66;
        if ((x_2489 != 0i)) {
          let x_2494 : vec3<f32> = vs_TEXCOORD7;
          let x_2496 : i32 = u_xlati68;
          let x_2499 : i32 = u_xlati68;
          let x_2503 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2496 + 1i) / 4i)][((x_2499 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2494.y, x_2494.y) * vec2<f32>(x_2503.x, x_2503.y));
          let x_2506 : i32 = u_xlati68;
          let x_2508 : i32 = u_xlati68;
          let x_2511 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[(x_2506 / 4i)][(x_2508 % 4i)];
          let x_2513 : vec3<f32> = vs_TEXCOORD7;
          let x_2516 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2511.x, x_2511.y) * vec2<f32>(x_2513.x, x_2513.x)) + x_2516);
          let x_2518 : i32 = u_xlati68;
          let x_2521 : i32 = u_xlati68;
          let x_2525 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2518 + 2i) / 4i)][((x_2521 + 2i) % 4i)];
          let x_2527 : vec3<f32> = vs_TEXCOORD7;
          let x_2530 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2525.x, x_2525.y) * vec2<f32>(x_2527.z, x_2527.z)) + x_2530);
          let x_2532 : vec2<f32> = u_xlat51;
          let x_2533 : i32 = u_xlati68;
          let x_2536 : i32 = u_xlati68;
          let x_2540 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2533 + 3i) / 4i)][((x_2536 + 3i) % 4i)];
          u_xlat51 = (x_2532 + vec2<f32>(x_2540.x, x_2540.y));
          let x_2543 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2543 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2546 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2546);
          let x_2548 : u32 = u_xlatu64;
          let x_2551 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2548)];
          let x_2553 : vec2<f32> = u_xlat51;
          let x_2555 : u32 = u_xlatu64;
          let x_2558 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2555)];
          let x_2560 : vec2<f32> = ((vec2<f32>(x_2551.x, x_2551.y) * x_2553) + vec2<f32>(x_2558.z, x_2558.w));
          let x_2561 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2560.x, x_2560.y, x_2561.z, x_2561.w);
        } else {
          let x_2564 : vec3<f32> = vs_TEXCOORD7;
          let x_2566 : i32 = u_xlati68;
          let x_2569 : i32 = u_xlati68;
          let x_2573 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2566 + 1i) / 4i)][((x_2569 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2564.y, x_2564.y, x_2564.y, x_2564.y) * x_2573);
          let x_2575 : i32 = u_xlati68;
          let x_2577 : i32 = u_xlati68;
          let x_2580 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[(x_2575 / 4i)][(x_2577 % 4i)];
          let x_2581 : vec3<f32> = vs_TEXCOORD7;
          let x_2584 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2580 * vec4<f32>(x_2581.x, x_2581.x, x_2581.x, x_2581.x)) + x_2584);
          let x_2586 : i32 = u_xlati68;
          let x_2589 : i32 = u_xlati68;
          let x_2593 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2586 + 2i) / 4i)][((x_2589 + 2i) % 4i)];
          let x_2594 : vec3<f32> = vs_TEXCOORD7;
          let x_2597 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2593 * vec4<f32>(x_2594.z, x_2594.z, x_2594.z, x_2594.z)) + x_2597);
          let x_2599 : vec4<f32> = u_xlat12;
          let x_2600 : i32 = u_xlati68;
          let x_2603 : i32 = u_xlati68;
          let x_2607 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2600 + 3i) / 4i)][((x_2603 + 3i) % 4i)];
          u_xlat12 = (x_2599 + x_2607);
          let x_2609 : vec4<f32> = u_xlat12;
          let x_2611 : vec4<f32> = u_xlat12;
          let x_2613 : vec3<f32> = (vec3<f32>(x_2609.x, x_2609.y, x_2609.z) / vec3<f32>(x_2611.w, x_2611.w, x_2611.w));
          let x_2614 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2614.w);
          let x_2616 : vec4<f32> = u_xlat12;
          let x_2618 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2616.x, x_2616.y, x_2616.z), vec3<f32>(x_2618.x, x_2618.y, x_2618.z));
          let x_2621 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2621);
          let x_2623 : f32 = u_xlat66;
          let x_2625 : vec4<f32> = u_xlat12;
          let x_2627 : vec3<f32> = (vec3<f32>(x_2623, x_2623, x_2623) * vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
          let x_2628 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
          let x_2630 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2630.x, x_2630.y, x_2630.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2635 : f32 = u_xlat66;
          u_xlat66 = max(x_2635, 0.000001f);
          let x_2638 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2638);
          let x_2640 : f32 = u_xlat66;
          let x_2642 : vec4<f32> = u_xlat12;
          let x_2644 : vec3<f32> = (vec3<f32>(x_2640, x_2640, x_2640) * vec3<f32>(x_2642.z, x_2642.x, x_2642.y));
          let x_2645 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
          let x_2648 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2648);
          let x_2652 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2652, 0.0f, 1.0f);
          let x_2656 : vec4<f32> = u_xlat13;
          let x_2659 : vec4<bool> = (vec4<f32>(x_2656.y, x_2656.z, x_2656.y, x_2656.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2659.x, x_2659.y);
          let x_2662 : bool = u_xlatb51.x;
          if (x_2662) {
            let x_2667 : f32 = u_xlat13.x;
            x_2663 = x_2667;
          } else {
            let x_2670 : f32 = u_xlat13.x;
            x_2663 = -(x_2670);
          }
          let x_2672 : f32 = x_2663;
          u_xlat51.x = x_2672;
          let x_2675 : bool = u_xlatb51.y;
          if (x_2675) {
            let x_2680 : f32 = u_xlat13.x;
            x_2676 = x_2680;
          } else {
            let x_2683 : f32 = u_xlat13.x;
            x_2676 = -(x_2683);
          }
          let x_2685 : f32 = x_2676;
          u_xlat51.y = x_2685;
          let x_2687 : vec4<f32> = u_xlat12;
          let x_2689 : f32 = u_xlat66;
          let x_2692 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2687.x, x_2687.y) * vec2<f32>(x_2689, x_2689)) + x_2692);
          let x_2694 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2694 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2697 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_2697, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2701 : u32 = u_xlatu64;
          let x_2704 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2701)];
          let x_2706 : vec2<f32> = u_xlat51;
          let x_2708 : u32 = u_xlatu64;
          let x_2711 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2708)];
          let x_2713 : vec2<f32> = ((vec2<f32>(x_2704.x, x_2704.y) * x_2706) + vec2<f32>(x_2711.z, x_2711.w));
          let x_2714 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2713.x, x_2713.y, x_2714.z, x_2714.w);
        }
      }
      let x_2721 : vec4<f32> = u_xlat11;
      let x_2724 : f32 = x_43.x_GlobalMipBias.x;
      let x_2725 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2721.x, x_2721.y), x_2724);
      u_xlat11 = x_2725;
      let x_2727 : bool = u_xlatb6.y;
      if (x_2727) {
        let x_2732 : f32 = u_xlat11.w;
        x_2728 = x_2732;
      } else {
        let x_2735 : f32 = u_xlat11.x;
        x_2728 = x_2735;
      }
      let x_2736 : f32 = x_2728;
      u_xlat66 = x_2736;
      let x_2738 : bool = u_xlatb6.x;
      if (x_2738) {
        let x_2742 : vec4<f32> = u_xlat11;
        x_2739 = vec3<f32>(x_2742.x, x_2742.y, x_2742.z);
      } else {
        let x_2745 : f32 = u_xlat66;
        x_2739 = vec3<f32>(x_2745, x_2745, x_2745);
      }
      let x_2747 : vec3<f32> = x_2739;
      let x_2748 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2747.x, x_2747.y, x_2747.z, x_2748.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2754 : vec4<f32> = u_xlat11;
    let x_2756 : u32 = u_xlatu64;
    let x_2759 : vec4<f32> = x_2260.x_AdditionalLightsColor[bitcast<i32>(x_2756)];
    let x_2761 : vec3<f32> = (vec3<f32>(x_2754.x, x_2754.y, x_2754.z) * vec3<f32>(x_2759.x, x_2759.y, x_2759.z));
    let x_2762 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2761.x, x_2761.y, x_2761.z, x_2762.w);
    let x_2764 : f32 = u_xlat44;
    let x_2766 : vec4<f32> = u_xlat11;
    let x_2768 : vec3<f32> = (vec3<f32>(x_2764, x_2764, x_2764) * vec3<f32>(x_2766.x, x_2766.y, x_2766.z));
    let x_2769 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2768.x, x_2768.y, x_2768.z, x_2769.w);
    let x_2771 : vec3<f32> = u_xlat21;
    let x_2772 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(x_2771, vec3<f32>(x_2772.x, x_2772.y, x_2772.z));
    let x_2775 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2775, 0.0f, 1.0f);
    let x_2777 : f32 = u_xlat64;
    let x_2778 : f32 = u_xlat65;
    u_xlat64 = (x_2777 * x_2778);
    let x_2780 : f32 = u_xlat64;
    let x_2782 : vec4<f32> = u_xlat11;
    let x_2784 : vec3<f32> = (vec3<f32>(x_2780, x_2780, x_2780) * vec3<f32>(x_2782.x, x_2782.y, x_2782.z));
    let x_2785 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2785.w);
    let x_2787 : vec4<f32> = u_xlat9;
    let x_2789 : vec2<f32> = u_xlat46;
    let x_2792 : vec4<f32> = u_xlat7;
    let x_2794 : vec3<f32> = ((vec3<f32>(x_2787.x, x_2787.y, x_2787.z) * vec3<f32>(x_2789.x, x_2789.x, x_2789.x)) + vec3<f32>(x_2792.x, x_2792.y, x_2792.z));
    let x_2795 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2795.w);
    let x_2797 : vec4<f32> = u_xlat9;
    let x_2799 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2797.x, x_2797.y, x_2797.z), vec3<f32>(x_2799.x, x_2799.y, x_2799.z));
    let x_2802 : f32 = u_xlat64;
    u_xlat64 = max(x_2802, 1.17549435e-37f);
    let x_2804 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2804);
    let x_2806 : f32 = u_xlat64;
    let x_2808 : vec4<f32> = u_xlat9;
    let x_2810 : vec3<f32> = (vec3<f32>(x_2806, x_2806, x_2806) * vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
    let x_2811 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2811.w);
    let x_2813 : vec3<f32> = u_xlat21;
    let x_2814 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(x_2813, vec3<f32>(x_2814.x, x_2814.y, x_2814.z));
    let x_2817 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2817, 0.0f, 1.0f);
    let x_2819 : vec4<f32> = u_xlat10;
    let x_2821 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2819.x, x_2819.y, x_2819.z), vec3<f32>(x_2821.x, x_2821.y, x_2821.z));
    let x_2824 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2824, 0.0f, 1.0f);
    let x_2826 : f32 = u_xlat64;
    let x_2827 : f32 = u_xlat64;
    u_xlat64 = (x_2826 * x_2827);
    let x_2829 : f32 = u_xlat64;
    let x_2831 : f32 = u_xlat42.x;
    u_xlat64 = ((x_2829 * x_2831) + 1.000010014f);
    let x_2834 : f32 = u_xlat65;
    let x_2835 : f32 = u_xlat65;
    u_xlat65 = (x_2834 * x_2835);
    let x_2837 : f32 = u_xlat64;
    let x_2838 : f32 = u_xlat64;
    u_xlat64 = (x_2837 * x_2838);
    let x_2840 : f32 = u_xlat65;
    u_xlat65 = max(x_2840, 0.100000001f);
    let x_2842 : f32 = u_xlat64;
    let x_2843 : f32 = u_xlat65;
    u_xlat64 = (x_2842 * x_2843);
    let x_2845 : f32 = u_xlat63;
    let x_2846 : f32 = u_xlat64;
    u_xlat64 = (x_2845 * x_2846);
    let x_2848 : f32 = u_xlat24;
    let x_2849 : f32 = u_xlat64;
    u_xlat64 = (x_2848 / x_2849);
    let x_2851 : vec4<f32> = u_xlat0;
    let x_2853 : f32 = u_xlat64;
    let x_2856 : vec3<f32> = u_xlat5;
    let x_2857 : vec3<f32> = ((vec3<f32>(x_2851.x, x_2851.y, x_2851.z) * vec3<f32>(x_2853, x_2853, x_2853)) + x_2856);
    let x_2858 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2857.x, x_2857.y, x_2857.z, x_2858.w);
    let x_2860 : vec4<f32> = u_xlat9;
    let x_2862 : vec4<f32> = u_xlat11;
    let x_2865 : vec4<f32> = u_xlat8;
    let x_2867 : vec3<f32> = ((vec3<f32>(x_2860.x, x_2860.y, x_2860.z) * vec3<f32>(x_2862.x, x_2862.y, x_2862.z)) + vec3<f32>(x_2865.x, x_2865.y, x_2865.z));
    let x_2868 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2867.x, x_2867.y, x_2867.z, x_2868.w);

    continuing {
      let x_2870 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2870 + bitcast<u32>(1i));
    }
  }
  let x_2872 : vec4<f32> = u_xlat3;
  let x_2874 : vec3<f32> = u_xlat4;
  let x_2877 : vec4<f32> = u_xlat2;
  let x_2879 : vec3<f32> = ((vec3<f32>(x_2872.x, x_2872.y, x_2872.z) * vec3<f32>(x_2874.x, x_2874.x, x_2874.x)) + vec3<f32>(x_2877.x, x_2877.y, x_2877.w));
  let x_2880 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
  let x_2884 : vec4<f32> = u_xlat8;
  let x_2886 : vec4<f32> = u_xlat0;
  let x_2888 : vec3<f32> = (vec3<f32>(x_2884.x, x_2884.y, x_2884.z) + vec3<f32>(x_2886.x, x_2886.y, x_2886.z));
  let x_2889 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2888.x, x_2888.y, x_2888.z, x_2889.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

