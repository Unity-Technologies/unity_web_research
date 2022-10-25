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
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_190 : MainLightShadows;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1972 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2420 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2548 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb63 : bool;
  var u_xlat65 : f32;
  var u_xlat3 : vec4<f32>;
  var x_164 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat66 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlat48 : f32;
  var u_xlatb69 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat28 : f32;
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
  var u_xlat72 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlatb25 : vec2<bool>;
  var u_xlatb46 : bool;
  var x_1918 : f32;
  var u_xlat25 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var x_2039 : f32;
  var x_2051 : vec3<f32>;
  var u_xlatu65 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat71 : f32;
  var u_xlatu71 : u32;
  var u_xlati72 : i32;
  var u_xlati71 : i32;
  var u_xlati73 : i32;
  var u_xlatb71 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2841 : f32;
  var x_2854 : f32;
  var x_2906 : f32;
  var x_2917 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_3113 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_44.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_82 : vec3<f32> = u_xlat2;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat63 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat63;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat63;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat63 = x_110;
  let x_111 : f32 = u_xlat63;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat63 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat63;
  u_xlatb63 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb63;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat65 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat65;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_154 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_154;
  let x_157 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_157;
  let x_161 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_161;
  let x_163 : bool = u_xlatb63;
  if (x_163) {
    let x_167 : vec3<f32> = u_xlat2;
    x_164 = x_167;
  } else {
    let x_169 : vec4<f32> = u_xlat3;
    x_164 = vec3<f32>(x_169.x, x_169.y, x_169.z);
  }
  let x_171 : vec3<f32> = x_164;
  u_xlat2 = x_171;
  let x_173 : vec3<f32> = vs_TEXCOORD2;
  let x_174 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_173, x_174);
  let x_176 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_176);
  let x_178 : f32 = u_xlat63;
  let x_180 : vec3<f32> = vs_TEXCOORD2;
  let x_181 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * x_180);
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_192 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres0;
  let x_195 : vec3<f32> = (x_185 + -(vec3<f32>(x_192.x, x_192.y, x_192.z)));
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec3<f32> = vs_TEXCOORD1;
  let x_201 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres1;
  let x_204 : vec3<f32> = (x_199 + -(vec3<f32>(x_201.x, x_201.y, x_201.z)));
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : vec3<f32> = vs_TEXCOORD1;
  let x_211 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres2;
  let x_214 : vec3<f32> = (x_208 + -(vec3<f32>(x_211.x, x_211.y, x_211.z)));
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec3<f32> = vs_TEXCOORD1;
  let x_221 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres3;
  let x_224 : vec3<f32> = (x_218 + -(vec3<f32>(x_221.x, x_221.y, x_221.z)));
  let x_225 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec4<f32> = u_xlat5;
  let x_235 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec4<f32> = u_xlat6;
  let x_241 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_245 : vec4<f32> = u_xlat7;
  let x_247 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_254 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = x_190.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_254 < x_257);
  let x_260 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_260);
  let x_264 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_264);
  let x_268 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_268);
  let x_272 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_272);
  let x_276 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_276);
  let x_282 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_282);
  let x_286 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_286);
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec3<f32> = (vec3<f32>(x_289.x, x_289.y, x_289.z) + vec3<f32>(x_291.y, x_291.z, x_291.w));
  let x_294 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec3<f32> = max(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_300.x, x_299.x, x_299.y, x_299.z);
  let x_302 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_302, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_308 : f32 = u_xlat63;
  u_xlat63 = (-(x_308) + 4.0f);
  let x_313 : f32 = u_xlat63;
  u_xlatu63 = u32(x_313);
  let x_317 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_317) << bitcast<u32>(2i));
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_322 : i32 = u_xlati63;
  let x_325 : i32 = u_xlati63;
  let x_329 : vec4<f32> = x_190.x_MainLightWorldToShadow[((x_322 + 1i) / 4i)][((x_325 + 1i) % 4i)];
  let x_331 : vec3<f32> = (vec3<f32>(x_320.y, x_320.y, x_320.y) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : i32 = u_xlati63;
  let x_336 : i32 = u_xlati63;
  let x_339 : vec4<f32> = x_190.x_MainLightWorldToShadow[(x_334 / 4i)][(x_336 % 4i)];
  let x_341 : vec3<f32> = vs_TEXCOORD1;
  let x_344 : vec4<f32> = u_xlat4;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.x, x_341.x)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : i32 = u_xlati63;
  let x_352 : i32 = u_xlati63;
  let x_356 : vec4<f32> = x_190.x_MainLightWorldToShadow[((x_349 + 2i) / 4i)][((x_352 + 2i) % 4i)];
  let x_358 : vec3<f32> = vs_TEXCOORD1;
  let x_361 : vec4<f32> = u_xlat4;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.z, x_358.z, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat4;
  let x_368 : i32 = u_xlati63;
  let x_371 : i32 = u_xlati63;
  let x_375 : vec4<f32> = x_190.x_MainLightWorldToShadow[((x_368 + 3i) / 4i)][((x_371 + 3i) % 4i)];
  let x_377 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = vs_TEXCOORD1.y;
  let x_383 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_381 * x_383);
  let x_386 : f32 = x_44.unity_MatrixV[0i].z;
  let x_388 : f32 = vs_TEXCOORD1.x;
  let x_390 : f32 = u_xlat63;
  u_xlat63 = ((x_386 * x_388) + x_390);
  let x_393 : f32 = x_44.unity_MatrixV[2i].z;
  let x_395 : f32 = vs_TEXCOORD1.z;
  let x_397 : f32 = u_xlat63;
  u_xlat63 = ((x_393 * x_395) + x_397);
  let x_399 : f32 = u_xlat63;
  let x_401 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_399 + x_401);
  let x_403 : f32 = u_xlat63;
  let x_407 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_403) + -(x_407));
  let x_410 : f32 = u_xlat63;
  u_xlat63 = max(x_410, 0.0f);
  let x_412 : f32 = u_xlat63;
  let x_415 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_412 * x_415);
  u_xlat3.w = 1.0f;
  let x_420 : vec4<f32> = x_95.unity_SHAr;
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_420, x_421);
  let x_426 : vec4<f32> = x_95.unity_SHAg;
  let x_427 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_426, x_427);
  let x_432 : vec4<f32> = x_95.unity_SHAb;
  let x_433 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_432, x_433);
  let x_436 : vec4<f32> = u_xlat3;
  let x_438 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_436.y, x_436.z, x_436.z, x_436.x) * vec4<f32>(x_438.x, x_438.y, x_438.z, x_438.z));
  let x_443 : vec4<f32> = x_95.unity_SHBr;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_443, x_444);
  let x_449 : vec4<f32> = x_95.unity_SHBg;
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_449, x_450);
  let x_455 : vec4<f32> = x_95.unity_SHBb;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_455, x_456);
  let x_460 : f32 = u_xlat3.y;
  let x_462 : f32 = u_xlat3.y;
  u_xlat65 = (x_460 * x_462);
  let x_465 : f32 = u_xlat3.x;
  let x_467 : f32 = u_xlat3.x;
  let x_469 : f32 = u_xlat65;
  u_xlat65 = ((x_465 * x_467) + -(x_469));
  let x_474 : vec4<f32> = x_95.unity_SHC;
  let x_476 : f32 = u_xlat65;
  let x_479 : vec4<f32> = u_xlat7;
  let x_481 : vec3<f32> = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(x_476, x_476, x_476)) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat5;
  let x_486 : vec4<f32> = u_xlat6;
  let x_488 : vec3<f32> = (vec3<f32>(x_484.x, x_484.y, x_484.z) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat5;
  let x_493 : vec3<f32> = max(vec3<f32>(x_491.x, x_491.y, x_491.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_494 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_498 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_499 : vec2<f32> = vec2<f32>(x_498.x, x_498.y);
  let x_503 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_499.x, x_499.y));
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat6;
  let x_508 : vec4<f32> = hlslcc_FragCoord;
  let x_510 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) * vec2<f32>(x_508.x, x_508.y));
  let x_511 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
  let x_514 : f32 = u_xlat6.y;
  let x_517 : f32 = x_44.x_ScaleBiasRt.x;
  let x_520 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_514 * x_517) + x_520);
  let x_522 : f32 = u_xlat65;
  u_xlat6.z = (-(x_522) + 1.0f);
  let x_527 : f32 = x_57.x_Metallic;
  u_xlat65 = ((-(x_527) * 0.959999979f) + 0.959999979f);
  let x_533 : f32 = u_xlat65;
  u_xlat66 = (-(x_533) + 1.0f);
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : f32 = u_xlat65;
  u_xlat22 = (vec3<f32>(x_537.y, x_537.z, x_537.w) * vec3<f32>(x_539, x_539, x_539));
  let x_542 : vec4<f32> = u_xlat0;
  let x_545 : vec4<f32> = x_57.x_BaseColor;
  let x_550 : vec3<f32> = ((vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(x_545.x, x_545.y, x_545.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_551 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_554 : f32 = x_57.x_Metallic;
  let x_556 : f32 = x_57.x_Metallic;
  let x_558 : f32 = x_57.x_Metallic;
  let x_559 : vec3<f32> = vec3<f32>(x_554, x_556, x_558);
  let x_564 : vec4<f32> = u_xlat0;
  let x_569 : vec3<f32> = ((vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(x_564.x, x_564.y, x_564.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_570 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_573) + 1.0f);
  let x_577 : f32 = u_xlat65;
  let x_578 : f32 = u_xlat65;
  u_xlat67 = (x_577 * x_578);
  let x_580 : f32 = u_xlat67;
  u_xlat67 = max(x_580, 0.0078125f);
  let x_584 : f32 = u_xlat67;
  let x_585 : f32 = u_xlat67;
  u_xlat68 = (x_584 * x_585);
  let x_587 : f32 = u_xlat66;
  let x_589 : f32 = x_57.x_Smoothness;
  u_xlat66 = (x_587 + x_589);
  let x_591 : f32 = u_xlat66;
  u_xlat66 = clamp(x_591, 0.0f, 1.0f);
  let x_594 : f32 = u_xlat67;
  u_xlat27 = ((x_594 * 4.0f) + 2.0f);
  let x_602 : vec4<f32> = u_xlat6;
  let x_605 : f32 = x_44.x_GlobalMipBias.x;
  let x_606 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_602.x, x_602.z), x_605);
  u_xlat6.x = x_606.x;
  let x_611 : f32 = u_xlat6.x;
  u_xlat48 = (x_611 + -1.0f);
  let x_614 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_615 : f32 = u_xlat48;
  u_xlat48 = ((x_614 * x_615) + 1.0f);
  let x_619 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_619, 1.0f);
  let x_624 : f32 = x_190.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_624);
  let x_626 : bool = u_xlatb69;
  if (x_626) {
    let x_630 : f32 = x_190.x_MainLightShadowParams.y;
    u_xlatb69 = (x_630 == 1.0f);
    let x_632 : bool = u_xlatb69;
    if (x_632) {
      let x_635 : vec4<f32> = u_xlat4;
      let x_638 : vec4<f32> = x_190.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_635.x, x_635.y, x_635.x, x_635.y) + x_638);
      let x_641 : vec4<f32> = u_xlat7;
      let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
      let x_644 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_642.x, x_642.y, x_644);
      let x_657 : vec3<f32> = txVec0;
      let x_659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_657.xy, x_657.z);
      u_xlat8.x = x_659;
      let x_662 : vec4<f32> = u_xlat7;
      let x_663 : vec2<f32> = vec2<f32>(x_662.z, x_662.w);
      let x_665 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_663.x, x_663.y, x_665);
      let x_672 : vec3<f32> = txVec1;
      let x_674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_672.xy, x_672.z);
      u_xlat8.y = x_674;
      let x_676 : vec4<f32> = u_xlat4;
      let x_679 : vec4<f32> = x_190.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_676.x, x_676.y, x_676.x, x_676.y) + x_679);
      let x_682 : vec4<f32> = u_xlat7;
      let x_683 : vec2<f32> = vec2<f32>(x_682.x, x_682.y);
      let x_685 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_683.x, x_683.y, x_685);
      let x_692 : vec3<f32> = txVec2;
      let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_692.xy, x_692.z);
      u_xlat8.z = x_694;
      let x_697 : vec4<f32> = u_xlat7;
      let x_698 : vec2<f32> = vec2<f32>(x_697.z, x_697.w);
      let x_700 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_698.x, x_698.y, x_700);
      let x_707 : vec3<f32> = txVec3;
      let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_707.xy, x_707.z);
      u_xlat8.w = x_709;
      let x_712 : vec4<f32> = u_xlat8;
      u_xlat69 = dot(x_712, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_721 : f32 = x_190.x_MainLightShadowParams.y;
      u_xlatb7.x = (x_721 == 2.0f);
      let x_725 : bool = u_xlatb7.x;
      if (x_725) {
        let x_728 : vec4<f32> = u_xlat4;
        let x_731 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_736 : vec2<f32> = ((vec2<f32>(x_728.x, x_728.y) * vec2<f32>(x_731.z, x_731.w)) + vec2<f32>(0.5f, 0.5f));
        let x_737 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat7;
        let x_741 : vec2<f32> = floor(vec2<f32>(x_739.x, x_739.y));
        let x_742 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_741.x, x_741.y, x_742.z, x_742.w);
        let x_746 : vec4<f32> = u_xlat4;
        let x_749 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_752 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_749.z, x_749.w)) + -(vec2<f32>(x_752.x, x_752.y)));
        let x_756 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_756.x, x_756.x, x_756.y, x_756.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_761 : vec4<f32> = u_xlat8;
        let x_763 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_761.x, x_761.x, x_761.z, x_761.z) * vec4<f32>(x_763.x, x_763.x, x_763.z, x_763.z));
        let x_766 : vec4<f32> = u_xlat9;
        let x_770 : vec2<f32> = (vec2<f32>(x_766.y, x_766.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_771 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_770.x, x_771.y, x_770.y, x_771.w);
        let x_773 : vec4<f32> = u_xlat9;
        let x_776 : vec2<f32> = u_xlat49;
        let x_778 : vec2<f32> = ((vec2<f32>(x_773.x, x_773.z) * vec2<f32>(0.5f, 0.5f)) + -(x_776));
        let x_779 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
        let x_782 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_782) + vec2<f32>(1.0f, 1.0f));
        let x_786 : vec2<f32> = u_xlat49;
        let x_788 : vec2<f32> = min(x_786, vec2<f32>(0.0f, 0.0f));
        let x_789 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
        let x_791 : vec4<f32> = u_xlat10;
        let x_794 : vec4<f32> = u_xlat10;
        let x_797 : vec2<f32> = u_xlat51;
        let x_798 : vec2<f32> = ((-(vec2<f32>(x_791.x, x_791.y)) * vec2<f32>(x_794.x, x_794.y)) + x_797);
        let x_799 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_798.x, x_798.y, x_799.z, x_799.w);
        let x_801 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_801, vec2<f32>(0.0f, 0.0f));
        let x_803 : vec2<f32> = u_xlat49;
        let x_805 : vec2<f32> = u_xlat49;
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_803) * x_805) + vec2<f32>(x_807.y, x_807.w));
        let x_810 : vec4<f32> = u_xlat10;
        let x_812 : vec2<f32> = (vec2<f32>(x_810.x, x_810.y) + vec2<f32>(1.0f, 1.0f));
        let x_813 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
        let x_815 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_815 + vec2<f32>(1.0f, 1.0f));
        let x_818 : vec4<f32> = u_xlat9;
        let x_822 : vec2<f32> = (vec2<f32>(x_818.x, x_818.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_823 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
        let x_825 : vec2<f32> = u_xlat51;
        let x_826 : vec2<f32> = (x_825 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_827 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat10;
        let x_831 : vec2<f32> = (vec2<f32>(x_829.x, x_829.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_832 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
        let x_835 : vec2<f32> = u_xlat49;
        let x_836 : vec2<f32> = (x_835 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_837 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_836.x, x_836.y, x_837.z, x_837.w);
        let x_839 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_839.y, x_839.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_843 : f32 = u_xlat10.x;
        u_xlat11.z = x_843;
        let x_846 : f32 = u_xlat49.x;
        u_xlat11.w = x_846;
        let x_849 : f32 = u_xlat12.x;
        u_xlat9.z = x_849;
        let x_852 : f32 = u_xlat8.x;
        u_xlat9.w = x_852;
        let x_855 : vec4<f32> = u_xlat9;
        let x_857 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_855.z, x_855.w, x_855.x, x_855.z) + vec4<f32>(x_857.z, x_857.w, x_857.x, x_857.z));
        let x_861 : f32 = u_xlat11.y;
        u_xlat10.z = x_861;
        let x_864 : f32 = u_xlat49.y;
        u_xlat10.w = x_864;
        let x_867 : f32 = u_xlat9.y;
        u_xlat12.z = x_867;
        let x_870 : f32 = u_xlat8.z;
        u_xlat12.w = x_870;
        let x_872 : vec4<f32> = u_xlat10;
        let x_874 : vec4<f32> = u_xlat12;
        let x_876 : vec3<f32> = (vec3<f32>(x_872.z, x_872.y, x_872.w) + vec3<f32>(x_874.z, x_874.y, x_874.w));
        let x_877 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
        let x_879 : vec4<f32> = u_xlat9;
        let x_881 : vec4<f32> = u_xlat13;
        let x_883 : vec3<f32> = (vec3<f32>(x_879.x, x_879.z, x_879.w) / vec3<f32>(x_881.z, x_881.w, x_881.y));
        let x_884 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
        let x_886 : vec4<f32> = u_xlat9;
        let x_892 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_893 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
        let x_895 : vec4<f32> = u_xlat12;
        let x_897 : vec4<f32> = u_xlat8;
        let x_899 : vec3<f32> = (vec3<f32>(x_895.z, x_895.y, x_895.w) / vec3<f32>(x_897.x, x_897.y, x_897.z));
        let x_900 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
        let x_902 : vec4<f32> = u_xlat10;
        let x_904 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_905 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
        let x_907 : vec4<f32> = u_xlat9;
        let x_910 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_912 : vec3<f32> = (vec3<f32>(x_907.y, x_907.x, x_907.z) * vec3<f32>(x_910.x, x_910.x, x_910.x));
        let x_913 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
        let x_915 : vec4<f32> = u_xlat10;
        let x_918 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_920 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) * vec3<f32>(x_918.y, x_918.y, x_918.y));
        let x_921 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
        let x_924 : f32 = u_xlat10.x;
        u_xlat9.w = x_924;
        let x_926 : vec4<f32> = u_xlat7;
        let x_929 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_932 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_926.x, x_926.y, x_926.x, x_926.y) * vec4<f32>(x_929.x, x_929.y, x_929.x, x_929.y)) + vec4<f32>(x_932.y, x_932.w, x_932.x, x_932.w));
        let x_935 : vec4<f32> = u_xlat7;
        let x_938 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_935.x, x_935.y) * vec2<f32>(x_938.x, x_938.y)) + vec2<f32>(x_941.z, x_941.w));
        let x_945 : f32 = u_xlat9.y;
        u_xlat10.w = x_945;
        let x_947 : vec4<f32> = u_xlat10;
        let x_948 : vec2<f32> = vec2<f32>(x_947.y, x_947.z);
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_949.x, x_948.x, x_949.z, x_948.y);
        let x_951 : vec4<f32> = u_xlat7;
        let x_954 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_957 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_951.x, x_951.y, x_951.x, x_951.y) * vec4<f32>(x_954.x, x_954.y, x_954.x, x_954.y)) + vec4<f32>(x_957.x, x_957.y, x_957.z, x_957.y));
        let x_960 : vec4<f32> = u_xlat7;
        let x_963 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.y) * vec4<f32>(x_963.x, x_963.y, x_963.x, x_963.y)) + vec4<f32>(x_966.w, x_966.y, x_966.w, x_966.z));
        let x_969 : vec4<f32> = u_xlat7;
        let x_972 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_975 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_969.x, x_969.y, x_969.x, x_969.y) * vec4<f32>(x_972.x, x_972.y, x_972.x, x_972.y)) + vec4<f32>(x_975.x, x_975.w, x_975.z, x_975.w));
        let x_979 : vec4<f32> = u_xlat8;
        let x_981 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_979.x, x_979.x, x_979.x, x_979.y) * vec4<f32>(x_981.z, x_981.w, x_981.y, x_981.z));
        let x_985 : vec4<f32> = u_xlat8;
        let x_987 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_985.y, x_985.y, x_985.z, x_985.z) * x_987);
        let x_990 : f32 = u_xlat8.z;
        let x_992 : f32 = u_xlat13.y;
        u_xlat7.x = (x_990 * x_992);
        let x_996 : vec4<f32> = u_xlat11;
        let x_997 : vec2<f32> = vec2<f32>(x_996.x, x_996.y);
        let x_999 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_997.x, x_997.y, x_999);
        let x_1007 : vec3<f32> = txVec4;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1007.xy, x_1007.z);
        u_xlat28 = x_1009;
        let x_1011 : vec4<f32> = u_xlat11;
        let x_1012 : vec2<f32> = vec2<f32>(x_1011.z, x_1011.w);
        let x_1014 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
        let x_1021 : vec3<f32> = txVec5;
        let x_1023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1021.xy, x_1021.z);
        u_xlat8.x = x_1023;
        let x_1026 : f32 = u_xlat8.x;
        let x_1028 : f32 = u_xlat14.y;
        u_xlat8.x = (x_1026 * x_1028);
        let x_1032 : f32 = u_xlat14.x;
        let x_1033 : f32 = u_xlat28;
        let x_1036 : f32 = u_xlat8.x;
        u_xlat28 = ((x_1032 * x_1033) + x_1036);
        let x_1039 : vec2<f32> = u_xlat49;
        let x_1041 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1039.x, x_1039.y, x_1041);
        let x_1048 : vec3<f32> = txVec6;
        let x_1050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1048.xy, x_1048.z);
        u_xlat49.x = x_1050;
        let x_1053 : f32 = u_xlat14.z;
        let x_1055 : f32 = u_xlat49.x;
        let x_1057 : f32 = u_xlat28;
        u_xlat28 = ((x_1053 * x_1055) + x_1057);
        let x_1060 : vec4<f32> = u_xlat10;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.x, x_1060.y);
        let x_1063 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1070 : vec3<f32> = txVec7;
        let x_1072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1070.xy, x_1070.z);
        u_xlat49.x = x_1072;
        let x_1075 : f32 = u_xlat14.w;
        let x_1077 : f32 = u_xlat49.x;
        let x_1079 : f32 = u_xlat28;
        u_xlat28 = ((x_1075 * x_1077) + x_1079);
        let x_1082 : vec4<f32> = u_xlat12;
        let x_1083 : vec2<f32> = vec2<f32>(x_1082.x, x_1082.y);
        let x_1085 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1083.x, x_1083.y, x_1085);
        let x_1092 : vec3<f32> = txVec8;
        let x_1094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1092.xy, x_1092.z);
        u_xlat49.x = x_1094;
        let x_1097 : f32 = u_xlat15.x;
        let x_1099 : f32 = u_xlat49.x;
        let x_1101 : f32 = u_xlat28;
        u_xlat28 = ((x_1097 * x_1099) + x_1101);
        let x_1104 : vec4<f32> = u_xlat12;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.z, x_1104.w);
        let x_1107 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1105.x, x_1105.y, x_1107);
        let x_1114 : vec3<f32> = txVec9;
        let x_1116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1114.xy, x_1114.z);
        u_xlat49.x = x_1116;
        let x_1119 : f32 = u_xlat15.y;
        let x_1121 : f32 = u_xlat49.x;
        let x_1123 : f32 = u_xlat28;
        u_xlat28 = ((x_1119 * x_1121) + x_1123);
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.z, x_1126.w);
        let x_1129 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec10;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1136.xy, x_1136.z);
        u_xlat49.x = x_1138;
        let x_1141 : f32 = u_xlat15.z;
        let x_1143 : f32 = u_xlat49.x;
        let x_1145 : f32 = u_xlat28;
        u_xlat28 = ((x_1141 * x_1143) + x_1145);
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.x, x_1148.y);
        let x_1151 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1158 : vec3<f32> = txVec11;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1158.xy, x_1158.z);
        u_xlat49.x = x_1160;
        let x_1163 : f32 = u_xlat15.w;
        let x_1165 : f32 = u_xlat49.x;
        let x_1167 : f32 = u_xlat28;
        u_xlat28 = ((x_1163 * x_1165) + x_1167);
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1171 : vec2<f32> = vec2<f32>(x_1170.z, x_1170.w);
        let x_1173 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1171.x, x_1171.y, x_1173);
        let x_1180 : vec3<f32> = txVec12;
        let x_1182 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1180.xy, x_1180.z);
        u_xlat49.x = x_1182;
        let x_1185 : f32 = u_xlat7.x;
        let x_1187 : f32 = u_xlat49.x;
        let x_1189 : f32 = u_xlat28;
        u_xlat69 = ((x_1185 * x_1187) + x_1189);
      } else {
        let x_1192 : vec4<f32> = u_xlat4;
        let x_1195 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1198 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1195.z, x_1195.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1199 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1198.x, x_1198.y, x_1199.z, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat7;
        let x_1203 : vec2<f32> = floor(vec2<f32>(x_1201.x, x_1201.y));
        let x_1204 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat4;
        let x_1209 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1206.x, x_1206.y) * vec2<f32>(x_1209.z, x_1209.w)) + -(vec2<f32>(x_1212.x, x_1212.y)));
        let x_1216 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1216.x, x_1216.x, x_1216.y, x_1216.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1219 : vec4<f32> = u_xlat8;
        let x_1221 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1219.x, x_1219.x, x_1219.z, x_1219.z) * vec4<f32>(x_1221.x, x_1221.x, x_1221.z, x_1221.z));
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1228 : vec2<f32> = (vec2<f32>(x_1224.y, x_1224.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1229.x, x_1228.x, x_1229.z, x_1228.y);
        let x_1231 : vec4<f32> = u_xlat9;
        let x_1234 : vec2<f32> = u_xlat49;
        let x_1236 : vec2<f32> = ((vec2<f32>(x_1231.x, x_1231.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1234));
        let x_1237 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1236.x, x_1237.y, x_1236.y, x_1237.w);
        let x_1239 : vec2<f32> = u_xlat49;
        let x_1241 : vec2<f32> = (-(x_1239) + vec2<f32>(1.0f, 1.0f));
        let x_1242 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1244 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1244, vec2<f32>(0.0f, 0.0f));
        let x_1246 : vec2<f32> = u_xlat51;
        let x_1248 : vec2<f32> = u_xlat51;
        let x_1250 : vec4<f32> = u_xlat9;
        let x_1252 : vec2<f32> = ((-(x_1246) * x_1248) + vec2<f32>(x_1250.x, x_1250.y));
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1252.x, x_1252.y, x_1253.z, x_1253.w);
        let x_1255 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1255, vec2<f32>(0.0f, 0.0f));
        let x_1258 : vec2<f32> = u_xlat51;
        let x_1260 : vec2<f32> = u_xlat51;
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1264 : vec2<f32> = ((-(x_1258) * x_1260) + vec2<f32>(x_1262.y, x_1262.w));
        let x_1265 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1264.x, x_1265.y, x_1264.y);
        let x_1267 : vec4<f32> = u_xlat9;
        let x_1270 : vec2<f32> = (vec2<f32>(x_1267.x, x_1267.y) + vec2<f32>(2.0f, 2.0f));
        let x_1271 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
        let x_1273 : vec3<f32> = u_xlat29;
        let x_1275 : vec2<f32> = (vec2<f32>(x_1273.x, x_1273.z) + vec2<f32>(2.0f, 2.0f));
        let x_1276 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1276.x, x_1275.x, x_1276.z, x_1275.y);
        let x_1279 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1279 * 0.081632003f);
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1286 : vec3<f32> = (vec3<f32>(x_1283.z, x_1283.x, x_1283.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1287 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
        let x_1289 : vec4<f32> = u_xlat9;
        let x_1292 : vec2<f32> = (vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1293 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1292.x, x_1292.y, x_1293.z, x_1293.w);
        let x_1296 : f32 = u_xlat12.y;
        u_xlat11.x = x_1296;
        let x_1298 : vec2<f32> = u_xlat49;
        let x_1305 : vec2<f32> = ((vec2<f32>(x_1298.x, x_1298.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1306 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1306.x, x_1305.x, x_1306.z, x_1305.y);
        let x_1308 : vec2<f32> = u_xlat49;
        let x_1312 : vec2<f32> = ((vec2<f32>(x_1308.x, x_1308.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1313 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1312.x, x_1313.y, x_1312.y, x_1313.w);
        let x_1316 : f32 = u_xlat8.x;
        u_xlat9.y = x_1316;
        let x_1319 : f32 = u_xlat10.y;
        u_xlat9.w = x_1319;
        let x_1321 : vec4<f32> = u_xlat9;
        let x_1322 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1321 + x_1322);
        let x_1324 : vec2<f32> = u_xlat49;
        let x_1327 : vec2<f32> = ((vec2<f32>(x_1324.y, x_1324.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1328 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1328.x, x_1327.x, x_1328.z, x_1327.y);
        let x_1330 : vec2<f32> = u_xlat49;
        let x_1333 : vec2<f32> = ((vec2<f32>(x_1330.y, x_1330.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1333.x, x_1334.y, x_1333.y, x_1334.w);
        let x_1337 : f32 = u_xlat8.y;
        u_xlat10.y = x_1337;
        let x_1339 : vec4<f32> = u_xlat10;
        let x_1340 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1339 + x_1340);
        let x_1342 : vec4<f32> = u_xlat9;
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1342 / x_1343);
        let x_1345 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1345 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1351 : vec4<f32> = u_xlat10;
        let x_1352 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1351 / x_1352);
        let x_1354 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1354 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1356 : vec4<f32> = u_xlat9;
        let x_1359 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1356.w, x_1356.x, x_1356.y, x_1356.z) * vec4<f32>(x_1359.x, x_1359.x, x_1359.x, x_1359.x));
        let x_1362 : vec4<f32> = u_xlat10;
        let x_1365 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1362.x, x_1362.w, x_1362.y, x_1362.z) * vec4<f32>(x_1365.y, x_1365.y, x_1365.y, x_1365.y));
        let x_1368 : vec4<f32> = u_xlat9;
        let x_1369 : vec3<f32> = vec3<f32>(x_1368.y, x_1368.z, x_1368.w);
        let x_1370 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1369.x, x_1370.y, x_1369.y, x_1369.z);
        let x_1373 : f32 = u_xlat10.x;
        u_xlat12.y = x_1373;
        let x_1375 : vec4<f32> = u_xlat7;
        let x_1378 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.y) * vec4<f32>(x_1378.x, x_1378.y, x_1378.x, x_1378.y)) + vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1381.y));
        let x_1384 : vec4<f32> = u_xlat7;
        let x_1387 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1390.w, x_1390.y));
        let x_1394 : f32 = u_xlat12.y;
        u_xlat9.y = x_1394;
        let x_1397 : f32 = u_xlat10.z;
        u_xlat12.y = x_1397;
        let x_1399 : vec4<f32> = u_xlat7;
        let x_1402 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1405 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1399.x, x_1399.y, x_1399.x, x_1399.y) * vec4<f32>(x_1402.x, x_1402.y, x_1402.x, x_1402.y)) + vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1405.y));
        let x_1408 : vec4<f32> = u_xlat7;
        let x_1411 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1414 : vec4<f32> = u_xlat12;
        let x_1416 : vec2<f32> = ((vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(x_1411.x, x_1411.y)) + vec2<f32>(x_1414.w, x_1414.y));
        let x_1417 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
        let x_1420 : f32 = u_xlat12.y;
        u_xlat9.z = x_1420;
        let x_1423 : vec4<f32> = u_xlat7;
        let x_1426 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1423.x, x_1423.y, x_1423.x, x_1423.y) * vec4<f32>(x_1426.x, x_1426.y, x_1426.x, x_1426.y)) + vec4<f32>(x_1429.x, x_1429.y, x_1429.x, x_1429.z));
        let x_1433 : f32 = u_xlat10.w;
        u_xlat12.y = x_1433;
        let x_1436 : vec4<f32> = u_xlat7;
        let x_1439 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1442 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1436.x, x_1436.y, x_1436.x, x_1436.y) * vec4<f32>(x_1439.x, x_1439.y, x_1439.x, x_1439.y)) + vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1442.y));
        let x_1446 : vec4<f32> = u_xlat7;
        let x_1449 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1452 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1446.x, x_1446.y) * vec2<f32>(x_1449.x, x_1449.y)) + vec2<f32>(x_1452.w, x_1452.y));
        let x_1456 : f32 = u_xlat12.y;
        u_xlat9.w = x_1456;
        let x_1459 : vec4<f32> = u_xlat7;
        let x_1462 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1465 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1459.x, x_1459.y) * vec2<f32>(x_1462.x, x_1462.y)) + vec2<f32>(x_1465.x, x_1465.w));
        let x_1468 : vec4<f32> = u_xlat12;
        let x_1469 : vec3<f32> = vec3<f32>(x_1468.x, x_1468.z, x_1468.w);
        let x_1470 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1469.x, x_1470.y, x_1469.y, x_1469.z);
        let x_1472 : vec4<f32> = u_xlat7;
        let x_1475 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1478 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1472.x, x_1472.y, x_1472.x, x_1472.y) * vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.y)) + vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1478.y));
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1485 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1485.x, x_1485.y)) + vec2<f32>(x_1488.w, x_1488.y));
        let x_1492 : f32 = u_xlat9.x;
        u_xlat10.x = x_1492;
        let x_1494 : vec4<f32> = u_xlat7;
        let x_1497 : vec4<f32> = x_190.x_MainLightShadowmapSize;
        let x_1500 : vec4<f32> = u_xlat10;
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1494.x, x_1494.y) * vec2<f32>(x_1497.x, x_1497.y)) + vec2<f32>(x_1500.x, x_1500.y));
        let x_1503 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
        let x_1506 : vec4<f32> = u_xlat8;
        let x_1508 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1506.x, x_1506.x, x_1506.x, x_1506.x) * x_1508);
        let x_1511 : vec4<f32> = u_xlat8;
        let x_1513 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1511.y, x_1511.y, x_1511.y, x_1511.y) * x_1513);
        let x_1516 : vec4<f32> = u_xlat8;
        let x_1518 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1516.z, x_1516.z, x_1516.z, x_1516.z) * x_1518);
        let x_1520 : vec4<f32> = u_xlat8;
        let x_1522 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1520.w, x_1520.w, x_1520.w, x_1520.w) * x_1522);
        let x_1525 : vec4<f32> = u_xlat13;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec13;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1535.xy, x_1535.z);
        u_xlat9.x = x_1537;
        let x_1540 : vec4<f32> = u_xlat13;
        let x_1541 : vec2<f32> = vec2<f32>(x_1540.z, x_1540.w);
        let x_1543 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1551 : vec3<f32> = txVec14;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1551.xy, x_1551.z);
        u_xlat72 = x_1553;
        let x_1554 : f32 = u_xlat72;
        let x_1556 : f32 = u_xlat18.y;
        u_xlat72 = (x_1554 * x_1556);
        let x_1559 : f32 = u_xlat18.x;
        let x_1561 : f32 = u_xlat9.x;
        let x_1563 : f32 = u_xlat72;
        u_xlat9.x = ((x_1559 * x_1561) + x_1563);
        let x_1567 : vec2<f32> = u_xlat49;
        let x_1569 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec15;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1576.xy, x_1576.z);
        u_xlat49.x = x_1578;
        let x_1581 : f32 = u_xlat18.z;
        let x_1583 : f32 = u_xlat49.x;
        let x_1586 : f32 = u_xlat9.x;
        u_xlat49.x = ((x_1581 * x_1583) + x_1586);
        let x_1590 : vec4<f32> = u_xlat16;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
        let x_1593 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1601 : vec3<f32> = txVec16;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1601.xy, x_1601.z);
        u_xlat70 = x_1603;
        let x_1605 : f32 = u_xlat18.w;
        let x_1606 : f32 = u_xlat70;
        let x_1609 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1605 * x_1606) + x_1609);
        let x_1613 : vec4<f32> = u_xlat14;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.x, x_1613.y);
        let x_1616 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec17;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1623.xy, x_1623.z);
        u_xlat70 = x_1625;
        let x_1627 : f32 = u_xlat19.x;
        let x_1628 : f32 = u_xlat70;
        let x_1631 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1627 * x_1628) + x_1631);
        let x_1635 : vec4<f32> = u_xlat14;
        let x_1636 : vec2<f32> = vec2<f32>(x_1635.z, x_1635.w);
        let x_1638 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec18;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1645.xy, x_1645.z);
        u_xlat70 = x_1647;
        let x_1649 : f32 = u_xlat19.y;
        let x_1650 : f32 = u_xlat70;
        let x_1653 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1649 * x_1650) + x_1653);
        let x_1657 : vec4<f32> = u_xlat15;
        let x_1658 : vec2<f32> = vec2<f32>(x_1657.x, x_1657.y);
        let x_1660 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec19;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1667.xy, x_1667.z);
        u_xlat70 = x_1669;
        let x_1671 : f32 = u_xlat19.z;
        let x_1672 : f32 = u_xlat70;
        let x_1675 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1671 * x_1672) + x_1675);
        let x_1679 : vec4<f32> = u_xlat16;
        let x_1680 : vec2<f32> = vec2<f32>(x_1679.z, x_1679.w);
        let x_1682 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec20;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1689.xy, x_1689.z);
        u_xlat70 = x_1691;
        let x_1693 : f32 = u_xlat19.w;
        let x_1694 : f32 = u_xlat70;
        let x_1697 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1693 * x_1694) + x_1697);
        let x_1701 : vec4<f32> = u_xlat17;
        let x_1702 : vec2<f32> = vec2<f32>(x_1701.x, x_1701.y);
        let x_1704 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1702.x, x_1702.y, x_1704);
        let x_1711 : vec3<f32> = txVec21;
        let x_1713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1711.xy, x_1711.z);
        u_xlat70 = x_1713;
        let x_1715 : f32 = u_xlat20.x;
        let x_1716 : f32 = u_xlat70;
        let x_1719 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1715 * x_1716) + x_1719);
        let x_1723 : vec4<f32> = u_xlat17;
        let x_1724 : vec2<f32> = vec2<f32>(x_1723.z, x_1723.w);
        let x_1726 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1724.x, x_1724.y, x_1726);
        let x_1733 : vec3<f32> = txVec22;
        let x_1735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1733.xy, x_1733.z);
        u_xlat70 = x_1735;
        let x_1737 : f32 = u_xlat20.y;
        let x_1738 : f32 = u_xlat70;
        let x_1741 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1737 * x_1738) + x_1741);
        let x_1745 : vec2<f32> = u_xlat30;
        let x_1747 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
        let x_1754 : vec3<f32> = txVec23;
        let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1754.xy, x_1754.z);
        u_xlat70 = x_1756;
        let x_1758 : f32 = u_xlat20.z;
        let x_1759 : f32 = u_xlat70;
        let x_1762 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1758 * x_1759) + x_1762);
        let x_1766 : vec2<f32> = u_xlat57;
        let x_1768 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec24;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1775.xy, x_1775.z);
        u_xlat70 = x_1777;
        let x_1779 : f32 = u_xlat20.w;
        let x_1780 : f32 = u_xlat70;
        let x_1783 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1779 * x_1780) + x_1783);
        let x_1787 : vec4<f32> = u_xlat12;
        let x_1788 : vec2<f32> = vec2<f32>(x_1787.x, x_1787.y);
        let x_1790 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1788.x, x_1788.y, x_1790);
        let x_1797 : vec3<f32> = txVec25;
        let x_1799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1797.xy, x_1797.z);
        u_xlat70 = x_1799;
        let x_1801 : f32 = u_xlat8.x;
        let x_1802 : f32 = u_xlat70;
        let x_1805 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1801 * x_1802) + x_1805);
        let x_1809 : vec4<f32> = u_xlat12;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.z, x_1809.w);
        let x_1812 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec26;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1819.xy, x_1819.z);
        u_xlat70 = x_1821;
        let x_1823 : f32 = u_xlat8.y;
        let x_1824 : f32 = u_xlat70;
        let x_1827 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1823 * x_1824) + x_1827);
        let x_1831 : vec2<f32> = u_xlat52;
        let x_1833 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1831.x, x_1831.y, x_1833);
        let x_1840 : vec3<f32> = txVec27;
        let x_1842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1840.xy, x_1840.z);
        u_xlat70 = x_1842;
        let x_1844 : f32 = u_xlat8.z;
        let x_1845 : f32 = u_xlat70;
        let x_1848 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1844 * x_1845) + x_1848);
        let x_1852 : vec4<f32> = u_xlat7;
        let x_1853 : vec2<f32> = vec2<f32>(x_1852.x, x_1852.y);
        let x_1855 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1853.x, x_1853.y, x_1855);
        let x_1862 : vec3<f32> = txVec28;
        let x_1864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1862.xy, x_1862.z);
        u_xlat7.x = x_1864;
        let x_1867 : f32 = u_xlat8.w;
        let x_1869 : f32 = u_xlat7.x;
        let x_1872 : f32 = u_xlat49.x;
        u_xlat69 = ((x_1867 * x_1869) + x_1872);
      }
    }
  } else {
    let x_1876 : vec4<f32> = u_xlat4;
    let x_1877 : vec2<f32> = vec2<f32>(x_1876.x, x_1876.y);
    let x_1879 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
    let x_1886 : vec3<f32> = txVec29;
    let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1886.xy, x_1886.z);
    u_xlat69 = x_1888;
  }
  let x_1890 : f32 = x_190.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1890) + 1.0f);
  let x_1894 : f32 = u_xlat69;
  let x_1896 : f32 = x_190.x_MainLightShadowParams.x;
  let x_1899 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1894 * x_1896) + x_1899);
  let x_1904 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_1904);
  let x_1909 : f32 = u_xlat4.z;
  u_xlatb46 = (x_1909 >= 1.0f);
  let x_1911 : bool = u_xlatb46;
  let x_1913 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_1911 | x_1913);
  let x_1917 : bool = u_xlatb25.x;
  if (x_1917) {
    x_1918 = 1.0f;
  } else {
    let x_1923 : f32 = u_xlat4.x;
    x_1918 = x_1923;
  }
  let x_1924 : f32 = x_1918;
  u_xlat4.x = x_1924;
  let x_1926 : vec3<f32> = vs_TEXCOORD1;
  let x_1928 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1930 : vec3<f32> = (x_1926 + -(x_1928));
  let x_1931 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
  let x_1934 : vec4<f32> = u_xlat7;
  let x_1936 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(vec3<f32>(x_1934.x, x_1934.y, x_1934.z), vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1941 : f32 = u_xlat25.x;
  let x_1943 : f32 = x_190.x_MainLightShadowParams.z;
  let x_1946 : f32 = x_190.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1941 * x_1943) + x_1946);
  let x_1950 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1950, 0.0f, 1.0f);
  let x_1955 : f32 = u_xlat4.x;
  u_xlat46.x = (-(x_1955) + 1.0f);
  let x_1960 : f32 = u_xlat25.x;
  let x_1962 : f32 = u_xlat46.x;
  let x_1965 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1960 * x_1962) + x_1965);
  let x_1974 : f32 = x_1972.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_1974 == -1.0f));
  let x_1978 : bool = u_xlatb25.x;
  if (x_1978) {
    let x_1981 : vec3<f32> = vs_TEXCOORD1;
    let x_1984 : vec4<f32> = x_1972.x_MainLightWorldToLight[1i];
    u_xlat25 = (vec2<f32>(x_1981.y, x_1981.y) * vec2<f32>(x_1984.x, x_1984.y));
    let x_1988 : vec4<f32> = x_1972.x_MainLightWorldToLight[0i];
    let x_1990 : vec3<f32> = vs_TEXCOORD1;
    let x_1993 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_1988.x, x_1988.y) * vec2<f32>(x_1990.x, x_1990.x)) + x_1993);
    let x_1996 : vec4<f32> = x_1972.x_MainLightWorldToLight[2i];
    let x_1998 : vec3<f32> = vs_TEXCOORD1;
    let x_2001 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_1996.x, x_1996.y) * vec2<f32>(x_1998.z, x_1998.z)) + x_2001);
    let x_2003 : vec2<f32> = u_xlat25;
    let x_2005 : vec4<f32> = x_1972.x_MainLightWorldToLight[3i];
    u_xlat25 = (x_2003 + vec2<f32>(x_2005.x, x_2005.y));
    let x_2008 : vec2<f32> = u_xlat25;
    u_xlat25 = ((x_2008 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2016 : vec2<f32> = u_xlat25;
    let x_2018 : f32 = x_44.x_GlobalMipBias.x;
    let x_2019 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2016, x_2018);
    u_xlat7 = x_2019;
    let x_2021 : f32 = x_1972.x_MainLightCookieTextureFormat;
    let x_2023 : f32 = x_1972.x_MainLightCookieTextureFormat;
    let x_2025 : f32 = x_1972.x_MainLightCookieTextureFormat;
    let x_2027 : f32 = x_1972.x_MainLightCookieTextureFormat;
    let x_2028 : vec4<f32> = vec4<f32>(x_2021, x_2023, x_2025, x_2027);
    let x_2035 : vec4<bool> = (vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2028.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2035.x, x_2035.y);
    let x_2038 : bool = u_xlatb25.y;
    if (x_2038) {
      let x_2043 : f32 = u_xlat7.w;
      x_2039 = x_2043;
    } else {
      let x_2046 : f32 = u_xlat7.x;
      x_2039 = x_2046;
    }
    let x_2047 : f32 = x_2039;
    u_xlat46.x = x_2047;
    let x_2050 : bool = u_xlatb25.x;
    if (x_2050) {
      let x_2054 : vec4<f32> = u_xlat7;
      x_2051 = vec3<f32>(x_2054.x, x_2054.y, x_2054.z);
    } else {
      let x_2057 : vec2<f32> = u_xlat46;
      x_2051 = vec3<f32>(x_2057.x, x_2057.x, x_2057.x);
    }
    let x_2059 : vec3<f32> = x_2051;
    let x_2060 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2066 : vec4<f32> = u_xlat7;
  let x_2069 : vec4<f32> = x_44.x_MainLightColor;
  let x_2071 : vec3<f32> = (vec3<f32>(x_2066.x, x_2066.y, x_2066.z) * vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
  let x_2072 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
  let x_2074 : f32 = u_xlat48;
  let x_2076 : vec4<f32> = u_xlat7;
  let x_2078 : vec3<f32> = (vec3<f32>(x_2074, x_2074, x_2074) * vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
  let x_2079 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
  let x_2081 : vec3<f32> = u_xlat2;
  let x_2083 : vec4<f32> = u_xlat3;
  u_xlat25.x = dot(-(x_2081), vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
  let x_2088 : f32 = u_xlat25.x;
  let x_2090 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2088 + x_2090);
  let x_2093 : vec4<f32> = u_xlat3;
  let x_2095 : vec2<f32> = u_xlat25;
  let x_2099 : vec3<f32> = u_xlat2;
  let x_2101 : vec3<f32> = ((vec3<f32>(x_2093.x, x_2093.y, x_2093.z) * -(vec3<f32>(x_2095.x, x_2095.x, x_2095.x))) + -(x_2099));
  let x_2102 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);
  let x_2104 : vec4<f32> = u_xlat3;
  let x_2106 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(vec3<f32>(x_2104.x, x_2104.y, x_2104.z), x_2106);
  let x_2110 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2110, 0.0f, 1.0f);
  let x_2114 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2114) + 1.0f);
  let x_2119 : f32 = u_xlat25.x;
  let x_2121 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2119 * x_2121);
  let x_2125 : f32 = u_xlat25.x;
  let x_2127 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2125 * x_2127);
  let x_2130 : f32 = u_xlat65;
  u_xlat46.x = ((-(x_2130) * 0.699999988f) + 1.700000048f);
  let x_2137 : f32 = u_xlat65;
  let x_2139 : f32 = u_xlat46.x;
  u_xlat65 = (x_2137 * x_2139);
  let x_2141 : f32 = u_xlat65;
  u_xlat65 = (x_2141 * 6.0f);
  let x_2152 : vec4<f32> = u_xlat8;
  let x_2154 : f32 = u_xlat65;
  let x_2155 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2152.x, x_2152.y, x_2152.z), x_2154);
  u_xlat8 = x_2155;
  let x_2157 : f32 = u_xlat8.w;
  u_xlat65 = (x_2157 + -1.0f);
  let x_2160 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_2161 : f32 = u_xlat65;
  u_xlat65 = ((x_2160 * x_2161) + 1.0f);
  let x_2164 : f32 = u_xlat65;
  u_xlat65 = max(x_2164, 0.0f);
  let x_2166 : f32 = u_xlat65;
  u_xlat65 = log2(x_2166);
  let x_2168 : f32 = u_xlat65;
  let x_2170 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat65 = (x_2168 * x_2170);
  let x_2172 : f32 = u_xlat65;
  u_xlat65 = exp2(x_2172);
  let x_2174 : f32 = u_xlat65;
  let x_2176 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat65 = (x_2174 * x_2176);
  let x_2178 : vec4<f32> = u_xlat8;
  let x_2180 : f32 = u_xlat65;
  let x_2182 : vec3<f32> = (vec3<f32>(x_2178.x, x_2178.y, x_2178.z) * vec3<f32>(x_2180, x_2180, x_2180));
  let x_2183 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2182.x, x_2182.y, x_2182.z, x_2183.w);
  let x_2185 : f32 = u_xlat67;
  let x_2187 : f32 = u_xlat67;
  u_xlat46 = ((vec2<f32>(x_2185, x_2185) * vec2<f32>(x_2187, x_2187)) + vec2<f32>(-1.0f, 1.0f));
  let x_2193 : f32 = u_xlat46.y;
  u_xlat65 = (1.0f / x_2193);
  let x_2195 : vec4<f32> = u_xlat0;
  let x_2198 : f32 = u_xlat66;
  let x_2200 : vec3<f32> = (-(vec3<f32>(x_2195.x, x_2195.y, x_2195.z)) + vec3<f32>(x_2198, x_2198, x_2198));
  let x_2201 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
  let x_2203 : vec2<f32> = u_xlat25;
  let x_2205 : vec4<f32> = u_xlat9;
  let x_2208 : vec4<f32> = u_xlat0;
  let x_2210 : vec3<f32> = ((vec3<f32>(x_2203.x, x_2203.x, x_2203.x) * vec3<f32>(x_2205.x, x_2205.y, x_2205.z)) + vec3<f32>(x_2208.x, x_2208.y, x_2208.z));
  let x_2211 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
  let x_2213 : f32 = u_xlat65;
  let x_2215 : vec4<f32> = u_xlat9;
  let x_2217 : vec3<f32> = (vec3<f32>(x_2213, x_2213, x_2213) * vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
  let x_2218 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
  let x_2220 : vec4<f32> = u_xlat8;
  let x_2222 : vec4<f32> = u_xlat9;
  let x_2224 : vec3<f32> = (vec3<f32>(x_2220.x, x_2220.y, x_2220.z) * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2225 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
  let x_2227 : vec4<f32> = u_xlat5;
  let x_2229 : vec3<f32> = u_xlat22;
  let x_2231 : vec4<f32> = u_xlat8;
  let x_2233 : vec3<f32> = ((vec3<f32>(x_2227.x, x_2227.y, x_2227.z) * x_2229) + vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
  let x_2234 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
  let x_2237 : f32 = u_xlat4.x;
  let x_2239 : f32 = x_95.unity_LightData.z;
  u_xlat65 = (x_2237 * x_2239);
  let x_2241 : vec4<f32> = u_xlat3;
  let x_2244 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_2241.x, x_2241.y, x_2241.z), vec3<f32>(x_2244.x, x_2244.y, x_2244.z));
  let x_2247 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2247, 0.0f, 1.0f);
  let x_2249 : f32 = u_xlat65;
  let x_2250 : f32 = u_xlat66;
  u_xlat65 = (x_2249 * x_2250);
  let x_2252 : f32 = u_xlat65;
  let x_2254 : vec4<f32> = u_xlat7;
  let x_2256 : vec3<f32> = (vec3<f32>(x_2252, x_2252, x_2252) * vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
  let x_2257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2256.x, x_2256.y, x_2257.z, x_2256.z);
  let x_2259 : vec3<f32> = u_xlat2;
  let x_2261 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2263 : vec3<f32> = (x_2259 + vec3<f32>(x_2261.x, x_2261.y, x_2261.z));
  let x_2264 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
  let x_2266 : vec4<f32> = u_xlat7;
  let x_2268 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
  let x_2271 : f32 = u_xlat65;
  u_xlat65 = max(x_2271, 1.17549435e-37f);
  let x_2274 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_2274);
  let x_2276 : f32 = u_xlat65;
  let x_2278 : vec4<f32> = u_xlat7;
  let x_2280 : vec3<f32> = (vec3<f32>(x_2276, x_2276, x_2276) * vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
  let x_2281 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2280.x, x_2280.y, x_2280.z, x_2281.w);
  let x_2283 : vec4<f32> = u_xlat3;
  let x_2285 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2283.x, x_2283.y, x_2283.z), vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
  let x_2288 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2288, 0.0f, 1.0f);
  let x_2291 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2293 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2291.x, x_2291.y, x_2291.z), vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
  let x_2296 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2296, 0.0f, 1.0f);
  let x_2298 : f32 = u_xlat65;
  let x_2299 : f32 = u_xlat65;
  u_xlat65 = (x_2298 * x_2299);
  let x_2301 : f32 = u_xlat65;
  let x_2303 : f32 = u_xlat46.x;
  u_xlat65 = ((x_2301 * x_2303) + 1.000010014f);
  let x_2307 : f32 = u_xlat66;
  let x_2308 : f32 = u_xlat66;
  u_xlat66 = (x_2307 * x_2308);
  let x_2310 : f32 = u_xlat65;
  let x_2311 : f32 = u_xlat65;
  u_xlat65 = (x_2310 * x_2311);
  let x_2313 : f32 = u_xlat66;
  u_xlat66 = max(x_2313, 0.100000001f);
  let x_2316 : f32 = u_xlat65;
  let x_2317 : f32 = u_xlat66;
  u_xlat65 = (x_2316 * x_2317);
  let x_2319 : f32 = u_xlat27;
  let x_2320 : f32 = u_xlat65;
  u_xlat65 = (x_2319 * x_2320);
  let x_2322 : f32 = u_xlat68;
  let x_2323 : f32 = u_xlat65;
  u_xlat65 = (x_2322 / x_2323);
  let x_2325 : vec4<f32> = u_xlat0;
  let x_2327 : f32 = u_xlat65;
  let x_2330 : vec3<f32> = u_xlat22;
  let x_2331 : vec3<f32> = ((vec3<f32>(x_2325.x, x_2325.y, x_2325.z) * vec3<f32>(x_2327, x_2327, x_2327)) + x_2330);
  let x_2332 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
  let x_2334 : vec4<f32> = u_xlat4;
  let x_2336 : vec4<f32> = u_xlat7;
  let x_2338 : vec3<f32> = (vec3<f32>(x_2334.x, x_2334.y, x_2334.w) * vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
  let x_2339 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2338.x, x_2338.y, x_2339.z, x_2338.z);
  let x_2342 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2344 : f32 = x_95.unity_LightData.y;
  u_xlat65 = min(x_2342, x_2344);
  let x_2347 : f32 = u_xlat65;
  u_xlatu65 = bitcast<u32>(i32(x_2347));
  let x_2351 : f32 = x_1972.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2353 : f32 = x_1972.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2355 : f32 = x_1972.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2357 : f32 = x_1972.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2358 : vec4<f32> = vec4<f32>(x_2351, x_2353, x_2355, x_2357);
  let x_2364 : vec4<bool> = (vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2358.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2364.x, x_2364.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2375 : u32 = u_xlatu_loop_1;
    let x_2376 : u32 = u_xlatu65;
    if ((x_2375 < x_2376)) {
    } else {
      break;
    }
    let x_2379 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2379 >> 2u);
    let x_2382 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_2382 & 3u));
    let x_2385 : u32 = u_xlatu69;
    let x_2388 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_2385)];
    let x_2398 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2403 : vec4<u32> = indexable[x_2398];
    u_xlat69 = dot(x_2388, bitcast<vec4<f32>>(x_2403));
    let x_2406 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2406));
    let x_2409 : vec3<f32> = vs_TEXCOORD1;
    let x_2421 : u32 = u_xlatu69;
    let x_2424 : vec4<f32> = x_2420.x_AdditionalLightsPosition[bitcast<i32>(x_2421)];
    let x_2427 : u32 = u_xlatu69;
    let x_2430 : vec4<f32> = x_2420.x_AdditionalLightsPosition[bitcast<i32>(x_2427)];
    let x_2432 : vec3<f32> = ((-(x_2409) * vec3<f32>(x_2424.w, x_2424.w, x_2424.w)) + vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
    let x_2433 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
    let x_2435 : vec4<f32> = u_xlat9;
    let x_2437 : vec4<f32> = u_xlat9;
    u_xlat49.x = dot(vec3<f32>(x_2435.x, x_2435.y, x_2435.z), vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
    let x_2442 : f32 = u_xlat49.x;
    u_xlat49.x = max(x_2442, 6.10351562e-05f);
    let x_2447 : f32 = u_xlat49.x;
    u_xlat70 = inverseSqrt(x_2447);
    let x_2449 : f32 = u_xlat70;
    let x_2451 : vec4<f32> = u_xlat9;
    let x_2453 : vec3<f32> = (vec3<f32>(x_2449, x_2449, x_2449) * vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
    let x_2454 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2453.x, x_2453.y, x_2453.z, x_2454.w);
    let x_2458 : f32 = u_xlat49.x;
    u_xlat71 = (1.0f / x_2458);
    let x_2461 : f32 = u_xlat49.x;
    let x_2462 : u32 = u_xlatu69;
    let x_2465 : f32 = x_2420.x_AdditionalLightsAttenuation[bitcast<i32>(x_2462)].x;
    u_xlat49.x = (x_2461 * x_2465);
    let x_2469 : f32 = u_xlat49.x;
    let x_2472 : f32 = u_xlat49.x;
    u_xlat49.x = ((-(x_2469) * x_2472) + 1.0f);
    let x_2477 : f32 = u_xlat49.x;
    u_xlat49.x = max(x_2477, 0.0f);
    let x_2481 : f32 = u_xlat49.x;
    let x_2483 : f32 = u_xlat49.x;
    u_xlat49.x = (x_2481 * x_2483);
    let x_2487 : f32 = u_xlat49.x;
    let x_2488 : f32 = u_xlat71;
    u_xlat49.x = (x_2487 * x_2488);
    let x_2491 : u32 = u_xlatu69;
    let x_2494 : vec4<f32> = x_2420.x_AdditionalLightsSpotDir[bitcast<i32>(x_2491)];
    let x_2496 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(vec3<f32>(x_2494.x, x_2494.y, x_2494.z), vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
    let x_2499 : f32 = u_xlat71;
    let x_2500 : u32 = u_xlatu69;
    let x_2503 : f32 = x_2420.x_AdditionalLightsAttenuation[bitcast<i32>(x_2500)].z;
    let x_2505 : u32 = u_xlatu69;
    let x_2508 : f32 = x_2420.x_AdditionalLightsAttenuation[bitcast<i32>(x_2505)].w;
    u_xlat71 = ((x_2499 * x_2503) + x_2508);
    let x_2510 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2510, 0.0f, 1.0f);
    let x_2512 : f32 = u_xlat71;
    let x_2513 : f32 = u_xlat71;
    u_xlat71 = (x_2512 * x_2513);
    let x_2516 : f32 = u_xlat49.x;
    let x_2517 : f32 = u_xlat71;
    u_xlat49.x = (x_2516 * x_2517);
    let x_2521 : u32 = u_xlatu69;
    u_xlatu71 = (x_2521 >> 5u);
    let x_2524 : u32 = u_xlatu69;
    u_xlati72 = (1i << bitcast<u32>((bitcast<i32>(x_2524) & 31i)));
    let x_2530 : i32 = u_xlati72;
    let x_2532 : u32 = u_xlatu71;
    let x_2535 : f32 = x_1972.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2532)].el;
    u_xlati71 = bitcast<i32>((bitcast<u32>(x_2530) & bitcast<u32>(x_2535)));
    let x_2539 : i32 = u_xlati71;
    if ((x_2539 != 0i)) {
      let x_2549 : u32 = u_xlatu69;
      let x_2552 : f32 = x_2548.x_AdditionalLightsLightTypes[bitcast<i32>(x_2549)].el;
      u_xlati71 = i32(x_2552);
      let x_2554 : i32 = u_xlati71;
      u_xlati72 = select(1i, 0i, (x_2554 != 0i));
      let x_2558 : u32 = u_xlatu69;
      u_xlati73 = (bitcast<i32>(x_2558) << bitcast<u32>(2i));
      let x_2561 : i32 = u_xlati72;
      if ((x_2561 != 0i)) {
        let x_2565 : vec3<f32> = vs_TEXCOORD1;
        let x_2567 : i32 = u_xlati73;
        let x_2570 : i32 = u_xlati73;
        let x_2574 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[((x_2567 + 1i) / 4i)][((x_2570 + 1i) % 4i)];
        let x_2576 : vec3<f32> = (vec3<f32>(x_2565.y, x_2565.y, x_2565.y) * vec3<f32>(x_2574.x, x_2574.y, x_2574.w));
        let x_2577 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
        let x_2579 : i32 = u_xlati73;
        let x_2581 : i32 = u_xlati73;
        let x_2584 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[(x_2579 / 4i)][(x_2581 % 4i)];
        let x_2586 : vec3<f32> = vs_TEXCOORD1;
        let x_2589 : vec4<f32> = u_xlat11;
        let x_2591 : vec3<f32> = ((vec3<f32>(x_2584.x, x_2584.y, x_2584.w) * vec3<f32>(x_2586.x, x_2586.x, x_2586.x)) + vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
        let x_2592 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
        let x_2594 : i32 = u_xlati73;
        let x_2597 : i32 = u_xlati73;
        let x_2601 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[((x_2594 + 2i) / 4i)][((x_2597 + 2i) % 4i)];
        let x_2603 : vec3<f32> = vs_TEXCOORD1;
        let x_2606 : vec4<f32> = u_xlat11;
        let x_2608 : vec3<f32> = ((vec3<f32>(x_2601.x, x_2601.y, x_2601.w) * vec3<f32>(x_2603.z, x_2603.z, x_2603.z)) + vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
        let x_2609 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2608.x, x_2608.y, x_2608.z, x_2609.w);
        let x_2611 : vec4<f32> = u_xlat11;
        let x_2613 : i32 = u_xlati73;
        let x_2616 : i32 = u_xlati73;
        let x_2620 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[((x_2613 + 3i) / 4i)][((x_2616 + 3i) % 4i)];
        let x_2622 : vec3<f32> = (vec3<f32>(x_2611.x, x_2611.y, x_2611.z) + vec3<f32>(x_2620.x, x_2620.y, x_2620.w));
        let x_2623 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2623.w);
        let x_2625 : vec4<f32> = u_xlat11;
        let x_2627 : vec4<f32> = u_xlat11;
        let x_2629 : vec2<f32> = (vec2<f32>(x_2625.x, x_2625.y) / vec2<f32>(x_2627.z, x_2627.z));
        let x_2630 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2629.x, x_2629.y, x_2630.z, x_2630.w);
        let x_2632 : vec4<f32> = u_xlat11;
        let x_2635 : vec2<f32> = ((vec2<f32>(x_2632.x, x_2632.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2636 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
        let x_2638 : vec4<f32> = u_xlat11;
        let x_2642 : vec2<f32> = clamp(vec2<f32>(x_2638.x, x_2638.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2643 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2642.x, x_2642.y, x_2643.z, x_2643.w);
        let x_2645 : u32 = u_xlatu69;
        let x_2648 : vec4<f32> = x_2548.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2645)];
        let x_2650 : vec4<f32> = u_xlat11;
        let x_2653 : u32 = u_xlatu69;
        let x_2656 : vec4<f32> = x_2548.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2653)];
        let x_2658 : vec2<f32> = ((vec2<f32>(x_2648.x, x_2648.y) * vec2<f32>(x_2650.x, x_2650.y)) + vec2<f32>(x_2656.z, x_2656.w));
        let x_2659 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2658.x, x_2658.y, x_2659.z, x_2659.w);
      } else {
        let x_2663 : i32 = u_xlati71;
        u_xlatb71 = (x_2663 == 1i);
        let x_2665 : bool = u_xlatb71;
        u_xlati71 = select(0i, 1i, x_2665);
        let x_2667 : i32 = u_xlati71;
        if ((x_2667 != 0i)) {
          let x_2672 : vec3<f32> = vs_TEXCOORD1;
          let x_2674 : i32 = u_xlati73;
          let x_2677 : i32 = u_xlati73;
          let x_2681 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[((x_2674 + 1i) / 4i)][((x_2677 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2672.y, x_2672.y) * vec2<f32>(x_2681.x, x_2681.y));
          let x_2684 : i32 = u_xlati73;
          let x_2686 : i32 = u_xlati73;
          let x_2689 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[(x_2684 / 4i)][(x_2686 % 4i)];
          let x_2691 : vec3<f32> = vs_TEXCOORD1;
          let x_2694 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2689.x, x_2689.y) * vec2<f32>(x_2691.x, x_2691.x)) + x_2694);
          let x_2696 : i32 = u_xlati73;
          let x_2699 : i32 = u_xlati73;
          let x_2703 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[((x_2696 + 2i) / 4i)][((x_2699 + 2i) % 4i)];
          let x_2705 : vec3<f32> = vs_TEXCOORD1;
          let x_2708 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2703.x, x_2703.y) * vec2<f32>(x_2705.z, x_2705.z)) + x_2708);
          let x_2710 : vec2<f32> = u_xlat53;
          let x_2711 : i32 = u_xlati73;
          let x_2714 : i32 = u_xlati73;
          let x_2718 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[((x_2711 + 3i) / 4i)][((x_2714 + 3i) % 4i)];
          u_xlat53 = (x_2710 + vec2<f32>(x_2718.x, x_2718.y));
          let x_2721 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2721 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2724 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2724);
          let x_2726 : u32 = u_xlatu69;
          let x_2729 : vec4<f32> = x_2548.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2726)];
          let x_2731 : vec2<f32> = u_xlat53;
          let x_2733 : u32 = u_xlatu69;
          let x_2736 : vec4<f32> = x_2548.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2733)];
          let x_2738 : vec2<f32> = ((vec2<f32>(x_2729.x, x_2729.y) * x_2731) + vec2<f32>(x_2736.z, x_2736.w));
          let x_2739 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2738.x, x_2738.y, x_2739.z, x_2739.w);
        } else {
          let x_2742 : vec3<f32> = vs_TEXCOORD1;
          let x_2744 : i32 = u_xlati73;
          let x_2747 : i32 = u_xlati73;
          let x_2751 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[((x_2744 + 1i) / 4i)][((x_2747 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2742.y, x_2742.y, x_2742.y, x_2742.y) * x_2751);
          let x_2753 : i32 = u_xlati73;
          let x_2755 : i32 = u_xlati73;
          let x_2758 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[(x_2753 / 4i)][(x_2755 % 4i)];
          let x_2759 : vec3<f32> = vs_TEXCOORD1;
          let x_2762 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2758 * vec4<f32>(x_2759.x, x_2759.x, x_2759.x, x_2759.x)) + x_2762);
          let x_2764 : i32 = u_xlati73;
          let x_2767 : i32 = u_xlati73;
          let x_2771 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[((x_2764 + 2i) / 4i)][((x_2767 + 2i) % 4i)];
          let x_2772 : vec3<f32> = vs_TEXCOORD1;
          let x_2775 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2771 * vec4<f32>(x_2772.z, x_2772.z, x_2772.z, x_2772.z)) + x_2775);
          let x_2777 : vec4<f32> = u_xlat12;
          let x_2778 : i32 = u_xlati73;
          let x_2781 : i32 = u_xlati73;
          let x_2785 : vec4<f32> = x_2548.x_AdditionalLightsWorldToLights[((x_2778 + 3i) / 4i)][((x_2781 + 3i) % 4i)];
          u_xlat12 = (x_2777 + x_2785);
          let x_2787 : vec4<f32> = u_xlat12;
          let x_2789 : vec4<f32> = u_xlat12;
          let x_2791 : vec3<f32> = (vec3<f32>(x_2787.x, x_2787.y, x_2787.z) / vec3<f32>(x_2789.w, x_2789.w, x_2789.w));
          let x_2792 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2792.w);
          let x_2794 : vec4<f32> = u_xlat12;
          let x_2796 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(vec3<f32>(x_2794.x, x_2794.y, x_2794.z), vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
          let x_2799 : f32 = u_xlat71;
          u_xlat71 = inverseSqrt(x_2799);
          let x_2801 : f32 = u_xlat71;
          let x_2803 : vec4<f32> = u_xlat12;
          let x_2805 : vec3<f32> = (vec3<f32>(x_2801, x_2801, x_2801) * vec3<f32>(x_2803.x, x_2803.y, x_2803.z));
          let x_2806 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2806.w);
          let x_2808 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(abs(vec3<f32>(x_2808.x, x_2808.y, x_2808.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2813 : f32 = u_xlat71;
          u_xlat71 = max(x_2813, 0.000001f);
          let x_2816 : f32 = u_xlat71;
          u_xlat71 = (1.0f / x_2816);
          let x_2818 : f32 = u_xlat71;
          let x_2820 : vec4<f32> = u_xlat12;
          let x_2822 : vec3<f32> = (vec3<f32>(x_2818, x_2818, x_2818) * vec3<f32>(x_2820.z, x_2820.x, x_2820.y));
          let x_2823 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2822.x, x_2822.y, x_2822.z, x_2823.w);
          let x_2826 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2826);
          let x_2830 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2830, 0.0f, 1.0f);
          let x_2834 : vec4<f32> = u_xlat13;
          let x_2837 : vec4<bool> = (vec4<f32>(x_2834.y, x_2834.z, x_2834.y, x_2834.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2837.x, x_2837.y);
          let x_2840 : bool = u_xlatb53.x;
          if (x_2840) {
            let x_2845 : f32 = u_xlat13.x;
            x_2841 = x_2845;
          } else {
            let x_2848 : f32 = u_xlat13.x;
            x_2841 = -(x_2848);
          }
          let x_2850 : f32 = x_2841;
          u_xlat53.x = x_2850;
          let x_2853 : bool = u_xlatb53.y;
          if (x_2853) {
            let x_2858 : f32 = u_xlat13.x;
            x_2854 = x_2858;
          } else {
            let x_2861 : f32 = u_xlat13.x;
            x_2854 = -(x_2861);
          }
          let x_2863 : f32 = x_2854;
          u_xlat53.y = x_2863;
          let x_2865 : vec4<f32> = u_xlat12;
          let x_2867 : f32 = u_xlat71;
          let x_2870 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2865.x, x_2865.y) * vec2<f32>(x_2867, x_2867)) + x_2870);
          let x_2872 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2872 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2875 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2875, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2879 : u32 = u_xlatu69;
          let x_2882 : vec4<f32> = x_2548.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2879)];
          let x_2884 : vec2<f32> = u_xlat53;
          let x_2886 : u32 = u_xlatu69;
          let x_2889 : vec4<f32> = x_2548.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2886)];
          let x_2891 : vec2<f32> = ((vec2<f32>(x_2882.x, x_2882.y) * x_2884) + vec2<f32>(x_2889.z, x_2889.w));
          let x_2892 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2891.x, x_2891.y, x_2892.z, x_2892.w);
        }
      }
      let x_2899 : vec4<f32> = u_xlat11;
      let x_2902 : f32 = x_44.x_GlobalMipBias.x;
      let x_2903 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2899.x, x_2899.y), x_2902);
      u_xlat11 = x_2903;
      let x_2905 : bool = u_xlatb7.y;
      if (x_2905) {
        let x_2910 : f32 = u_xlat11.w;
        x_2906 = x_2910;
      } else {
        let x_2913 : f32 = u_xlat11.x;
        x_2906 = x_2913;
      }
      let x_2914 : f32 = x_2906;
      u_xlat71 = x_2914;
      let x_2916 : bool = u_xlatb7.x;
      if (x_2916) {
        let x_2920 : vec4<f32> = u_xlat11;
        x_2917 = vec3<f32>(x_2920.x, x_2920.y, x_2920.z);
      } else {
        let x_2923 : f32 = u_xlat71;
        x_2917 = vec3<f32>(x_2923, x_2923, x_2923);
      }
      let x_2925 : vec3<f32> = x_2917;
      let x_2926 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2925.x, x_2925.y, x_2925.z, x_2926.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2932 : vec4<f32> = u_xlat11;
    let x_2934 : u32 = u_xlatu69;
    let x_2937 : vec4<f32> = x_2420.x_AdditionalLightsColor[bitcast<i32>(x_2934)];
    let x_2939 : vec3<f32> = (vec3<f32>(x_2932.x, x_2932.y, x_2932.z) * vec3<f32>(x_2937.x, x_2937.y, x_2937.z));
    let x_2940 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2939.x, x_2939.y, x_2939.z, x_2940.w);
    let x_2942 : f32 = u_xlat48;
    let x_2944 : vec4<f32> = u_xlat11;
    let x_2946 : vec3<f32> = (vec3<f32>(x_2942, x_2942, x_2942) * vec3<f32>(x_2944.x, x_2944.y, x_2944.z));
    let x_2947 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2946.x, x_2946.y, x_2946.z, x_2947.w);
    let x_2949 : vec4<f32> = u_xlat3;
    let x_2951 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2949.x, x_2949.y, x_2949.z), vec3<f32>(x_2951.x, x_2951.y, x_2951.z));
    let x_2954 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2954, 0.0f, 1.0f);
    let x_2956 : f32 = u_xlat69;
    let x_2958 : f32 = u_xlat49.x;
    u_xlat69 = (x_2956 * x_2958);
    let x_2960 : f32 = u_xlat69;
    let x_2962 : vec4<f32> = u_xlat11;
    let x_2964 : vec3<f32> = (vec3<f32>(x_2960, x_2960, x_2960) * vec3<f32>(x_2962.x, x_2962.y, x_2962.z));
    let x_2965 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
    let x_2967 : vec4<f32> = u_xlat9;
    let x_2969 : f32 = u_xlat70;
    let x_2972 : vec3<f32> = u_xlat2;
    let x_2973 : vec3<f32> = ((vec3<f32>(x_2967.x, x_2967.y, x_2967.z) * vec3<f32>(x_2969, x_2969, x_2969)) + x_2972);
    let x_2974 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2973.x, x_2973.y, x_2973.z, x_2974.w);
    let x_2976 : vec4<f32> = u_xlat9;
    let x_2978 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2976.x, x_2976.y, x_2976.z), vec3<f32>(x_2978.x, x_2978.y, x_2978.z));
    let x_2981 : f32 = u_xlat69;
    u_xlat69 = max(x_2981, 1.17549435e-37f);
    let x_2983 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_2983);
    let x_2985 : f32 = u_xlat69;
    let x_2987 : vec4<f32> = u_xlat9;
    let x_2989 : vec3<f32> = (vec3<f32>(x_2985, x_2985, x_2985) * vec3<f32>(x_2987.x, x_2987.y, x_2987.z));
    let x_2990 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2989.x, x_2989.y, x_2989.z, x_2990.w);
    let x_2992 : vec4<f32> = u_xlat3;
    let x_2994 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2992.x, x_2992.y, x_2992.z), vec3<f32>(x_2994.x, x_2994.y, x_2994.z));
    let x_2997 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2997, 0.0f, 1.0f);
    let x_2999 : vec4<f32> = u_xlat10;
    let x_3001 : vec4<f32> = u_xlat9;
    u_xlat49.x = dot(vec3<f32>(x_2999.x, x_2999.y, x_2999.z), vec3<f32>(x_3001.x, x_3001.y, x_3001.z));
    let x_3006 : f32 = u_xlat49.x;
    u_xlat49.x = clamp(x_3006, 0.0f, 1.0f);
    let x_3009 : f32 = u_xlat69;
    let x_3010 : f32 = u_xlat69;
    u_xlat69 = (x_3009 * x_3010);
    let x_3012 : f32 = u_xlat69;
    let x_3014 : f32 = u_xlat46.x;
    u_xlat69 = ((x_3012 * x_3014) + 1.000010014f);
    let x_3018 : f32 = u_xlat49.x;
    let x_3020 : f32 = u_xlat49.x;
    u_xlat49.x = (x_3018 * x_3020);
    let x_3023 : f32 = u_xlat69;
    let x_3024 : f32 = u_xlat69;
    u_xlat69 = (x_3023 * x_3024);
    let x_3027 : f32 = u_xlat49.x;
    u_xlat49.x = max(x_3027, 0.100000001f);
    let x_3030 : f32 = u_xlat69;
    let x_3032 : f32 = u_xlat49.x;
    u_xlat69 = (x_3030 * x_3032);
    let x_3034 : f32 = u_xlat27;
    let x_3035 : f32 = u_xlat69;
    u_xlat69 = (x_3034 * x_3035);
    let x_3037 : f32 = u_xlat68;
    let x_3038 : f32 = u_xlat69;
    u_xlat69 = (x_3037 / x_3038);
    let x_3040 : vec4<f32> = u_xlat0;
    let x_3042 : f32 = u_xlat69;
    let x_3045 : vec3<f32> = u_xlat22;
    let x_3046 : vec3<f32> = ((vec3<f32>(x_3040.x, x_3040.y, x_3040.z) * vec3<f32>(x_3042, x_3042, x_3042)) + x_3045);
    let x_3047 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3046.x, x_3046.y, x_3046.z, x_3047.w);
    let x_3049 : vec4<f32> = u_xlat9;
    let x_3051 : vec4<f32> = u_xlat11;
    let x_3054 : vec4<f32> = u_xlat8;
    let x_3056 : vec3<f32> = ((vec3<f32>(x_3049.x, x_3049.y, x_3049.z) * vec3<f32>(x_3051.x, x_3051.y, x_3051.z)) + vec3<f32>(x_3054.x, x_3054.y, x_3054.z));
    let x_3057 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3056.x, x_3056.y, x_3056.z, x_3057.w);

    continuing {
      let x_3059 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3059 + bitcast<u32>(1i));
    }
  }
  let x_3061 : vec4<f32> = u_xlat5;
  let x_3063 : vec4<f32> = u_xlat6;
  let x_3066 : vec4<f32> = u_xlat4;
  let x_3068 : vec3<f32> = ((vec3<f32>(x_3061.x, x_3061.y, x_3061.z) * vec3<f32>(x_3063.x, x_3063.x, x_3063.x)) + vec3<f32>(x_3066.x, x_3066.y, x_3066.w));
  let x_3069 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3068.x, x_3068.y, x_3068.z, x_3069.w);
  let x_3071 : vec4<f32> = u_xlat8;
  let x_3073 : vec4<f32> = u_xlat0;
  let x_3075 : vec3<f32> = (vec3<f32>(x_3071.x, x_3071.y, x_3071.z) + vec3<f32>(x_3073.x, x_3073.y, x_3073.z));
  let x_3076 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3075.x, x_3075.y, x_3075.z, x_3076.w);
  let x_3078 : f32 = u_xlat63;
  let x_3079 : f32 = u_xlat63;
  u_xlat63 = (x_3078 * -(x_3079));
  let x_3082 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3082);
  let x_3084 : vec4<f32> = u_xlat0;
  let x_3088 : vec4<f32> = x_44.unity_FogColor;
  let x_3091 : vec3<f32> = (vec3<f32>(x_3084.x, x_3084.y, x_3084.z) + -(vec3<f32>(x_3088.x, x_3088.y, x_3088.z)));
  let x_3092 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3091.x, x_3091.y, x_3091.z, x_3092.w);
  let x_3096 : f32 = u_xlat63;
  let x_3098 : vec4<f32> = u_xlat0;
  let x_3102 : vec4<f32> = x_44.unity_FogColor;
  let x_3104 : vec3<f32> = ((vec3<f32>(x_3096, x_3096, x_3096) * vec3<f32>(x_3098.x, x_3098.y, x_3098.z)) + vec3<f32>(x_3102.x, x_3102.y, x_3102.z));
  let x_3105 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
  let x_3110 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_3110 == 1.0f);
  let x_3112 : bool = u_xlatb0;
  if (x_3112) {
    let x_3117 : f32 = u_xlat1.x;
    x_3113 = x_3117;
  } else {
    x_3113 = 1.0f;
  }
  let x_3119 : f32 = x_3113;
  SV_Target0.w = x_3119;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

