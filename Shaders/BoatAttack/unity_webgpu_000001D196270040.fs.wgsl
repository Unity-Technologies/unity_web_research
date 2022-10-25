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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_159 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1813 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2015 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2276 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2387 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb22 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat23 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat63 : f32;
  var u_xlat26 : f32;
  var u_xlatb47 : vec2<bool>;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlatb68 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat68 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec5 : vec3<f32>;
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
  var u_xlatb23 : vec2<bool>;
  var u_xlatb44 : bool;
  var x_1760 : f32;
  var u_xlat44 : vec2<f32>;
  var x_1895 : f32;
  var x_1907 : vec3<f32>;
  var u_xlatu63 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlatu72 : u32;
  var u_xlati10 : i32;
  var u_xlati72 : i32;
  var u_xlati31 : i32;
  var u_xlatb72 : bool;
  var u_xlatb31 : vec3<bool>;
  var u_xlat31 : vec3<f32>;
  var x_2702 : f32;
  var x_2715 : f32;
  var x_2777 : f32;
  var x_2788 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb22 = (x_70 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD7;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_82 : vec3<f32> = (-(x_76) + x_81);
  let x_83 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat43;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb22;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb22;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb22;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_137 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.z = x_138;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  let x_143 : vec3<f32> = vs_TEXCOORD3;
  u_xlat22.x = dot(x_142, x_143);
  let x_147 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_147);
  let x_150 : vec3<f32> = u_xlat22;
  let x_152 : vec3<f32> = vs_TEXCOORD3;
  u_xlat22 = (vec3<f32>(x_150.x, x_150.x, x_150.x) * x_152);
  let x_154 : vec3<f32> = vs_TEXCOORD7;
  let x_162 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_165 : vec3<f32> = (x_154 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD7;
  let x_171 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_169 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD7;
  let x_181 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_186 : vec3<f32> = vs_TEXCOORD7;
  let x_189 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : vec4<f32> = u_xlat4;
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec3<f32> = u_xlat5;
  let x_206 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_205, x_206);
  let x_209 : vec3<f32> = u_xlat6;
  let x_210 : vec3<f32> = u_xlat6;
  u_xlat2.w = dot(x_209, x_210);
  let x_216 : vec4<f32> = u_xlat2;
  let x_219 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_216 < x_219);
  let x_222 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_238);
  let x_244 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_244);
  let x_248 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_248);
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_253.y, x_253.z, x_253.w));
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat2;
  let x_261 : vec3<f32> = max(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_272 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_272) + 4.0f);
  let x_279 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_279);
  let x_283 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_283) << bitcast<u32>(2i));
  let x_287 : vec3<f32> = vs_TEXCOORD7;
  let x_289 : i32 = u_xlati2;
  let x_292 : i32 = u_xlati2;
  let x_296 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_289 + 1i) / 4i)][((x_292 + 1i) % 4i)];
  u_xlat23 = (vec3<f32>(x_287.y, x_287.y, x_287.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : i32 = u_xlati2;
  let x_301 : i32 = u_xlati2;
  let x_304 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_299 / 4i)][(x_301 % 4i)];
  let x_306 : vec3<f32> = vs_TEXCOORD7;
  let x_309 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + x_309);
  let x_311 : i32 = u_xlati2;
  let x_314 : i32 = u_xlati2;
  let x_318 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_311 + 2i) / 4i)][((x_314 + 2i) % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD7;
  let x_323 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + x_323);
  let x_325 : vec3<f32> = u_xlat23;
  let x_326 : i32 = u_xlati2;
  let x_329 : i32 = u_xlati2;
  let x_333 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_326 + 3i) / 4i)][((x_329 + 3i) % 4i)];
  let x_335 : vec3<f32> = (x_325 + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_343 : vec4<f32> = vs_TEXCOORD0;
  let x_346 : f32 = x_44.x_GlobalMipBias.x;
  let x_347 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_343.z, x_343.w), x_346);
  u_xlat4 = x_347;
  let x_352 : vec4<f32> = vs_TEXCOORD0;
  let x_355 : f32 = x_44.x_GlobalMipBias.x;
  let x_356 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_352.z, x_352.w), x_355);
  u_xlat5 = vec3<f32>(x_356.x, x_356.y, x_356.z);
  let x_358 : vec4<f32> = u_xlat4;
  let x_362 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : vec3<f32> = u_xlat22;
  let x_367 : vec4<f32> = u_xlat4;
  u_xlat65 = dot(x_366, vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : f32 = u_xlat65;
  u_xlat65 = (x_370 + 0.5f);
  let x_373 : f32 = u_xlat65;
  let x_375 : vec3<f32> = u_xlat5;
  let x_376 : vec3<f32> = (vec3<f32>(x_373, x_373, x_373) * x_375);
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat4.w;
  u_xlat65 = max(x_380, 0.0001f);
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : f32 = u_xlat65;
  let x_387 : vec3<f32> = (vec3<f32>(x_383.x, x_383.y, x_383.z) / vec3<f32>(x_385, x_385, x_385));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_392 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_393 : vec2<f32> = vec2<f32>(x_392.x, x_392.y);
  let x_397 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_393.x, x_393.y));
  let x_398 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_397.x, x_397.y, x_398.z);
  let x_400 : vec3<f32> = u_xlat5;
  let x_402 : vec4<f32> = hlslcc_FragCoord;
  let x_404 : vec2<f32> = (vec2<f32>(x_400.x, x_400.y) * vec2<f32>(x_402.x, x_402.y));
  let x_405 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_404.x, x_404.y, x_405.z);
  let x_408 : f32 = u_xlat5.y;
  let x_411 : f32 = x_44.x_ScaleBiasRt.x;
  let x_414 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_408 * x_411) + x_414);
  let x_416 : f32 = u_xlat65;
  u_xlat5.z = (-(x_416) + 1.0f);
  let x_420 : f32 = u_xlat1;
  u_xlat65 = ((-(x_420) * 0.959999979f) + 0.959999979f);
  let x_426 : f32 = u_xlat65;
  u_xlat66 = (-(x_426) + 1.0f);
  let x_429 : vec4<f32> = u_xlat0;
  let x_431 : f32 = u_xlat65;
  u_xlat6 = (vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431, x_431, x_431));
  let x_434 : vec4<f32> = u_xlat0;
  let x_438 : vec3<f32> = (vec3<f32>(x_434.x, x_434.y, x_434.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : f32 = u_xlat1;
  let x_443 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = ((vec3<f32>(x_441, x_441, x_441) * vec3<f32>(x_443.x, x_443.y, x_443.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_452) + 1.0f);
  let x_455 : f32 = u_xlat1;
  let x_456 : f32 = u_xlat1;
  u_xlat65 = (x_455 * x_456);
  let x_458 : f32 = u_xlat65;
  u_xlat65 = max(x_458, 0.0078125f);
  let x_462 : f32 = u_xlat65;
  let x_463 : f32 = u_xlat65;
  u_xlat67 = (x_462 * x_463);
  let x_467 : f32 = u_xlat0.w;
  let x_468 : f32 = u_xlat66;
  u_xlat63 = (x_467 + x_468);
  let x_470 : f32 = u_xlat63;
  u_xlat63 = clamp(x_470, 0.0f, 1.0f);
  let x_472 : f32 = u_xlat65;
  u_xlat66 = ((x_472 * 4.0f) + 2.0f);
  let x_480 : vec3<f32> = u_xlat5;
  let x_483 : f32 = x_44.x_GlobalMipBias.x;
  let x_484 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_480.x, x_480.z), x_483);
  u_xlat5.x = x_484.x;
  let x_489 : f32 = u_xlat5.x;
  u_xlat26 = (x_489 + -1.0f);
  let x_492 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_493 : f32 = u_xlat26;
  u_xlat26 = ((x_492 * x_493) + 1.0f);
  let x_497 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_497, 1.0f);
  let x_504 : f32 = x_159.x_MainLightShadowParams.y;
  u_xlatb47.x = (0.0f < x_504);
  let x_508 : bool = u_xlatb47.x;
  if (x_508) {
    let x_512 : f32 = x_159.x_MainLightShadowParams.y;
    u_xlatb47.x = (x_512 == 1.0f);
    let x_516 : bool = u_xlatb47.x;
    if (x_516) {
      let x_520 : vec4<f32> = u_xlat2;
      let x_523 : vec4<f32> = x_159.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y) + x_523);
      let x_526 : vec4<f32> = u_xlat7;
      let x_527 : vec2<f32> = vec2<f32>(x_526.x, x_526.y);
      let x_529 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_527.x, x_527.y, x_529);
      let x_542 : vec3<f32> = txVec0;
      let x_544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_542.xy, x_542.z);
      u_xlat8.x = x_544;
      let x_547 : vec4<f32> = u_xlat7;
      let x_548 : vec2<f32> = vec2<f32>(x_547.z, x_547.w);
      let x_550 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_548.x, x_548.y, x_550);
      let x_557 : vec3<f32> = txVec1;
      let x_559 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_557.xy, x_557.z);
      u_xlat8.y = x_559;
      let x_561 : vec4<f32> = u_xlat2;
      let x_564 : vec4<f32> = x_159.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_561.x, x_561.y, x_561.x, x_561.y) + x_564);
      let x_567 : vec4<f32> = u_xlat7;
      let x_568 : vec2<f32> = vec2<f32>(x_567.x, x_567.y);
      let x_570 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_568.x, x_568.y, x_570);
      let x_577 : vec3<f32> = txVec2;
      let x_579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_577.xy, x_577.z);
      u_xlat8.z = x_579;
      let x_582 : vec4<f32> = u_xlat7;
      let x_583 : vec2<f32> = vec2<f32>(x_582.z, x_582.w);
      let x_585 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_583.x, x_583.y, x_585);
      let x_592 : vec3<f32> = txVec3;
      let x_594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_592.xy, x_592.z);
      u_xlat8.w = x_594;
      let x_597 : vec4<f32> = u_xlat8;
      u_xlat47 = dot(x_597, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_604 : f32 = x_159.x_MainLightShadowParams.y;
      u_xlatb68 = (x_604 == 2.0f);
      let x_606 : bool = u_xlatb68;
      if (x_606) {
        let x_609 : vec4<f32> = u_xlat2;
        let x_612 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_616 : vec2<f32> = ((vec2<f32>(x_609.x, x_609.y) * vec2<f32>(x_612.z, x_612.w)) + vec2<f32>(0.5f, 0.5f));
        let x_617 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat7;
        let x_621 : vec2<f32> = floor(vec2<f32>(x_619.x, x_619.y));
        let x_622 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
        let x_626 : vec4<f32> = u_xlat2;
        let x_629 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_632 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_626.x, x_626.y) * vec2<f32>(x_629.z, x_629.w)) + -(vec2<f32>(x_632.x, x_632.y)));
        let x_636 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_636.x, x_636.x, x_636.y, x_636.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_641 : vec4<f32> = u_xlat8;
        let x_643 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_641.x, x_641.x, x_641.z, x_641.z) * vec4<f32>(x_643.x, x_643.x, x_643.z, x_643.z));
        let x_646 : vec4<f32> = u_xlat9;
        let x_650 : vec2<f32> = (vec2<f32>(x_646.y, x_646.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_651 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_650.x, x_651.y, x_650.y, x_651.w);
        let x_653 : vec4<f32> = u_xlat9;
        let x_656 : vec2<f32> = u_xlat49;
        let x_658 : vec2<f32> = ((vec2<f32>(x_653.x, x_653.z) * vec2<f32>(0.5f, 0.5f)) + -(x_656));
        let x_659 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
        let x_662 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_662) + vec2<f32>(1.0f, 1.0f));
        let x_666 : vec2<f32> = u_xlat49;
        let x_668 : vec2<f32> = min(x_666, vec2<f32>(0.0f, 0.0f));
        let x_669 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat10;
        let x_674 : vec4<f32> = u_xlat10;
        let x_677 : vec2<f32> = u_xlat51;
        let x_678 : vec2<f32> = ((-(vec2<f32>(x_671.x, x_671.y)) * vec2<f32>(x_674.x, x_674.y)) + x_677);
        let x_679 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
        let x_681 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_681, vec2<f32>(0.0f, 0.0f));
        let x_683 : vec2<f32> = u_xlat49;
        let x_685 : vec2<f32> = u_xlat49;
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_683) * x_685) + vec2<f32>(x_687.y, x_687.w));
        let x_690 : vec4<f32> = u_xlat10;
        let x_692 : vec2<f32> = (vec2<f32>(x_690.x, x_690.y) + vec2<f32>(1.0f, 1.0f));
        let x_693 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_695 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_695 + vec2<f32>(1.0f, 1.0f));
        let x_698 : vec4<f32> = u_xlat9;
        let x_702 : vec2<f32> = (vec2<f32>(x_698.x, x_698.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_703 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_705 : vec2<f32> = u_xlat51;
        let x_706 : vec2<f32> = (x_705 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_707 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_707.w);
        let x_709 : vec4<f32> = u_xlat10;
        let x_711 : vec2<f32> = (vec2<f32>(x_709.x, x_709.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_712 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
        let x_715 : vec2<f32> = u_xlat49;
        let x_716 : vec2<f32> = (x_715 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_717 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
        let x_719 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_719.y, x_719.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_723 : f32 = u_xlat10.x;
        u_xlat11.z = x_723;
        let x_726 : f32 = u_xlat49.x;
        u_xlat11.w = x_726;
        let x_729 : f32 = u_xlat12.x;
        u_xlat9.z = x_729;
        let x_732 : f32 = u_xlat8.x;
        u_xlat9.w = x_732;
        let x_735 : vec4<f32> = u_xlat9;
        let x_737 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_735.z, x_735.w, x_735.x, x_735.z) + vec4<f32>(x_737.z, x_737.w, x_737.x, x_737.z));
        let x_741 : f32 = u_xlat11.y;
        u_xlat10.z = x_741;
        let x_744 : f32 = u_xlat49.y;
        u_xlat10.w = x_744;
        let x_747 : f32 = u_xlat9.y;
        u_xlat12.z = x_747;
        let x_750 : f32 = u_xlat8.z;
        u_xlat12.w = x_750;
        let x_752 : vec4<f32> = u_xlat10;
        let x_754 : vec4<f32> = u_xlat12;
        let x_756 : vec3<f32> = (vec3<f32>(x_752.z, x_752.y, x_752.w) + vec3<f32>(x_754.z, x_754.y, x_754.w));
        let x_757 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
        let x_759 : vec4<f32> = u_xlat9;
        let x_761 : vec4<f32> = u_xlat13;
        let x_763 : vec3<f32> = (vec3<f32>(x_759.x, x_759.z, x_759.w) / vec3<f32>(x_761.z, x_761.w, x_761.y));
        let x_764 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
        let x_766 : vec4<f32> = u_xlat9;
        let x_771 : vec3<f32> = (vec3<f32>(x_766.x, x_766.y, x_766.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_772 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat12;
        let x_776 : vec4<f32> = u_xlat8;
        let x_778 : vec3<f32> = (vec3<f32>(x_774.z, x_774.y, x_774.w) / vec3<f32>(x_776.x, x_776.y, x_776.z));
        let x_779 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat10;
        let x_783 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_784 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat9;
        let x_789 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_791 : vec3<f32> = (vec3<f32>(x_786.y, x_786.x, x_786.z) * vec3<f32>(x_789.x, x_789.x, x_789.x));
        let x_792 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
        let x_794 : vec4<f32> = u_xlat10;
        let x_797 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_799 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_797.y, x_797.y, x_797.y));
        let x_800 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
        let x_803 : f32 = u_xlat10.x;
        u_xlat9.w = x_803;
        let x_805 : vec4<f32> = u_xlat7;
        let x_808 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_811 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y) * vec4<f32>(x_808.x, x_808.y, x_808.x, x_808.y)) + vec4<f32>(x_811.y, x_811.w, x_811.x, x_811.w));
        let x_814 : vec4<f32> = u_xlat7;
        let x_817 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_820 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_817.x, x_817.y)) + vec2<f32>(x_820.z, x_820.w));
        let x_824 : f32 = u_xlat9.y;
        u_xlat10.w = x_824;
        let x_826 : vec4<f32> = u_xlat10;
        let x_827 : vec2<f32> = vec2<f32>(x_826.y, x_826.z);
        let x_828 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_828.x, x_827.x, x_828.z, x_827.y);
        let x_830 : vec4<f32> = u_xlat7;
        let x_833 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_836 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y) * vec4<f32>(x_833.x, x_833.y, x_833.x, x_833.y)) + vec4<f32>(x_836.x, x_836.y, x_836.z, x_836.y));
        let x_839 : vec4<f32> = u_xlat7;
        let x_842 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_845 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_839.x, x_839.y, x_839.x, x_839.y) * vec4<f32>(x_842.x, x_842.y, x_842.x, x_842.y)) + vec4<f32>(x_845.w, x_845.y, x_845.w, x_845.z));
        let x_848 : vec4<f32> = u_xlat7;
        let x_851 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_854 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y) * vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.y)) + vec4<f32>(x_854.x, x_854.w, x_854.z, x_854.w));
        let x_858 : vec4<f32> = u_xlat8;
        let x_860 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_858.x, x_858.x, x_858.x, x_858.y) * vec4<f32>(x_860.z, x_860.w, x_860.y, x_860.z));
        let x_864 : vec4<f32> = u_xlat8;
        let x_866 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_864.y, x_864.y, x_864.z, x_864.z) * x_866);
        let x_870 : f32 = u_xlat8.z;
        let x_872 : f32 = u_xlat13.y;
        u_xlat68 = (x_870 * x_872);
        let x_875 : vec4<f32> = u_xlat11;
        let x_876 : vec2<f32> = vec2<f32>(x_875.x, x_875.y);
        let x_878 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_876.x, x_876.y, x_878);
        let x_886 : vec3<f32> = txVec4;
        let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_886.xy, x_886.z);
        u_xlat69 = x_888;
        let x_890 : vec4<f32> = u_xlat11;
        let x_891 : vec2<f32> = vec2<f32>(x_890.z, x_890.w);
        let x_893 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec5;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_900.xy, x_900.z);
        u_xlat7.x = x_902;
        let x_905 : f32 = u_xlat7.x;
        let x_907 : f32 = u_xlat14.y;
        u_xlat7.x = (x_905 * x_907);
        let x_911 : f32 = u_xlat14.x;
        let x_912 : f32 = u_xlat69;
        let x_915 : f32 = u_xlat7.x;
        u_xlat69 = ((x_911 * x_912) + x_915);
        let x_918 : vec2<f32> = u_xlat49;
        let x_920 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_918.x, x_918.y, x_920);
        let x_927 : vec3<f32> = txVec6;
        let x_929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_927.xy, x_927.z);
        u_xlat7.x = x_929;
        let x_932 : f32 = u_xlat14.z;
        let x_934 : f32 = u_xlat7.x;
        let x_936 : f32 = u_xlat69;
        u_xlat69 = ((x_932 * x_934) + x_936);
        let x_939 : vec4<f32> = u_xlat10;
        let x_940 : vec2<f32> = vec2<f32>(x_939.x, x_939.y);
        let x_942 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_949 : vec3<f32> = txVec7;
        let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_949.xy, x_949.z);
        u_xlat7.x = x_951;
        let x_954 : f32 = u_xlat14.w;
        let x_956 : f32 = u_xlat7.x;
        let x_958 : f32 = u_xlat69;
        u_xlat69 = ((x_954 * x_956) + x_958);
        let x_961 : vec4<f32> = u_xlat12;
        let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
        let x_964 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_971 : vec3<f32> = txVec8;
        let x_973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_971.xy, x_971.z);
        u_xlat7.x = x_973;
        let x_976 : f32 = u_xlat15.x;
        let x_978 : f32 = u_xlat7.x;
        let x_980 : f32 = u_xlat69;
        u_xlat69 = ((x_976 * x_978) + x_980);
        let x_983 : vec4<f32> = u_xlat12;
        let x_984 : vec2<f32> = vec2<f32>(x_983.z, x_983.w);
        let x_986 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_984.x, x_984.y, x_986);
        let x_993 : vec3<f32> = txVec9;
        let x_995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_993.xy, x_993.z);
        u_xlat7.x = x_995;
        let x_998 : f32 = u_xlat15.y;
        let x_1000 : f32 = u_xlat7.x;
        let x_1002 : f32 = u_xlat69;
        u_xlat69 = ((x_998 * x_1000) + x_1002);
        let x_1005 : vec4<f32> = u_xlat10;
        let x_1006 : vec2<f32> = vec2<f32>(x_1005.z, x_1005.w);
        let x_1008 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1006.x, x_1006.y, x_1008);
        let x_1015 : vec3<f32> = txVec10;
        let x_1017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1015.xy, x_1015.z);
        u_xlat7.x = x_1017;
        let x_1020 : f32 = u_xlat15.z;
        let x_1022 : f32 = u_xlat7.x;
        let x_1024 : f32 = u_xlat69;
        u_xlat69 = ((x_1020 * x_1022) + x_1024);
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1028 : vec2<f32> = vec2<f32>(x_1027.x, x_1027.y);
        let x_1030 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1028.x, x_1028.y, x_1030);
        let x_1037 : vec3<f32> = txVec11;
        let x_1039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1037.xy, x_1037.z);
        u_xlat7.x = x_1039;
        let x_1042 : f32 = u_xlat15.w;
        let x_1044 : f32 = u_xlat7.x;
        let x_1046 : f32 = u_xlat69;
        u_xlat69 = ((x_1042 * x_1044) + x_1046);
        let x_1049 : vec4<f32> = u_xlat9;
        let x_1050 : vec2<f32> = vec2<f32>(x_1049.z, x_1049.w);
        let x_1052 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1050.x, x_1050.y, x_1052);
        let x_1059 : vec3<f32> = txVec12;
        let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1059.xy, x_1059.z);
        u_xlat7.x = x_1061;
        let x_1063 : f32 = u_xlat68;
        let x_1065 : f32 = u_xlat7.x;
        let x_1067 : f32 = u_xlat69;
        u_xlat47 = ((x_1063 * x_1065) + x_1067);
      } else {
        let x_1070 : vec4<f32> = u_xlat2;
        let x_1073 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1076 : vec2<f32> = ((vec2<f32>(x_1070.x, x_1070.y) * vec2<f32>(x_1073.z, x_1073.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1077 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat7;
        let x_1081 : vec2<f32> = floor(vec2<f32>(x_1079.x, x_1079.y));
        let x_1082 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat2;
        let x_1087 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(x_1087.z, x_1087.w)) + -(vec2<f32>(x_1090.x, x_1090.y)));
        let x_1094 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1094.x, x_1094.x, x_1094.y, x_1094.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1099 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1097.x, x_1097.x, x_1097.z, x_1097.z) * vec4<f32>(x_1099.x, x_1099.x, x_1099.z, x_1099.z));
        let x_1102 : vec4<f32> = u_xlat9;
        let x_1106 : vec2<f32> = (vec2<f32>(x_1102.y, x_1102.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1107 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1107.x, x_1106.x, x_1107.z, x_1106.y);
        let x_1109 : vec4<f32> = u_xlat9;
        let x_1112 : vec2<f32> = u_xlat49;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1112));
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1114.x, x_1115.y, x_1114.y, x_1115.w);
        let x_1117 : vec2<f32> = u_xlat49;
        let x_1119 : vec2<f32> = (-(x_1117) + vec2<f32>(1.0f, 1.0f));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1122 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1122, vec2<f32>(0.0f, 0.0f));
        let x_1124 : vec2<f32> = u_xlat51;
        let x_1126 : vec2<f32> = u_xlat51;
        let x_1128 : vec4<f32> = u_xlat9;
        let x_1130 : vec2<f32> = ((-(x_1124) * x_1126) + vec2<f32>(x_1128.x, x_1128.y));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1133, vec2<f32>(0.0f, 0.0f));
        let x_1136 : vec2<f32> = u_xlat51;
        let x_1138 : vec2<f32> = u_xlat51;
        let x_1140 : vec4<f32> = u_xlat8;
        let x_1142 : vec2<f32> = ((-(x_1136) * x_1138) + vec2<f32>(x_1140.y, x_1140.w));
        let x_1143 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1142.x, x_1143.y, x_1142.y);
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = (vec2<f32>(x_1145.x, x_1145.y) + vec2<f32>(2.0f, 2.0f));
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1151 : vec3<f32> = u_xlat29;
        let x_1153 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.z) + vec2<f32>(2.0f, 2.0f));
        let x_1154 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1154.x, x_1153.x, x_1154.z, x_1153.y);
        let x_1157 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1157 * 0.081632003f);
        let x_1161 : vec4<f32> = u_xlat8;
        let x_1164 : vec3<f32> = (vec3<f32>(x_1161.z, x_1161.x, x_1161.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1165 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1170 : vec2<f32> = (vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1174 : f32 = u_xlat12.y;
        u_xlat11.x = x_1174;
        let x_1176 : vec2<f32> = u_xlat49;
        let x_1183 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1184 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1184.x, x_1183.x, x_1184.z, x_1183.y);
        let x_1186 : vec2<f32> = u_xlat49;
        let x_1190 : vec2<f32> = ((vec2<f32>(x_1186.x, x_1186.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1190.x, x_1191.y, x_1190.y, x_1191.w);
        let x_1194 : f32 = u_xlat8.x;
        u_xlat9.y = x_1194;
        let x_1197 : f32 = u_xlat10.y;
        u_xlat9.w = x_1197;
        let x_1199 : vec4<f32> = u_xlat9;
        let x_1200 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1199 + x_1200);
        let x_1202 : vec2<f32> = u_xlat49;
        let x_1205 : vec2<f32> = ((vec2<f32>(x_1202.y, x_1202.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1206 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1206.x, x_1205.x, x_1206.z, x_1205.y);
        let x_1208 : vec2<f32> = u_xlat49;
        let x_1211 : vec2<f32> = ((vec2<f32>(x_1208.y, x_1208.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1211.x, x_1212.y, x_1211.y, x_1212.w);
        let x_1215 : f32 = u_xlat8.y;
        u_xlat10.y = x_1215;
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1218 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1217 + x_1218);
        let x_1220 : vec4<f32> = u_xlat9;
        let x_1221 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1220 / x_1221);
        let x_1223 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1223 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1229 : vec4<f32> = u_xlat10;
        let x_1230 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1229 / x_1230);
        let x_1232 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1232 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1234 : vec4<f32> = u_xlat9;
        let x_1237 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1234.w, x_1234.x, x_1234.y, x_1234.z) * vec4<f32>(x_1237.x, x_1237.x, x_1237.x, x_1237.x));
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1243 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1240.x, x_1240.w, x_1240.y, x_1240.z) * vec4<f32>(x_1243.y, x_1243.y, x_1243.y, x_1243.y));
        let x_1246 : vec4<f32> = u_xlat9;
        let x_1247 : vec3<f32> = vec3<f32>(x_1246.y, x_1246.z, x_1246.w);
        let x_1248 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1247.x, x_1248.y, x_1247.y, x_1247.z);
        let x_1251 : f32 = u_xlat10.x;
        u_xlat12.y = x_1251;
        let x_1253 : vec4<f32> = u_xlat7;
        let x_1256 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y) * vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y)) + vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1259.y));
        let x_1262 : vec4<f32> = u_xlat7;
        let x_1265 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.w, x_1268.y));
        let x_1272 : f32 = u_xlat12.y;
        u_xlat9.y = x_1272;
        let x_1275 : f32 = u_xlat10.z;
        u_xlat12.y = x_1275;
        let x_1277 : vec4<f32> = u_xlat7;
        let x_1280 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y) * vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y)) + vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1283.y));
        let x_1286 : vec4<f32> = u_xlat7;
        let x_1289 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat12;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.w, x_1292.y));
        let x_1295 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1298 : f32 = u_xlat12.y;
        u_xlat9.z = x_1298;
        let x_1301 : vec4<f32> = u_xlat7;
        let x_1304 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y) * vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y)) + vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.z));
        let x_1311 : f32 = u_xlat10.w;
        u_xlat12.y = x_1311;
        let x_1314 : vec4<f32> = u_xlat7;
        let x_1317 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1320.y));
        let x_1324 : vec4<f32> = u_xlat7;
        let x_1327 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.w, x_1330.y));
        let x_1334 : f32 = u_xlat12.y;
        u_xlat9.w = x_1334;
        let x_1337 : vec4<f32> = u_xlat7;
        let x_1340 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.x, x_1343.w));
        let x_1346 : vec4<f32> = u_xlat12;
        let x_1347 : vec3<f32> = vec3<f32>(x_1346.x, x_1346.z, x_1346.w);
        let x_1348 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1347.x, x_1348.y, x_1347.y, x_1347.z);
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1353 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y) * vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y)) + vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1356.y));
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1363 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1366 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1360.x, x_1360.y) * vec2<f32>(x_1363.x, x_1363.y)) + vec2<f32>(x_1366.w, x_1366.y));
        let x_1370 : f32 = u_xlat9.x;
        u_xlat10.x = x_1370;
        let x_1372 : vec4<f32> = u_xlat7;
        let x_1375 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat10;
        let x_1380 : vec2<f32> = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(x_1375.x, x_1375.y)) + vec2<f32>(x_1378.x, x_1378.y));
        let x_1381 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1380.x, x_1380.y, x_1381.z, x_1381.w);
        let x_1384 : vec4<f32> = u_xlat8;
        let x_1386 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1384.x, x_1384.x, x_1384.x, x_1384.x) * x_1386);
        let x_1389 : vec4<f32> = u_xlat8;
        let x_1391 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1389.y, x_1389.y, x_1389.y, x_1389.y) * x_1391);
        let x_1394 : vec4<f32> = u_xlat8;
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1394.z, x_1394.z, x_1394.z, x_1394.z) * x_1396);
        let x_1398 : vec4<f32> = u_xlat8;
        let x_1400 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1398.w, x_1398.w, x_1398.w, x_1398.w) * x_1400);
        let x_1403 : vec4<f32> = u_xlat13;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec13;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1413.xy, x_1413.z);
        u_xlat68 = x_1415;
        let x_1417 : vec4<f32> = u_xlat13;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.z, x_1417.w);
        let x_1420 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec14;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat69 = x_1429;
        let x_1430 : f32 = u_xlat69;
        let x_1432 : f32 = u_xlat18.y;
        u_xlat69 = (x_1430 * x_1432);
        let x_1435 : f32 = u_xlat18.x;
        let x_1436 : f32 = u_xlat68;
        let x_1438 : f32 = u_xlat69;
        u_xlat68 = ((x_1435 * x_1436) + x_1438);
        let x_1441 : vec2<f32> = u_xlat49;
        let x_1443 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec15;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1450.xy, x_1450.z);
        u_xlat69 = x_1452;
        let x_1454 : f32 = u_xlat18.z;
        let x_1455 : f32 = u_xlat69;
        let x_1457 : f32 = u_xlat68;
        u_xlat68 = ((x_1454 * x_1455) + x_1457);
        let x_1460 : vec4<f32> = u_xlat16;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.x, x_1460.y);
        let x_1463 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec16;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1470.xy, x_1470.z);
        u_xlat69 = x_1472;
        let x_1474 : f32 = u_xlat18.w;
        let x_1475 : f32 = u_xlat69;
        let x_1477 : f32 = u_xlat68;
        u_xlat68 = ((x_1474 * x_1475) + x_1477);
        let x_1480 : vec4<f32> = u_xlat14;
        let x_1481 : vec2<f32> = vec2<f32>(x_1480.x, x_1480.y);
        let x_1483 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec17;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1490.xy, x_1490.z);
        u_xlat69 = x_1492;
        let x_1494 : f32 = u_xlat19.x;
        let x_1495 : f32 = u_xlat69;
        let x_1497 : f32 = u_xlat68;
        u_xlat68 = ((x_1494 * x_1495) + x_1497);
        let x_1500 : vec4<f32> = u_xlat14;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.z, x_1500.w);
        let x_1503 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec18;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat69 = x_1512;
        let x_1514 : f32 = u_xlat19.y;
        let x_1515 : f32 = u_xlat69;
        let x_1517 : f32 = u_xlat68;
        u_xlat68 = ((x_1514 * x_1515) + x_1517);
        let x_1520 : vec4<f32> = u_xlat15;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.x, x_1520.y);
        let x_1523 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec19;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
        u_xlat69 = x_1532;
        let x_1534 : f32 = u_xlat19.z;
        let x_1535 : f32 = u_xlat69;
        let x_1537 : f32 = u_xlat68;
        u_xlat68 = ((x_1534 * x_1535) + x_1537);
        let x_1540 : vec4<f32> = u_xlat16;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.z, x_1540.w);
        let x_1543 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec20;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1550.xy, x_1550.z);
        u_xlat69 = x_1552;
        let x_1554 : f32 = u_xlat19.w;
        let x_1555 : f32 = u_xlat69;
        let x_1557 : f32 = u_xlat68;
        u_xlat68 = ((x_1554 * x_1555) + x_1557);
        let x_1560 : vec4<f32> = u_xlat17;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
        let x_1563 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec21;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1570.xy, x_1570.z);
        u_xlat69 = x_1572;
        let x_1574 : f32 = u_xlat20.x;
        let x_1575 : f32 = u_xlat69;
        let x_1577 : f32 = u_xlat68;
        u_xlat68 = ((x_1574 * x_1575) + x_1577);
        let x_1580 : vec4<f32> = u_xlat17;
        let x_1581 : vec2<f32> = vec2<f32>(x_1580.z, x_1580.w);
        let x_1583 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
        let x_1590 : vec3<f32> = txVec22;
        let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1590.xy, x_1590.z);
        u_xlat69 = x_1592;
        let x_1594 : f32 = u_xlat20.y;
        let x_1595 : f32 = u_xlat69;
        let x_1597 : f32 = u_xlat68;
        u_xlat68 = ((x_1594 * x_1595) + x_1597);
        let x_1600 : vec2<f32> = u_xlat30;
        let x_1602 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec23;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1609.xy, x_1609.z);
        u_xlat69 = x_1611;
        let x_1613 : f32 = u_xlat20.z;
        let x_1614 : f32 = u_xlat69;
        let x_1616 : f32 = u_xlat68;
        u_xlat68 = ((x_1613 * x_1614) + x_1616);
        let x_1619 : vec2<f32> = u_xlat57;
        let x_1621 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec24;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1628.xy, x_1628.z);
        u_xlat69 = x_1630;
        let x_1632 : f32 = u_xlat20.w;
        let x_1633 : f32 = u_xlat69;
        let x_1635 : f32 = u_xlat68;
        u_xlat68 = ((x_1632 * x_1633) + x_1635);
        let x_1638 : vec4<f32> = u_xlat12;
        let x_1639 : vec2<f32> = vec2<f32>(x_1638.x, x_1638.y);
        let x_1641 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec25;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1648.xy, x_1648.z);
        u_xlat69 = x_1650;
        let x_1652 : f32 = u_xlat8.x;
        let x_1653 : f32 = u_xlat69;
        let x_1655 : f32 = u_xlat68;
        u_xlat68 = ((x_1652 * x_1653) + x_1655);
        let x_1658 : vec4<f32> = u_xlat12;
        let x_1659 : vec2<f32> = vec2<f32>(x_1658.z, x_1658.w);
        let x_1661 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1659.x, x_1659.y, x_1661);
        let x_1668 : vec3<f32> = txVec26;
        let x_1670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1668.xy, x_1668.z);
        u_xlat69 = x_1670;
        let x_1672 : f32 = u_xlat8.y;
        let x_1673 : f32 = u_xlat69;
        let x_1675 : f32 = u_xlat68;
        u_xlat68 = ((x_1672 * x_1673) + x_1675);
        let x_1678 : vec2<f32> = u_xlat52;
        let x_1680 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec27;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1687.xy, x_1687.z);
        u_xlat69 = x_1689;
        let x_1691 : f32 = u_xlat8.z;
        let x_1692 : f32 = u_xlat69;
        let x_1694 : f32 = u_xlat68;
        u_xlat68 = ((x_1691 * x_1692) + x_1694);
        let x_1697 : vec4<f32> = u_xlat7;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
        let x_1700 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec28;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1707.xy, x_1707.z);
        u_xlat69 = x_1709;
        let x_1711 : f32 = u_xlat8.w;
        let x_1712 : f32 = u_xlat69;
        let x_1714 : f32 = u_xlat68;
        u_xlat47 = ((x_1711 * x_1712) + x_1714);
      }
    }
  } else {
    let x_1718 : vec4<f32> = u_xlat2;
    let x_1719 : vec2<f32> = vec2<f32>(x_1718.x, x_1718.y);
    let x_1721 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
    let x_1728 : vec3<f32> = txVec29;
    let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1728.xy, x_1728.z);
    u_xlat47 = x_1730;
  }
  let x_1732 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1732) + 1.0f);
  let x_1736 : f32 = u_xlat47;
  let x_1738 : f32 = x_159.x_MainLightShadowParams.x;
  let x_1741 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1736 * x_1738) + x_1741);
  let x_1746 : f32 = u_xlat2.z;
  u_xlatb23.x = (0.0f >= x_1746);
  let x_1751 : f32 = u_xlat2.z;
  u_xlatb44 = (x_1751 >= 1.0f);
  let x_1753 : bool = u_xlatb44;
  let x_1755 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_1753 | x_1755);
  let x_1759 : bool = u_xlatb23.x;
  if (x_1759) {
    x_1760 = 1.0f;
  } else {
    let x_1765 : f32 = u_xlat2.x;
    x_1760 = x_1765;
  }
  let x_1766 : f32 = x_1760;
  u_xlat2.x = x_1766;
  let x_1768 : vec3<f32> = vs_TEXCOORD7;
  let x_1770 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1772 : vec3<f32> = (x_1768 + -(x_1770));
  let x_1773 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
  let x_1775 : vec4<f32> = u_xlat7;
  let x_1777 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_1775.x, x_1775.y, x_1775.z), vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
  let x_1782 : f32 = u_xlat23.x;
  let x_1784 : f32 = x_159.x_MainLightShadowParams.z;
  let x_1787 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1782 * x_1784) + x_1787);
  let x_1791 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1791, 0.0f, 1.0f);
  let x_1796 : f32 = u_xlat2.x;
  u_xlat44.x = (-(x_1796) + 1.0f);
  let x_1801 : f32 = u_xlat23.x;
  let x_1803 : f32 = u_xlat44.x;
  let x_1806 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1801 * x_1803) + x_1806);
  let x_1815 : f32 = x_1813.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_1815 == -1.0f));
  let x_1819 : bool = u_xlatb23.x;
  if (x_1819) {
    let x_1822 : vec3<f32> = vs_TEXCOORD7;
    let x_1825 : vec4<f32> = x_1813.x_MainLightWorldToLight[1i];
    let x_1827 : vec2<f32> = (vec2<f32>(x_1822.y, x_1822.y) * vec2<f32>(x_1825.x, x_1825.y));
    let x_1828 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1827.x, x_1827.y, x_1828.z);
    let x_1831 : vec4<f32> = x_1813.x_MainLightWorldToLight[0i];
    let x_1833 : vec3<f32> = vs_TEXCOORD7;
    let x_1836 : vec3<f32> = u_xlat23;
    let x_1838 : vec2<f32> = ((vec2<f32>(x_1831.x, x_1831.y) * vec2<f32>(x_1833.x, x_1833.x)) + vec2<f32>(x_1836.x, x_1836.y));
    let x_1839 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1838.x, x_1838.y, x_1839.z);
    let x_1842 : vec4<f32> = x_1813.x_MainLightWorldToLight[2i];
    let x_1844 : vec3<f32> = vs_TEXCOORD7;
    let x_1847 : vec3<f32> = u_xlat23;
    let x_1849 : vec2<f32> = ((vec2<f32>(x_1842.x, x_1842.y) * vec2<f32>(x_1844.z, x_1844.z)) + vec2<f32>(x_1847.x, x_1847.y));
    let x_1850 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1849.x, x_1849.y, x_1850.z);
    let x_1852 : vec3<f32> = u_xlat23;
    let x_1855 : vec4<f32> = x_1813.x_MainLightWorldToLight[3i];
    let x_1857 : vec2<f32> = (vec2<f32>(x_1852.x, x_1852.y) + vec2<f32>(x_1855.x, x_1855.y));
    let x_1858 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1857.x, x_1857.y, x_1858.z);
    let x_1860 : vec3<f32> = u_xlat23;
    let x_1863 : vec2<f32> = ((vec2<f32>(x_1860.x, x_1860.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1864 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_1863.x, x_1863.y, x_1864.z);
    let x_1871 : vec3<f32> = u_xlat23;
    let x_1874 : f32 = x_44.x_GlobalMipBias.x;
    let x_1875 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1871.x, x_1871.y), x_1874);
    u_xlat7 = x_1875;
    let x_1877 : f32 = x_1813.x_MainLightCookieTextureFormat;
    let x_1879 : f32 = x_1813.x_MainLightCookieTextureFormat;
    let x_1881 : f32 = x_1813.x_MainLightCookieTextureFormat;
    let x_1883 : f32 = x_1813.x_MainLightCookieTextureFormat;
    let x_1884 : vec4<f32> = vec4<f32>(x_1877, x_1879, x_1881, x_1883);
    let x_1891 : vec4<bool> = (vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1884.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb23 = vec2<bool>(x_1891.x, x_1891.y);
    let x_1894 : bool = u_xlatb23.y;
    if (x_1894) {
      let x_1899 : f32 = u_xlat7.w;
      x_1895 = x_1899;
    } else {
      let x_1902 : f32 = u_xlat7.x;
      x_1895 = x_1902;
    }
    let x_1903 : f32 = x_1895;
    u_xlat44.x = x_1903;
    let x_1906 : bool = u_xlatb23.x;
    if (x_1906) {
      let x_1910 : vec4<f32> = u_xlat7;
      x_1907 = vec3<f32>(x_1910.x, x_1910.y, x_1910.z);
    } else {
      let x_1913 : vec2<f32> = u_xlat44;
      x_1907 = vec3<f32>(x_1913.x, x_1913.x, x_1913.x);
    }
    let x_1915 : vec3<f32> = x_1907;
    let x_1916 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1922 : vec4<f32> = u_xlat7;
  let x_1925 : vec4<f32> = x_44.x_MainLightColor;
  let x_1927 : vec3<f32> = (vec3<f32>(x_1922.x, x_1922.y, x_1922.z) * vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
  let x_1928 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
  let x_1930 : f32 = u_xlat26;
  let x_1932 : vec4<f32> = u_xlat7;
  let x_1934 : vec3<f32> = (vec3<f32>(x_1930, x_1930, x_1930) * vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
  let x_1935 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
  let x_1937 : vec3<f32> = u_xlat3;
  let x_1939 : vec3<f32> = u_xlat22;
  u_xlat23.x = dot(-(x_1937), x_1939);
  let x_1943 : f32 = u_xlat23.x;
  let x_1945 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1943 + x_1945);
  let x_1948 : vec3<f32> = u_xlat22;
  let x_1949 : vec3<f32> = u_xlat23;
  let x_1953 : vec3<f32> = u_xlat3;
  let x_1955 : vec3<f32> = ((x_1948 * -(vec3<f32>(x_1949.x, x_1949.x, x_1949.x))) + -(x_1953));
  let x_1956 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
  let x_1958 : vec3<f32> = u_xlat22;
  let x_1959 : vec3<f32> = u_xlat3;
  u_xlat23.x = dot(x_1958, x_1959);
  let x_1963 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1963, 0.0f, 1.0f);
  let x_1967 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_1967) + 1.0f);
  let x_1972 : f32 = u_xlat23.x;
  let x_1974 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1972 * x_1974);
  let x_1978 : f32 = u_xlat23.x;
  let x_1980 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1978 * x_1980);
  let x_1983 : f32 = u_xlat1;
  u_xlat44.x = ((-(x_1983) * 0.699999988f) + 1.700000048f);
  let x_1990 : f32 = u_xlat1;
  let x_1992 : f32 = u_xlat44.x;
  u_xlat1 = (x_1990 * x_1992);
  let x_1994 : f32 = u_xlat1;
  u_xlat1 = (x_1994 * 6.0f);
  let x_2005 : vec4<f32> = u_xlat8;
  let x_2007 : f32 = u_xlat1;
  let x_2008 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2005.x, x_2005.y, x_2005.z), x_2007);
  u_xlat8 = x_2008;
  let x_2010 : f32 = u_xlat8.w;
  u_xlat1 = (x_2010 + -1.0f);
  let x_2017 : f32 = x_2015.unity_SpecCube0_HDR.w;
  let x_2018 : f32 = u_xlat1;
  u_xlat1 = ((x_2017 * x_2018) + 1.0f);
  let x_2021 : f32 = u_xlat1;
  u_xlat1 = max(x_2021, 0.0f);
  let x_2023 : f32 = u_xlat1;
  u_xlat1 = log2(x_2023);
  let x_2025 : f32 = u_xlat1;
  let x_2027 : f32 = x_2015.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_2025 * x_2027);
  let x_2029 : f32 = u_xlat1;
  u_xlat1 = exp2(x_2029);
  let x_2031 : f32 = u_xlat1;
  let x_2033 : f32 = x_2015.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_2031 * x_2033);
  let x_2035 : vec4<f32> = u_xlat8;
  let x_2037 : f32 = u_xlat1;
  let x_2039 : vec3<f32> = (vec3<f32>(x_2035.x, x_2035.y, x_2035.z) * vec3<f32>(x_2037, x_2037, x_2037));
  let x_2040 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
  let x_2042 : f32 = u_xlat65;
  let x_2044 : f32 = u_xlat65;
  u_xlat44 = ((vec2<f32>(x_2042, x_2042) * vec2<f32>(x_2044, x_2044)) + vec2<f32>(-1.0f, 1.0f));
  let x_2050 : f32 = u_xlat44.y;
  u_xlat1 = (1.0f / x_2050);
  let x_2052 : vec4<f32> = u_xlat0;
  let x_2055 : f32 = u_xlat63;
  let x_2057 : vec3<f32> = (-(vec3<f32>(x_2052.x, x_2052.y, x_2052.z)) + vec3<f32>(x_2055, x_2055, x_2055));
  let x_2058 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
  let x_2060 : vec3<f32> = u_xlat23;
  let x_2062 : vec4<f32> = u_xlat9;
  let x_2065 : vec4<f32> = u_xlat0;
  let x_2067 : vec3<f32> = ((vec3<f32>(x_2060.x, x_2060.x, x_2060.x) * vec3<f32>(x_2062.x, x_2062.y, x_2062.z)) + vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
  let x_2068 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
  let x_2070 : f32 = u_xlat1;
  let x_2072 : vec4<f32> = u_xlat9;
  let x_2074 : vec3<f32> = (vec3<f32>(x_2070, x_2070, x_2070) * vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
  let x_2075 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2077 : vec4<f32> = u_xlat8;
  let x_2079 : vec4<f32> = u_xlat9;
  let x_2081 : vec3<f32> = (vec3<f32>(x_2077.x, x_2077.y, x_2077.z) * vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
  let x_2082 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
  let x_2084 : vec4<f32> = u_xlat4;
  let x_2086 : vec3<f32> = u_xlat6;
  let x_2088 : vec4<f32> = u_xlat8;
  let x_2090 : vec3<f32> = ((vec3<f32>(x_2084.x, x_2084.y, x_2084.z) * x_2086) + vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
  let x_2091 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
  let x_2094 : f32 = u_xlat2.x;
  let x_2096 : f32 = x_2015.unity_LightData.z;
  u_xlat63 = (x_2094 * x_2096);
  let x_2098 : vec3<f32> = u_xlat22;
  let x_2100 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_2098, vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2103 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2103, 0.0f, 1.0f);
  let x_2105 : f32 = u_xlat63;
  let x_2106 : f32 = u_xlat1;
  u_xlat63 = (x_2105 * x_2106);
  let x_2108 : f32 = u_xlat63;
  let x_2110 : vec4<f32> = u_xlat7;
  let x_2112 : vec3<f32> = (vec3<f32>(x_2108, x_2108, x_2108) * vec3<f32>(x_2110.x, x_2110.y, x_2110.z));
  let x_2113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2112.x, x_2112.y, x_2113.z, x_2112.z);
  let x_2115 : vec3<f32> = u_xlat3;
  let x_2117 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2119 : vec3<f32> = (x_2115 + vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
  let x_2120 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
  let x_2122 : vec4<f32> = u_xlat7;
  let x_2124 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2122.x, x_2122.y, x_2122.z), vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : f32 = u_xlat63;
  u_xlat63 = max(x_2127, 1.17549435e-37f);
  let x_2130 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2130);
  let x_2132 : f32 = u_xlat63;
  let x_2134 : vec4<f32> = u_xlat7;
  let x_2136 : vec3<f32> = (vec3<f32>(x_2132, x_2132, x_2132) * vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
  let x_2137 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
  let x_2139 : vec3<f32> = u_xlat22;
  let x_2140 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(x_2139, vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
  let x_2143 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2143, 0.0f, 1.0f);
  let x_2146 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2148 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_2146.x, x_2146.y, x_2146.z), vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
  let x_2151 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2151, 0.0f, 1.0f);
  let x_2153 : f32 = u_xlat63;
  let x_2154 : f32 = u_xlat63;
  u_xlat63 = (x_2153 * x_2154);
  let x_2156 : f32 = u_xlat63;
  let x_2158 : f32 = u_xlat44.x;
  u_xlat63 = ((x_2156 * x_2158) + 1.000010014f);
  let x_2162 : f32 = u_xlat1;
  let x_2163 : f32 = u_xlat1;
  u_xlat1 = (x_2162 * x_2163);
  let x_2165 : f32 = u_xlat63;
  let x_2166 : f32 = u_xlat63;
  u_xlat63 = (x_2165 * x_2166);
  let x_2168 : f32 = u_xlat1;
  u_xlat1 = max(x_2168, 0.100000001f);
  let x_2171 : f32 = u_xlat63;
  let x_2172 : f32 = u_xlat1;
  u_xlat63 = (x_2171 * x_2172);
  let x_2174 : f32 = u_xlat66;
  let x_2175 : f32 = u_xlat63;
  u_xlat63 = (x_2174 * x_2175);
  let x_2177 : f32 = u_xlat67;
  let x_2178 : f32 = u_xlat63;
  u_xlat63 = (x_2177 / x_2178);
  let x_2180 : vec4<f32> = u_xlat0;
  let x_2182 : f32 = u_xlat63;
  let x_2185 : vec3<f32> = u_xlat6;
  let x_2186 : vec3<f32> = ((vec3<f32>(x_2180.x, x_2180.y, x_2180.z) * vec3<f32>(x_2182, x_2182, x_2182)) + x_2185);
  let x_2187 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
  let x_2189 : vec4<f32> = u_xlat2;
  let x_2191 : vec4<f32> = u_xlat7;
  let x_2193 : vec3<f32> = (vec3<f32>(x_2189.x, x_2189.y, x_2189.w) * vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
  let x_2194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2193.z);
  let x_2197 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2199 : f32 = x_2015.unity_LightData.y;
  u_xlat63 = min(x_2197, x_2199);
  let x_2202 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2202));
  let x_2206 : f32 = x_1813.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2208 : f32 = x_1813.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2210 : f32 = x_1813.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2212 : f32 = x_1813.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2213 : vec4<f32> = vec4<f32>(x_2206, x_2208, x_2210, x_2212);
  let x_2220 : vec4<bool> = (vec4<f32>(x_2213.x, x_2213.y, x_2213.z, x_2213.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb47 = vec2<bool>(x_2220.x, x_2220.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2231 : u32 = u_xlatu_loop_1;
    let x_2232 : u32 = u_xlatu63;
    if ((x_2231 < x_2232)) {
    } else {
      break;
    }
    let x_2235 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2235 >> 2u);
    let x_2238 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2238 & 3u));
    let x_2241 : u32 = u_xlatu69;
    let x_2244 : vec4<f32> = x_2015.unity_LightIndices[bitcast<i32>(x_2241)];
    let x_2254 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2259 : vec4<u32> = indexable[x_2254];
    u_xlat69 = dot(x_2244, bitcast<vec4<f32>>(x_2259));
    let x_2262 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2262));
    let x_2265 : vec3<f32> = vs_TEXCOORD7;
    let x_2277 : u32 = u_xlatu69;
    let x_2280 : vec4<f32> = x_2276.x_AdditionalLightsPosition[bitcast<i32>(x_2277)];
    let x_2283 : u32 = u_xlatu69;
    let x_2286 : vec4<f32> = x_2276.x_AdditionalLightsPosition[bitcast<i32>(x_2283)];
    let x_2288 : vec3<f32> = ((-(x_2265) * vec3<f32>(x_2280.w, x_2280.w, x_2280.w)) + vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
    let x_2289 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
    let x_2292 : vec4<f32> = u_xlat8;
    let x_2294 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2292.x, x_2292.y, x_2292.z), vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
    let x_2297 : f32 = u_xlat70;
    u_xlat70 = max(x_2297, 6.10351562e-05f);
    let x_2301 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2301);
    let x_2303 : f32 = u_xlat71;
    let x_2305 : vec4<f32> = u_xlat8;
    let x_2307 : vec3<f32> = (vec3<f32>(x_2303, x_2303, x_2303) * vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
    let x_2308 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
    let x_2311 : f32 = u_xlat70;
    u_xlat72 = (1.0f / x_2311);
    let x_2313 : f32 = u_xlat70;
    let x_2314 : u32 = u_xlatu69;
    let x_2317 : f32 = x_2276.x_AdditionalLightsAttenuation[bitcast<i32>(x_2314)].x;
    u_xlat70 = (x_2313 * x_2317);
    let x_2319 : f32 = u_xlat70;
    let x_2321 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2319) * x_2321) + 1.0f);
    let x_2324 : f32 = u_xlat70;
    u_xlat70 = max(x_2324, 0.0f);
    let x_2326 : f32 = u_xlat70;
    let x_2327 : f32 = u_xlat70;
    u_xlat70 = (x_2326 * x_2327);
    let x_2329 : f32 = u_xlat70;
    let x_2330 : f32 = u_xlat72;
    u_xlat70 = (x_2329 * x_2330);
    let x_2332 : u32 = u_xlatu69;
    let x_2335 : vec4<f32> = x_2276.x_AdditionalLightsSpotDir[bitcast<i32>(x_2332)];
    let x_2337 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2335.x, x_2335.y, x_2335.z), vec3<f32>(x_2337.x, x_2337.y, x_2337.z));
    let x_2340 : f32 = u_xlat72;
    let x_2341 : u32 = u_xlatu69;
    let x_2344 : f32 = x_2276.x_AdditionalLightsAttenuation[bitcast<i32>(x_2341)].z;
    let x_2346 : u32 = u_xlatu69;
    let x_2349 : f32 = x_2276.x_AdditionalLightsAttenuation[bitcast<i32>(x_2346)].w;
    u_xlat72 = ((x_2340 * x_2344) + x_2349);
    let x_2351 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2351, 0.0f, 1.0f);
    let x_2353 : f32 = u_xlat72;
    let x_2354 : f32 = u_xlat72;
    u_xlat72 = (x_2353 * x_2354);
    let x_2356 : f32 = u_xlat70;
    let x_2357 : f32 = u_xlat72;
    u_xlat70 = (x_2356 * x_2357);
    let x_2360 : u32 = u_xlatu69;
    u_xlatu72 = (x_2360 >> 5u);
    let x_2363 : u32 = u_xlatu69;
    u_xlati10 = (1i << bitcast<u32>((bitcast<i32>(x_2363) & 31i)));
    let x_2369 : i32 = u_xlati10;
    let x_2371 : u32 = u_xlatu72;
    let x_2374 : f32 = x_1813.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2371)].el;
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_2369) & bitcast<u32>(x_2374)));
    let x_2378 : i32 = u_xlati72;
    if ((x_2378 != 0i)) {
      let x_2388 : u32 = u_xlatu69;
      let x_2391 : f32 = x_2387.x_AdditionalLightsLightTypes[bitcast<i32>(x_2388)].el;
      u_xlati72 = i32(x_2391);
      let x_2393 : i32 = u_xlati72;
      u_xlati10 = select(1i, 0i, (x_2393 != 0i));
      let x_2397 : u32 = u_xlatu69;
      u_xlati31 = (bitcast<i32>(x_2397) << bitcast<u32>(2i));
      let x_2400 : i32 = u_xlati10;
      if ((x_2400 != 0i)) {
        let x_2404 : vec3<f32> = vs_TEXCOORD7;
        let x_2406 : i32 = u_xlati31;
        let x_2409 : i32 = u_xlati31;
        let x_2413 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[((x_2406 + 1i) / 4i)][((x_2409 + 1i) % 4i)];
        let x_2415 : vec3<f32> = (vec3<f32>(x_2404.y, x_2404.y, x_2404.y) * vec3<f32>(x_2413.x, x_2413.y, x_2413.w));
        let x_2416 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2415.x, x_2416.y, x_2415.y, x_2415.z);
        let x_2418 : i32 = u_xlati31;
        let x_2420 : i32 = u_xlati31;
        let x_2423 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[(x_2418 / 4i)][(x_2420 % 4i)];
        let x_2425 : vec3<f32> = vs_TEXCOORD7;
        let x_2428 : vec4<f32> = u_xlat10;
        let x_2430 : vec3<f32> = ((vec3<f32>(x_2423.x, x_2423.y, x_2423.w) * vec3<f32>(x_2425.x, x_2425.x, x_2425.x)) + vec3<f32>(x_2428.x, x_2428.z, x_2428.w));
        let x_2431 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2430.x, x_2431.y, x_2430.y, x_2430.z);
        let x_2433 : i32 = u_xlati31;
        let x_2436 : i32 = u_xlati31;
        let x_2440 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[((x_2433 + 2i) / 4i)][((x_2436 + 2i) % 4i)];
        let x_2442 : vec3<f32> = vs_TEXCOORD7;
        let x_2445 : vec4<f32> = u_xlat10;
        let x_2447 : vec3<f32> = ((vec3<f32>(x_2440.x, x_2440.y, x_2440.w) * vec3<f32>(x_2442.z, x_2442.z, x_2442.z)) + vec3<f32>(x_2445.x, x_2445.z, x_2445.w));
        let x_2448 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2447.x, x_2448.y, x_2447.y, x_2447.z);
        let x_2450 : vec4<f32> = u_xlat10;
        let x_2452 : i32 = u_xlati31;
        let x_2455 : i32 = u_xlati31;
        let x_2459 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[((x_2452 + 3i) / 4i)][((x_2455 + 3i) % 4i)];
        let x_2461 : vec3<f32> = (vec3<f32>(x_2450.x, x_2450.z, x_2450.w) + vec3<f32>(x_2459.x, x_2459.y, x_2459.w));
        let x_2462 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2461.x, x_2462.y, x_2461.y, x_2461.z);
        let x_2464 : vec4<f32> = u_xlat10;
        let x_2466 : vec4<f32> = u_xlat10;
        let x_2468 : vec2<f32> = (vec2<f32>(x_2464.x, x_2464.z) / vec2<f32>(x_2466.w, x_2466.w));
        let x_2469 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2468.x, x_2469.y, x_2468.y, x_2469.w);
        let x_2471 : vec4<f32> = u_xlat10;
        let x_2474 : vec2<f32> = ((vec2<f32>(x_2471.x, x_2471.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2475 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2474.x, x_2475.y, x_2474.y, x_2475.w);
        let x_2477 : vec4<f32> = u_xlat10;
        let x_2481 : vec2<f32> = clamp(vec2<f32>(x_2477.x, x_2477.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2482 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2481.x, x_2482.y, x_2481.y, x_2482.w);
        let x_2484 : u32 = u_xlatu69;
        let x_2487 : vec4<f32> = x_2387.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2484)];
        let x_2489 : vec4<f32> = u_xlat10;
        let x_2492 : u32 = u_xlatu69;
        let x_2495 : vec4<f32> = x_2387.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2492)];
        let x_2497 : vec2<f32> = ((vec2<f32>(x_2487.x, x_2487.y) * vec2<f32>(x_2489.x, x_2489.z)) + vec2<f32>(x_2495.z, x_2495.w));
        let x_2498 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2497.x, x_2498.y, x_2497.y, x_2498.w);
      } else {
        let x_2502 : i32 = u_xlati72;
        u_xlatb72 = (x_2502 == 1i);
        let x_2504 : bool = u_xlatb72;
        u_xlati72 = select(0i, 1i, x_2504);
        let x_2506 : i32 = u_xlati72;
        if ((x_2506 != 0i)) {
          let x_2510 : vec3<f32> = vs_TEXCOORD7;
          let x_2512 : i32 = u_xlati31;
          let x_2515 : i32 = u_xlati31;
          let x_2519 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[((x_2512 + 1i) / 4i)][((x_2515 + 1i) % 4i)];
          let x_2521 : vec2<f32> = (vec2<f32>(x_2510.y, x_2510.y) * vec2<f32>(x_2519.x, x_2519.y));
          let x_2522 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
          let x_2524 : i32 = u_xlati31;
          let x_2526 : i32 = u_xlati31;
          let x_2529 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[(x_2524 / 4i)][(x_2526 % 4i)];
          let x_2531 : vec3<f32> = vs_TEXCOORD7;
          let x_2534 : vec4<f32> = u_xlat11;
          let x_2536 : vec2<f32> = ((vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(x_2531.x, x_2531.x)) + vec2<f32>(x_2534.x, x_2534.y));
          let x_2537 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2536.x, x_2536.y, x_2537.z, x_2537.w);
          let x_2539 : i32 = u_xlati31;
          let x_2542 : i32 = u_xlati31;
          let x_2546 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[((x_2539 + 2i) / 4i)][((x_2542 + 2i) % 4i)];
          let x_2548 : vec3<f32> = vs_TEXCOORD7;
          let x_2551 : vec4<f32> = u_xlat11;
          let x_2553 : vec2<f32> = ((vec2<f32>(x_2546.x, x_2546.y) * vec2<f32>(x_2548.z, x_2548.z)) + vec2<f32>(x_2551.x, x_2551.y));
          let x_2554 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2553.x, x_2553.y, x_2554.z, x_2554.w);
          let x_2556 : vec4<f32> = u_xlat11;
          let x_2558 : i32 = u_xlati31;
          let x_2561 : i32 = u_xlati31;
          let x_2565 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[((x_2558 + 3i) / 4i)][((x_2561 + 3i) % 4i)];
          let x_2567 : vec2<f32> = (vec2<f32>(x_2556.x, x_2556.y) + vec2<f32>(x_2565.x, x_2565.y));
          let x_2568 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2567.x, x_2567.y, x_2568.z, x_2568.w);
          let x_2570 : vec4<f32> = u_xlat11;
          let x_2573 : vec2<f32> = ((vec2<f32>(x_2570.x, x_2570.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2574 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2573.x, x_2573.y, x_2574.z, x_2574.w);
          let x_2576 : vec4<f32> = u_xlat11;
          let x_2578 : vec2<f32> = fract(vec2<f32>(x_2576.x, x_2576.y));
          let x_2579 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2578.x, x_2578.y, x_2579.z, x_2579.w);
          let x_2581 : u32 = u_xlatu69;
          let x_2584 : vec4<f32> = x_2387.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2581)];
          let x_2586 : vec4<f32> = u_xlat11;
          let x_2589 : u32 = u_xlatu69;
          let x_2592 : vec4<f32> = x_2387.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2589)];
          let x_2594 : vec2<f32> = ((vec2<f32>(x_2584.x, x_2584.y) * vec2<f32>(x_2586.x, x_2586.y)) + vec2<f32>(x_2592.z, x_2592.w));
          let x_2595 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2594.x, x_2595.y, x_2594.y, x_2595.w);
        } else {
          let x_2598 : vec3<f32> = vs_TEXCOORD7;
          let x_2600 : i32 = u_xlati31;
          let x_2603 : i32 = u_xlati31;
          let x_2607 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[((x_2600 + 1i) / 4i)][((x_2603 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2598.y, x_2598.y, x_2598.y, x_2598.y) * x_2607);
          let x_2609 : i32 = u_xlati31;
          let x_2611 : i32 = u_xlati31;
          let x_2614 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[(x_2609 / 4i)][(x_2611 % 4i)];
          let x_2615 : vec3<f32> = vs_TEXCOORD7;
          let x_2618 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2614 * vec4<f32>(x_2615.x, x_2615.x, x_2615.x, x_2615.x)) + x_2618);
          let x_2620 : i32 = u_xlati31;
          let x_2623 : i32 = u_xlati31;
          let x_2627 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[((x_2620 + 2i) / 4i)][((x_2623 + 2i) % 4i)];
          let x_2628 : vec3<f32> = vs_TEXCOORD7;
          let x_2631 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2627 * vec4<f32>(x_2628.z, x_2628.z, x_2628.z, x_2628.z)) + x_2631);
          let x_2633 : vec4<f32> = u_xlat11;
          let x_2634 : i32 = u_xlati31;
          let x_2637 : i32 = u_xlati31;
          let x_2641 : vec4<f32> = x_2387.x_AdditionalLightsWorldToLights[((x_2634 + 3i) / 4i)][((x_2637 + 3i) % 4i)];
          u_xlat11 = (x_2633 + x_2641);
          let x_2643 : vec4<f32> = u_xlat11;
          let x_2645 : vec4<f32> = u_xlat11;
          let x_2647 : vec3<f32> = (vec3<f32>(x_2643.x, x_2643.y, x_2643.z) / vec3<f32>(x_2645.w, x_2645.w, x_2645.w));
          let x_2648 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
          let x_2650 : vec4<f32> = u_xlat11;
          let x_2652 : vec4<f32> = u_xlat11;
          u_xlat72 = dot(vec3<f32>(x_2650.x, x_2650.y, x_2650.z), vec3<f32>(x_2652.x, x_2652.y, x_2652.z));
          let x_2655 : f32 = u_xlat72;
          u_xlat72 = inverseSqrt(x_2655);
          let x_2657 : f32 = u_xlat72;
          let x_2659 : vec4<f32> = u_xlat11;
          let x_2661 : vec3<f32> = (vec3<f32>(x_2657, x_2657, x_2657) * vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
          let x_2662 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
          let x_2664 : vec4<f32> = u_xlat11;
          u_xlat72 = dot(abs(vec3<f32>(x_2664.x, x_2664.y, x_2664.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2669 : f32 = u_xlat72;
          u_xlat72 = max(x_2669, 0.000001f);
          let x_2672 : f32 = u_xlat72;
          u_xlat72 = (1.0f / x_2672);
          let x_2674 : f32 = u_xlat72;
          let x_2676 : vec4<f32> = u_xlat11;
          let x_2678 : vec3<f32> = (vec3<f32>(x_2674, x_2674, x_2674) * vec3<f32>(x_2676.z, x_2676.x, x_2676.y));
          let x_2679 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2679.w);
          let x_2682 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2682);
          let x_2686 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2686, 0.0f, 1.0f);
          let x_2692 : vec4<f32> = u_xlat12;
          let x_2695 : vec4<bool> = (vec4<f32>(x_2692.y, x_2692.y, x_2692.z, x_2692.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2696 : vec2<bool> = vec2<bool>(x_2695.x, x_2695.z);
          let x_2697 : vec3<bool> = u_xlatb31;
          u_xlatb31 = vec3<bool>(x_2696.x, x_2697.y, x_2696.y);
          let x_2701 : bool = u_xlatb31.x;
          if (x_2701) {
            let x_2706 : f32 = u_xlat12.x;
            x_2702 = x_2706;
          } else {
            let x_2709 : f32 = u_xlat12.x;
            x_2702 = -(x_2709);
          }
          let x_2711 : f32 = x_2702;
          u_xlat31.x = x_2711;
          let x_2714 : bool = u_xlatb31.z;
          if (x_2714) {
            let x_2719 : f32 = u_xlat12.x;
            x_2715 = x_2719;
          } else {
            let x_2722 : f32 = u_xlat12.x;
            x_2715 = -(x_2722);
          }
          let x_2724 : f32 = x_2715;
          u_xlat31.z = x_2724;
          let x_2726 : vec4<f32> = u_xlat11;
          let x_2728 : f32 = u_xlat72;
          let x_2731 : vec3<f32> = u_xlat31;
          let x_2733 : vec2<f32> = ((vec2<f32>(x_2726.x, x_2726.y) * vec2<f32>(x_2728, x_2728)) + vec2<f32>(x_2731.x, x_2731.z));
          let x_2734 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2733.x, x_2734.y, x_2733.y);
          let x_2736 : vec3<f32> = u_xlat31;
          let x_2739 : vec2<f32> = ((vec2<f32>(x_2736.x, x_2736.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2740 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2739.x, x_2740.y, x_2739.y);
          let x_2742 : vec3<f32> = u_xlat31;
          let x_2746 : vec2<f32> = clamp(vec2<f32>(x_2742.x, x_2742.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2747 : vec3<f32> = u_xlat31;
          u_xlat31 = vec3<f32>(x_2746.x, x_2747.y, x_2746.y);
          let x_2749 : u32 = u_xlatu69;
          let x_2752 : vec4<f32> = x_2387.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2749)];
          let x_2754 : vec3<f32> = u_xlat31;
          let x_2757 : u32 = u_xlatu69;
          let x_2760 : vec4<f32> = x_2387.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2757)];
          let x_2762 : vec2<f32> = ((vec2<f32>(x_2752.x, x_2752.y) * vec2<f32>(x_2754.x, x_2754.z)) + vec2<f32>(x_2760.z, x_2760.w));
          let x_2763 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2762.x, x_2763.y, x_2762.y, x_2763.w);
        }
      }
      let x_2770 : vec4<f32> = u_xlat10;
      let x_2773 : f32 = x_44.x_GlobalMipBias.x;
      let x_2774 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2770.x, x_2770.z), x_2773);
      u_xlat10 = x_2774;
      let x_2776 : bool = u_xlatb47.y;
      if (x_2776) {
        let x_2781 : f32 = u_xlat10.w;
        x_2777 = x_2781;
      } else {
        let x_2784 : f32 = u_xlat10.x;
        x_2777 = x_2784;
      }
      let x_2785 : f32 = x_2777;
      u_xlat72 = x_2785;
      let x_2787 : bool = u_xlatb47.x;
      if (x_2787) {
        let x_2791 : vec4<f32> = u_xlat10;
        x_2788 = vec3<f32>(x_2791.x, x_2791.y, x_2791.z);
      } else {
        let x_2794 : f32 = u_xlat72;
        x_2788 = vec3<f32>(x_2794, x_2794, x_2794);
      }
      let x_2796 : vec3<f32> = x_2788;
      let x_2797 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2803 : vec4<f32> = u_xlat10;
    let x_2805 : u32 = u_xlatu69;
    let x_2808 : vec4<f32> = x_2276.x_AdditionalLightsColor[bitcast<i32>(x_2805)];
    let x_2810 : vec3<f32> = (vec3<f32>(x_2803.x, x_2803.y, x_2803.z) * vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
    let x_2811 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2811.w);
    let x_2813 : f32 = u_xlat26;
    let x_2815 : vec4<f32> = u_xlat10;
    let x_2817 : vec3<f32> = (vec3<f32>(x_2813, x_2813, x_2813) * vec3<f32>(x_2815.x, x_2815.y, x_2815.z));
    let x_2818 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2817.x, x_2817.y, x_2817.z, x_2818.w);
    let x_2820 : vec3<f32> = u_xlat22;
    let x_2821 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(x_2820, vec3<f32>(x_2821.x, x_2821.y, x_2821.z));
    let x_2824 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2824, 0.0f, 1.0f);
    let x_2826 : f32 = u_xlat69;
    let x_2827 : f32 = u_xlat70;
    u_xlat69 = (x_2826 * x_2827);
    let x_2829 : f32 = u_xlat69;
    let x_2831 : vec4<f32> = u_xlat10;
    let x_2833 : vec3<f32> = (vec3<f32>(x_2829, x_2829, x_2829) * vec3<f32>(x_2831.x, x_2831.y, x_2831.z));
    let x_2834 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2834.w);
    let x_2836 : vec4<f32> = u_xlat8;
    let x_2838 : f32 = u_xlat71;
    let x_2841 : vec3<f32> = u_xlat3;
    let x_2842 : vec3<f32> = ((vec3<f32>(x_2836.x, x_2836.y, x_2836.z) * vec3<f32>(x_2838, x_2838, x_2838)) + x_2841);
    let x_2843 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2842.x, x_2842.y, x_2842.z, x_2843.w);
    let x_2845 : vec4<f32> = u_xlat8;
    let x_2847 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2845.x, x_2845.y, x_2845.z), vec3<f32>(x_2847.x, x_2847.y, x_2847.z));
    let x_2850 : f32 = u_xlat69;
    u_xlat69 = max(x_2850, 1.17549435e-37f);
    let x_2852 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_2852);
    let x_2854 : f32 = u_xlat69;
    let x_2856 : vec4<f32> = u_xlat8;
    let x_2858 : vec3<f32> = (vec3<f32>(x_2854, x_2854, x_2854) * vec3<f32>(x_2856.x, x_2856.y, x_2856.z));
    let x_2859 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
    let x_2861 : vec3<f32> = u_xlat22;
    let x_2862 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(x_2861, vec3<f32>(x_2862.x, x_2862.y, x_2862.z));
    let x_2865 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2865, 0.0f, 1.0f);
    let x_2867 : vec4<f32> = u_xlat9;
    let x_2869 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2867.x, x_2867.y, x_2867.z), vec3<f32>(x_2869.x, x_2869.y, x_2869.z));
    let x_2872 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2872, 0.0f, 1.0f);
    let x_2874 : f32 = u_xlat69;
    let x_2875 : f32 = u_xlat69;
    u_xlat69 = (x_2874 * x_2875);
    let x_2877 : f32 = u_xlat69;
    let x_2879 : f32 = u_xlat44.x;
    u_xlat69 = ((x_2877 * x_2879) + 1.000010014f);
    let x_2882 : f32 = u_xlat70;
    let x_2883 : f32 = u_xlat70;
    u_xlat70 = (x_2882 * x_2883);
    let x_2885 : f32 = u_xlat69;
    let x_2886 : f32 = u_xlat69;
    u_xlat69 = (x_2885 * x_2886);
    let x_2888 : f32 = u_xlat70;
    u_xlat70 = max(x_2888, 0.100000001f);
    let x_2890 : f32 = u_xlat69;
    let x_2891 : f32 = u_xlat70;
    u_xlat69 = (x_2890 * x_2891);
    let x_2893 : f32 = u_xlat66;
    let x_2894 : f32 = u_xlat69;
    u_xlat69 = (x_2893 * x_2894);
    let x_2896 : f32 = u_xlat67;
    let x_2897 : f32 = u_xlat69;
    u_xlat69 = (x_2896 / x_2897);
    let x_2899 : vec4<f32> = u_xlat0;
    let x_2901 : f32 = u_xlat69;
    let x_2904 : vec3<f32> = u_xlat6;
    let x_2905 : vec3<f32> = ((vec3<f32>(x_2899.x, x_2899.y, x_2899.z) * vec3<f32>(x_2901, x_2901, x_2901)) + x_2904);
    let x_2906 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2905.x, x_2905.y, x_2905.z, x_2906.w);
    let x_2908 : vec4<f32> = u_xlat8;
    let x_2910 : vec4<f32> = u_xlat10;
    let x_2913 : vec4<f32> = u_xlat7;
    let x_2915 : vec3<f32> = ((vec3<f32>(x_2908.x, x_2908.y, x_2908.z) * vec3<f32>(x_2910.x, x_2910.y, x_2910.z)) + vec3<f32>(x_2913.x, x_2913.y, x_2913.z));
    let x_2916 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2916.w);

    continuing {
      let x_2918 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2918 + bitcast<u32>(1i));
    }
  }
  let x_2920 : vec4<f32> = u_xlat4;
  let x_2922 : vec3<f32> = u_xlat5;
  let x_2925 : vec4<f32> = u_xlat2;
  let x_2927 : vec3<f32> = ((vec3<f32>(x_2920.x, x_2920.y, x_2920.z) * vec3<f32>(x_2922.x, x_2922.x, x_2922.x)) + vec3<f32>(x_2925.x, x_2925.y, x_2925.w));
  let x_2928 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2927.x, x_2927.y, x_2927.z, x_2928.w);
  let x_2932 : vec4<f32> = u_xlat7;
  let x_2934 : vec4<f32> = u_xlat0;
  let x_2936 : vec3<f32> = (vec3<f32>(x_2932.x, x_2932.y, x_2932.z) + vec3<f32>(x_2934.x, x_2934.y, x_2934.z));
  let x_2937 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2936.x, x_2936.y, x_2936.z, x_2937.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

