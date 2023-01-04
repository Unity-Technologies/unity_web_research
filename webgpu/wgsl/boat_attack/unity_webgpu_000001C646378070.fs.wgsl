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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_203 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1906 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2346 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2456 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat3 : vec3<f32>;
  var x_153 : f32;
  var x_165 : f32;
  var x_177 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat22 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlatb48 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat28 : f32;
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
  var u_xlatb25 : vec2<bool>;
  var u_xlatb46 : bool;
  var x_1854 : f32;
  var u_xlat25 : vec2<f32>;
  var u_xlat46 : f32;
  var x_1973 : f32;
  var x_1984 : vec3<f32>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2749 : f32;
  var x_2762 : f32;
  var x_2814 : f32;
  var x_2825 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2982 : f32;
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
  let x_152 : bool = u_xlatb63;
  if (x_152) {
    let x_157 : f32 = u_xlat2.x;
    x_153 = x_157;
  } else {
    let x_161 : f32 = x_44.unity_MatrixV[0i].z;
    x_153 = x_161;
  }
  let x_162 : f32 = x_153;
  u_xlat3.x = x_162;
  let x_164 : bool = u_xlatb63;
  if (x_164) {
    let x_170 : f32 = u_xlat2.y;
    x_165 = x_170;
  } else {
    let x_173 : f32 = x_44.unity_MatrixV[1i].z;
    x_165 = x_173;
  }
  let x_174 : f32 = x_165;
  u_xlat3.y = x_174;
  let x_176 : bool = u_xlatb63;
  if (x_176) {
    let x_181 : f32 = u_xlat2.z;
    x_177 = x_181;
  } else {
    let x_184 : f32 = x_44.unity_MatrixV[2i].z;
    x_177 = x_184;
  }
  let x_185 : f32 = x_177;
  u_xlat3.z = x_185;
  let x_188 : vec3<f32> = vs_TEXCOORD2;
  let x_189 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_188, x_189);
  let x_191 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_191);
  let x_193 : f32 = u_xlat63;
  let x_195 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_193, x_193, x_193) * x_195);
  let x_198 : vec3<f32> = vs_TEXCOORD1;
  let x_205 : vec4<f32> = x_203.x_CascadeShadowSplitSpheres0;
  let x_208 : vec3<f32> = (x_198 + -(vec3<f32>(x_205.x, x_205.y, x_205.z)));
  let x_209 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_212 : vec3<f32> = vs_TEXCOORD1;
  let x_214 : vec4<f32> = x_203.x_CascadeShadowSplitSpheres1;
  let x_217 : vec3<f32> = (x_212 + -(vec3<f32>(x_214.x, x_214.y, x_214.z)));
  let x_218 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_221 : vec3<f32> = vs_TEXCOORD1;
  let x_224 : vec4<f32> = x_203.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_221 + -(vec3<f32>(x_224.x, x_224.y, x_224.z)));
  let x_229 : vec3<f32> = vs_TEXCOORD1;
  let x_232 : vec4<f32> = x_203.x_CascadeShadowSplitSpheres3;
  let x_235 : vec3<f32> = (x_229 + -(vec3<f32>(x_232.x, x_232.y, x_232.z)));
  let x_236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat4;
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_244 : vec4<f32> = u_xlat5;
  let x_246 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_250 : vec3<f32> = u_xlat6;
  let x_251 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_250, x_251);
  let x_254 : vec4<f32> = u_xlat7;
  let x_256 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_254.x, x_254.y, x_254.z), vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_263 : vec4<f32> = u_xlat4;
  let x_266 : vec4<f32> = x_203.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_263 < x_266);
  let x_269 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_269);
  let x_273 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_273);
  let x_277 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_277);
  let x_281 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_285);
  let x_291 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_291);
  let x_295 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_295);
  let x_298 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = u_xlat5;
  let x_302 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) + vec3<f32>(x_300.y, x_300.z, x_300.w));
  let x_303 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec3<f32> = max(vec3<f32>(x_305.x, x_305.y, x_305.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_309 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_309.x, x_308.x, x_308.y, x_308.z);
  let x_311 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_311, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_317 : f32 = u_xlat63;
  u_xlat63 = (-(x_317) + 4.0f);
  let x_322 : f32 = u_xlat63;
  u_xlatu63 = u32(x_322);
  let x_326 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_326) << bitcast<u32>(2i));
  let x_329 : vec3<f32> = vs_TEXCOORD1;
  let x_331 : i32 = u_xlati63;
  let x_334 : i32 = u_xlati63;
  let x_338 : vec4<f32> = x_203.x_MainLightWorldToShadow[((x_331 + 1i) / 4i)][((x_334 + 1i) % 4i)];
  let x_340 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : i32 = u_xlati63;
  let x_345 : i32 = u_xlati63;
  let x_348 : vec4<f32> = x_203.x_MainLightWorldToShadow[(x_343 / 4i)][(x_345 % 4i)];
  let x_350 : vec3<f32> = vs_TEXCOORD1;
  let x_353 : vec4<f32> = u_xlat4;
  let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350.x, x_350.x, x_350.x)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : i32 = u_xlati63;
  let x_361 : i32 = u_xlati63;
  let x_365 : vec4<f32> = x_203.x_MainLightWorldToShadow[((x_358 + 2i) / 4i)][((x_361 + 2i) % 4i)];
  let x_367 : vec3<f32> = vs_TEXCOORD1;
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.z, x_367.z, x_367.z)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat4;
  let x_377 : i32 = u_xlati63;
  let x_380 : i32 = u_xlati63;
  let x_384 : vec4<f32> = x_203.x_MainLightWorldToShadow[((x_377 + 3i) / 4i)][((x_380 + 3i) % 4i)];
  let x_386 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_395 : vec2<f32> = vs_TEXCOORD8;
  let x_397 : f32 = x_44.x_GlobalMipBias.x;
  let x_398 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_395, x_397);
  u_xlat5 = x_398;
  let x_403 : vec2<f32> = vs_TEXCOORD8;
  let x_405 : f32 = x_44.x_GlobalMipBias.x;
  let x_406 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_403, x_405);
  u_xlat6 = vec3<f32>(x_406.x, x_406.y, x_406.z);
  let x_408 : vec4<f32> = u_xlat5;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec3<f32> = u_xlat2;
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_415, vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : f32 = u_xlat63;
  u_xlat63 = (x_419 + 0.5f);
  let x_422 : f32 = u_xlat63;
  let x_424 : vec3<f32> = u_xlat6;
  let x_425 : vec3<f32> = (vec3<f32>(x_422, x_422, x_422) * x_424);
  let x_426 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = u_xlat5.w;
  u_xlat63 = max(x_429, 0.0001f);
  let x_432 : vec4<f32> = u_xlat5;
  let x_434 : f32 = u_xlat63;
  let x_436 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) / vec3<f32>(x_434, x_434, x_434));
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_441 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_442 : vec2<f32> = vec2<f32>(x_441.x, x_441.y);
  let x_446 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_442.x, x_442.y));
  let x_447 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_446.x, x_446.y, x_447.z);
  let x_449 : vec3<f32> = u_xlat6;
  let x_451 : vec4<f32> = hlslcc_FragCoord;
  let x_453 : vec2<f32> = (vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_451.x, x_451.y));
  let x_454 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_453.x, x_453.y, x_454.z);
  let x_457 : f32 = u_xlat6.y;
  let x_460 : f32 = x_44.x_ScaleBiasRt.x;
  let x_463 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_457 * x_460) + x_463);
  let x_465 : f32 = u_xlat63;
  u_xlat6.z = (-(x_465) + 1.0f);
  let x_470 : f32 = x_57.x_Metallic;
  u_xlat63 = ((-(x_470) * 0.959999979f) + 0.959999979f);
  let x_475 : f32 = u_xlat63;
  let x_478 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_475) + x_478);
  let x_481 : f32 = u_xlat63;
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat22 = (vec3<f32>(x_481, x_481, x_481) * vec3<f32>(x_483.y, x_483.z, x_483.w));
  let x_486 : vec4<f32> = u_xlat0;
  let x_489 : vec4<f32> = x_57.x_BaseColor;
  let x_494 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(x_489.x, x_489.y, x_489.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_495 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = x_57.x_Metallic;
  let x_500 : f32 = x_57.x_Metallic;
  let x_502 : f32 = x_57.x_Metallic;
  let x_503 : vec3<f32> = vec3<f32>(x_498, x_500, x_502);
  let x_508 : vec4<f32> = u_xlat0;
  let x_513 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_508.x, x_508.y, x_508.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_514 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_517 : f32 = x_57.x_Smoothness;
  u_xlat63 = (-(x_517) + 1.0f);
  let x_521 : f32 = u_xlat63;
  let x_522 : f32 = u_xlat63;
  u_xlat66 = (x_521 * x_522);
  let x_524 : f32 = u_xlat66;
  u_xlat66 = max(x_524, 0.0078125f);
  let x_528 : f32 = u_xlat66;
  let x_529 : f32 = u_xlat66;
  u_xlat67 = (x_528 * x_529);
  let x_531 : f32 = u_xlat65;
  u_xlat65 = (x_531 + 1.0f);
  let x_533 : f32 = u_xlat65;
  u_xlat65 = clamp(x_533, 0.0f, 1.0f);
  let x_536 : f32 = u_xlat66;
  u_xlat68 = ((x_536 * 4.0f) + 2.0f);
  let x_544 : vec3<f32> = u_xlat6;
  let x_547 : f32 = x_44.x_GlobalMipBias.x;
  let x_548 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_544.x, x_544.z), x_547);
  u_xlat6.x = x_548.x;
  let x_553 : f32 = u_xlat6.x;
  u_xlat27 = (x_553 + -1.0f);
  let x_556 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_557 : f32 = u_xlat27;
  u_xlat27 = ((x_556 * x_557) + 1.0f);
  let x_561 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_561, 1.0f);
  let x_566 : f32 = x_203.x_MainLightShadowParams.y;
  u_xlatb48 = (0.0f < x_566);
  let x_568 : bool = u_xlatb48;
  if (x_568) {
    let x_572 : f32 = x_203.x_MainLightShadowParams.y;
    u_xlatb48 = (x_572 == 1.0f);
    let x_574 : bool = u_xlatb48;
    if (x_574) {
      let x_577 : vec4<f32> = u_xlat4;
      let x_580 : vec4<f32> = x_203.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_577.x, x_577.y, x_577.x, x_577.y) + x_580);
      let x_583 : vec4<f32> = u_xlat7;
      let x_584 : vec2<f32> = vec2<f32>(x_583.x, x_583.y);
      let x_586 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_584.x, x_584.y, x_586);
      let x_599 : vec3<f32> = txVec0;
      let x_601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_599.xy, x_599.z);
      u_xlat8.x = x_601;
      let x_604 : vec4<f32> = u_xlat7;
      let x_605 : vec2<f32> = vec2<f32>(x_604.z, x_604.w);
      let x_607 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_605.x, x_605.y, x_607);
      let x_614 : vec3<f32> = txVec1;
      let x_616 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_614.xy, x_614.z);
      u_xlat8.y = x_616;
      let x_618 : vec4<f32> = u_xlat4;
      let x_621 : vec4<f32> = x_203.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y) + x_621);
      let x_624 : vec4<f32> = u_xlat7;
      let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
      let x_627 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_625.x, x_625.y, x_627);
      let x_634 : vec3<f32> = txVec2;
      let x_636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_634.xy, x_634.z);
      u_xlat8.z = x_636;
      let x_639 : vec4<f32> = u_xlat7;
      let x_640 : vec2<f32> = vec2<f32>(x_639.z, x_639.w);
      let x_642 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_640.x, x_640.y, x_642);
      let x_649 : vec3<f32> = txVec3;
      let x_651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_649.xy, x_649.z);
      u_xlat8.w = x_651;
      let x_655 : vec4<f32> = u_xlat8;
      u_xlat48.x = dot(x_655, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_663 : f32 = x_203.x_MainLightShadowParams.y;
      u_xlatb69 = (x_663 == 2.0f);
      let x_665 : bool = u_xlatb69;
      if (x_665) {
        let x_668 : vec4<f32> = u_xlat4;
        let x_671 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_675 : vec2<f32> = ((vec2<f32>(x_668.x, x_668.y) * vec2<f32>(x_671.z, x_671.w)) + vec2<f32>(0.5f, 0.5f));
        let x_676 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat7;
        let x_680 : vec2<f32> = floor(vec2<f32>(x_678.x, x_678.y));
        let x_681 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_684 : vec4<f32> = u_xlat4;
        let x_687 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_690 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_684.x, x_684.y) * vec2<f32>(x_687.z, x_687.w)) + -(vec2<f32>(x_690.x, x_690.y)));
        let x_694 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_694.x, x_694.x, x_694.y, x_694.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_699 : vec4<f32> = u_xlat8;
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_699.x, x_699.x, x_699.z, x_699.z) * vec4<f32>(x_701.x, x_701.x, x_701.z, x_701.z));
        let x_704 : vec4<f32> = u_xlat9;
        let x_708 : vec2<f32> = (vec2<f32>(x_704.y, x_704.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_709 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_708.x, x_709.y, x_708.y, x_709.w);
        let x_711 : vec4<f32> = u_xlat9;
        let x_714 : vec2<f32> = u_xlat49;
        let x_716 : vec2<f32> = ((vec2<f32>(x_711.x, x_711.z) * vec2<f32>(0.5f, 0.5f)) + -(x_714));
        let x_717 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
        let x_720 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_720) + vec2<f32>(1.0f, 1.0f));
        let x_724 : vec2<f32> = u_xlat49;
        let x_726 : vec2<f32> = min(x_724, vec2<f32>(0.0f, 0.0f));
        let x_727 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_729 : vec4<f32> = u_xlat10;
        let x_732 : vec4<f32> = u_xlat10;
        let x_735 : vec2<f32> = u_xlat51;
        let x_736 : vec2<f32> = ((-(vec2<f32>(x_729.x, x_729.y)) * vec2<f32>(x_732.x, x_732.y)) + x_735);
        let x_737 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_739 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_739, vec2<f32>(0.0f, 0.0f));
        let x_741 : vec2<f32> = u_xlat49;
        let x_743 : vec2<f32> = u_xlat49;
        let x_745 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_741) * x_743) + vec2<f32>(x_745.y, x_745.w));
        let x_748 : vec4<f32> = u_xlat10;
        let x_750 : vec2<f32> = (vec2<f32>(x_748.x, x_748.y) + vec2<f32>(1.0f, 1.0f));
        let x_751 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
        let x_753 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_753 + vec2<f32>(1.0f, 1.0f));
        let x_756 : vec4<f32> = u_xlat9;
        let x_760 : vec2<f32> = (vec2<f32>(x_756.x, x_756.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_761 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_760.x, x_760.y, x_761.z, x_761.w);
        let x_763 : vec2<f32> = u_xlat51;
        let x_764 : vec2<f32> = (x_763 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_765 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_764.x, x_764.y, x_765.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat10;
        let x_769 : vec2<f32> = (vec2<f32>(x_767.x, x_767.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_770 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_773 : vec2<f32> = u_xlat49;
        let x_774 : vec2<f32> = (x_773 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_775 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
        let x_777 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_777.y, x_777.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_781 : f32 = u_xlat10.x;
        u_xlat11.z = x_781;
        let x_784 : f32 = u_xlat49.x;
        u_xlat11.w = x_784;
        let x_787 : f32 = u_xlat12.x;
        u_xlat9.z = x_787;
        let x_790 : f32 = u_xlat8.x;
        u_xlat9.w = x_790;
        let x_793 : vec4<f32> = u_xlat9;
        let x_795 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_793.z, x_793.w, x_793.x, x_793.z) + vec4<f32>(x_795.z, x_795.w, x_795.x, x_795.z));
        let x_799 : f32 = u_xlat11.y;
        u_xlat10.z = x_799;
        let x_802 : f32 = u_xlat49.y;
        u_xlat10.w = x_802;
        let x_805 : f32 = u_xlat9.y;
        u_xlat12.z = x_805;
        let x_808 : f32 = u_xlat8.z;
        u_xlat12.w = x_808;
        let x_810 : vec4<f32> = u_xlat10;
        let x_812 : vec4<f32> = u_xlat12;
        let x_814 : vec3<f32> = (vec3<f32>(x_810.z, x_810.y, x_810.w) + vec3<f32>(x_812.z, x_812.y, x_812.w));
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
        let x_817 : vec4<f32> = u_xlat9;
        let x_819 : vec4<f32> = u_xlat13;
        let x_821 : vec3<f32> = (vec3<f32>(x_817.x, x_817.z, x_817.w) / vec3<f32>(x_819.z, x_819.w, x_819.y));
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat9;
        let x_829 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_830 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat12;
        let x_834 : vec4<f32> = u_xlat8;
        let x_836 : vec3<f32> = (vec3<f32>(x_832.z, x_832.y, x_832.w) / vec3<f32>(x_834.x, x_834.y, x_834.z));
        let x_837 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
        let x_839 : vec4<f32> = u_xlat10;
        let x_841 : vec3<f32> = (vec3<f32>(x_839.x, x_839.y, x_839.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_842 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat9;
        let x_847 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_849 : vec3<f32> = (vec3<f32>(x_844.y, x_844.x, x_844.z) * vec3<f32>(x_847.x, x_847.x, x_847.x));
        let x_850 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat10;
        let x_855 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_857 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(x_855.y, x_855.y, x_855.y));
        let x_858 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
        let x_861 : f32 = u_xlat10.x;
        u_xlat9.w = x_861;
        let x_863 : vec4<f32> = u_xlat7;
        let x_866 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_869 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.y) * vec4<f32>(x_866.x, x_866.y, x_866.x, x_866.y)) + vec4<f32>(x_869.y, x_869.w, x_869.x, x_869.w));
        let x_872 : vec4<f32> = u_xlat7;
        let x_875 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_878 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_875.x, x_875.y)) + vec2<f32>(x_878.z, x_878.w));
        let x_882 : f32 = u_xlat9.y;
        u_xlat10.w = x_882;
        let x_884 : vec4<f32> = u_xlat10;
        let x_885 : vec2<f32> = vec2<f32>(x_884.y, x_884.z);
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_886.x, x_885.x, x_886.z, x_885.y);
        let x_888 : vec4<f32> = u_xlat7;
        let x_891 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_894 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_888.x, x_888.y, x_888.x, x_888.y) * vec4<f32>(x_891.x, x_891.y, x_891.x, x_891.y)) + vec4<f32>(x_894.x, x_894.y, x_894.z, x_894.y));
        let x_897 : vec4<f32> = u_xlat7;
        let x_900 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_903 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_897.x, x_897.y, x_897.x, x_897.y) * vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y)) + vec4<f32>(x_903.w, x_903.y, x_903.w, x_903.z));
        let x_906 : vec4<f32> = u_xlat7;
        let x_909 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_912 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_906.x, x_906.y, x_906.x, x_906.y) * vec4<f32>(x_909.x, x_909.y, x_909.x, x_909.y)) + vec4<f32>(x_912.x, x_912.w, x_912.z, x_912.w));
        let x_916 : vec4<f32> = u_xlat8;
        let x_918 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_916.x, x_916.x, x_916.x, x_916.y) * vec4<f32>(x_918.z, x_918.w, x_918.y, x_918.z));
        let x_922 : vec4<f32> = u_xlat8;
        let x_924 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_922.y, x_922.y, x_922.z, x_922.z) * x_924);
        let x_928 : f32 = u_xlat8.z;
        let x_930 : f32 = u_xlat13.y;
        u_xlat69 = (x_928 * x_930);
        let x_933 : vec4<f32> = u_xlat11;
        let x_934 : vec2<f32> = vec2<f32>(x_933.x, x_933.y);
        let x_936 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_934.x, x_934.y, x_936);
        let x_943 : vec3<f32> = txVec4;
        let x_945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_943.xy, x_943.z);
        u_xlat7.x = x_945;
        let x_948 : vec4<f32> = u_xlat11;
        let x_949 : vec2<f32> = vec2<f32>(x_948.z, x_948.w);
        let x_951 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_959 : vec3<f32> = txVec5;
        let x_961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_959.xy, x_959.z);
        u_xlat28 = x_961;
        let x_962 : f32 = u_xlat28;
        let x_964 : f32 = u_xlat14.y;
        u_xlat28 = (x_962 * x_964);
        let x_967 : f32 = u_xlat14.x;
        let x_969 : f32 = u_xlat7.x;
        let x_971 : f32 = u_xlat28;
        u_xlat7.x = ((x_967 * x_969) + x_971);
        let x_975 : vec2<f32> = u_xlat49;
        let x_977 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_975.x, x_975.y, x_977);
        let x_984 : vec3<f32> = txVec6;
        let x_986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_984.xy, x_984.z);
        u_xlat28 = x_986;
        let x_988 : f32 = u_xlat14.z;
        let x_989 : f32 = u_xlat28;
        let x_992 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_988 * x_989) + x_992);
        let x_996 : vec4<f32> = u_xlat10;
        let x_997 : vec2<f32> = vec2<f32>(x_996.x, x_996.y);
        let x_999 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_997.x, x_997.y, x_999);
        let x_1006 : vec3<f32> = txVec7;
        let x_1008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1006.xy, x_1006.z);
        u_xlat28 = x_1008;
        let x_1010 : f32 = u_xlat14.w;
        let x_1011 : f32 = u_xlat28;
        let x_1014 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1010 * x_1011) + x_1014);
        let x_1018 : vec4<f32> = u_xlat12;
        let x_1019 : vec2<f32> = vec2<f32>(x_1018.x, x_1018.y);
        let x_1021 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1019.x, x_1019.y, x_1021);
        let x_1028 : vec3<f32> = txVec8;
        let x_1030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1028.xy, x_1028.z);
        u_xlat28 = x_1030;
        let x_1032 : f32 = u_xlat15.x;
        let x_1033 : f32 = u_xlat28;
        let x_1036 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1032 * x_1033) + x_1036);
        let x_1040 : vec4<f32> = u_xlat12;
        let x_1041 : vec2<f32> = vec2<f32>(x_1040.z, x_1040.w);
        let x_1043 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1041.x, x_1041.y, x_1043);
        let x_1050 : vec3<f32> = txVec9;
        let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1050.xy, x_1050.z);
        u_xlat28 = x_1052;
        let x_1054 : f32 = u_xlat15.y;
        let x_1055 : f32 = u_xlat28;
        let x_1058 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1054 * x_1055) + x_1058);
        let x_1062 : vec4<f32> = u_xlat10;
        let x_1063 : vec2<f32> = vec2<f32>(x_1062.z, x_1062.w);
        let x_1065 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1063.x, x_1063.y, x_1065);
        let x_1072 : vec3<f32> = txVec10;
        let x_1074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1072.xy, x_1072.z);
        u_xlat28 = x_1074;
        let x_1076 : f32 = u_xlat15.z;
        let x_1077 : f32 = u_xlat28;
        let x_1080 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1076 * x_1077) + x_1080);
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1085 : vec2<f32> = vec2<f32>(x_1084.x, x_1084.y);
        let x_1087 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1085.x, x_1085.y, x_1087);
        let x_1094 : vec3<f32> = txVec11;
        let x_1096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1094.xy, x_1094.z);
        u_xlat28 = x_1096;
        let x_1098 : f32 = u_xlat15.w;
        let x_1099 : f32 = u_xlat28;
        let x_1102 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1098 * x_1099) + x_1102);
        let x_1106 : vec4<f32> = u_xlat9;
        let x_1107 : vec2<f32> = vec2<f32>(x_1106.z, x_1106.w);
        let x_1109 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1107.x, x_1107.y, x_1109);
        let x_1116 : vec3<f32> = txVec12;
        let x_1118 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1116.xy, x_1116.z);
        u_xlat28 = x_1118;
        let x_1119 : f32 = u_xlat69;
        let x_1120 : f32 = u_xlat28;
        let x_1123 : f32 = u_xlat7.x;
        u_xlat48.x = ((x_1119 * x_1120) + x_1123);
      } else {
        let x_1127 : vec4<f32> = u_xlat4;
        let x_1130 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1133 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1130.z, x_1130.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1134 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1138 : vec2<f32> = floor(vec2<f32>(x_1136.x, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1141 : vec4<f32> = u_xlat4;
        let x_1144 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(x_1144.z, x_1144.w)) + -(vec2<f32>(x_1147.x, x_1147.y)));
        let x_1151 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1151.x, x_1151.x, x_1151.y, x_1151.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1154.x, x_1154.x, x_1154.z, x_1154.z) * vec4<f32>(x_1156.x, x_1156.x, x_1156.z, x_1156.z));
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1163 : vec2<f32> = (vec2<f32>(x_1159.y, x_1159.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1164.x, x_1163.x, x_1164.z, x_1163.y);
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1169 : vec2<f32> = u_xlat49;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1169));
        let x_1172 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1172.w);
        let x_1174 : vec2<f32> = u_xlat49;
        let x_1176 : vec2<f32> = (-(x_1174) + vec2<f32>(1.0f, 1.0f));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1179, vec2<f32>(0.0f, 0.0f));
        let x_1181 : vec2<f32> = u_xlat51;
        let x_1183 : vec2<f32> = u_xlat51;
        let x_1185 : vec4<f32> = u_xlat9;
        let x_1187 : vec2<f32> = ((-(x_1181) * x_1183) + vec2<f32>(x_1185.x, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
        let x_1190 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1190, vec2<f32>(0.0f, 0.0f));
        let x_1193 : vec2<f32> = u_xlat51;
        let x_1195 : vec2<f32> = u_xlat51;
        let x_1197 : vec4<f32> = u_xlat8;
        let x_1199 : vec2<f32> = ((-(x_1193) * x_1195) + vec2<f32>(x_1197.y, x_1197.w));
        let x_1200 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1199.x, x_1200.y, x_1199.y);
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1205 : vec2<f32> = (vec2<f32>(x_1202.x, x_1202.y) + vec2<f32>(2.0f, 2.0f));
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1208 : vec3<f32> = u_xlat29;
        let x_1210 : vec2<f32> = (vec2<f32>(x_1208.x, x_1208.z) + vec2<f32>(2.0f, 2.0f));
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1211.x, x_1210.x, x_1211.z, x_1210.y);
        let x_1214 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1214 * 0.081632003f);
        let x_1218 : vec4<f32> = u_xlat8;
        let x_1221 : vec3<f32> = (vec3<f32>(x_1218.z, x_1218.x, x_1218.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1222 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1227 : vec2<f32> = (vec2<f32>(x_1224.x, x_1224.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1228 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
        let x_1231 : f32 = u_xlat12.y;
        u_xlat11.x = x_1231;
        let x_1233 : vec2<f32> = u_xlat49;
        let x_1240 : vec2<f32> = ((vec2<f32>(x_1233.x, x_1233.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1241 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1241.x, x_1240.x, x_1241.z, x_1240.y);
        let x_1243 : vec2<f32> = u_xlat49;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1243.x, x_1243.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1247.x, x_1248.y, x_1247.y, x_1248.w);
        let x_1251 : f32 = u_xlat8.x;
        u_xlat9.y = x_1251;
        let x_1254 : f32 = u_xlat10.y;
        u_xlat9.w = x_1254;
        let x_1256 : vec4<f32> = u_xlat9;
        let x_1257 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1256 + x_1257);
        let x_1259 : vec2<f32> = u_xlat49;
        let x_1262 : vec2<f32> = ((vec2<f32>(x_1259.y, x_1259.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1263 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1263.x, x_1262.x, x_1263.z, x_1262.y);
        let x_1265 : vec2<f32> = u_xlat49;
        let x_1268 : vec2<f32> = ((vec2<f32>(x_1265.y, x_1265.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1268.x, x_1269.y, x_1268.y, x_1269.w);
        let x_1272 : f32 = u_xlat8.y;
        u_xlat10.y = x_1272;
        let x_1274 : vec4<f32> = u_xlat10;
        let x_1275 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1274 + x_1275);
        let x_1277 : vec4<f32> = u_xlat9;
        let x_1278 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1277 / x_1278);
        let x_1280 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1280 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1286 : vec4<f32> = u_xlat10;
        let x_1287 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1286 / x_1287);
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1289 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1291 : vec4<f32> = u_xlat9;
        let x_1294 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1291.w, x_1291.x, x_1291.y, x_1291.z) * vec4<f32>(x_1294.x, x_1294.x, x_1294.x, x_1294.x));
        let x_1297 : vec4<f32> = u_xlat10;
        let x_1300 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1297.x, x_1297.w, x_1297.y, x_1297.z) * vec4<f32>(x_1300.y, x_1300.y, x_1300.y, x_1300.y));
        let x_1303 : vec4<f32> = u_xlat9;
        let x_1304 : vec3<f32> = vec3<f32>(x_1303.y, x_1303.z, x_1303.w);
        let x_1305 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1304.x, x_1305.y, x_1304.y, x_1304.z);
        let x_1308 : f32 = u_xlat10.x;
        u_xlat12.y = x_1308;
        let x_1310 : vec4<f32> = u_xlat7;
        let x_1313 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y) * vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y)) + vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1316.y));
        let x_1319 : vec4<f32> = u_xlat7;
        let x_1322 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1325 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(x_1322.x, x_1322.y)) + vec2<f32>(x_1325.w, x_1325.y));
        let x_1329 : f32 = u_xlat12.y;
        u_xlat9.y = x_1329;
        let x_1332 : f32 = u_xlat10.z;
        u_xlat12.y = x_1332;
        let x_1334 : vec4<f32> = u_xlat7;
        let x_1337 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y) * vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y)) + vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1340.y));
        let x_1343 : vec4<f32> = u_xlat7;
        let x_1346 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1349 : vec4<f32> = u_xlat12;
        let x_1351 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.y) * vec2<f32>(x_1346.x, x_1346.y)) + vec2<f32>(x_1349.w, x_1349.y));
        let x_1352 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1355 : f32 = u_xlat12.y;
        u_xlat9.z = x_1355;
        let x_1358 : vec4<f32> = u_xlat7;
        let x_1361 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1364 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y) * vec4<f32>(x_1361.x, x_1361.y, x_1361.x, x_1361.y)) + vec4<f32>(x_1364.x, x_1364.y, x_1364.x, x_1364.z));
        let x_1368 : f32 = u_xlat10.w;
        u_xlat12.y = x_1368;
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1374 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.y) * vec4<f32>(x_1374.x, x_1374.y, x_1374.x, x_1374.y)) + vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1377.y));
        let x_1381 : vec4<f32> = u_xlat7;
        let x_1384 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1381.x, x_1381.y) * vec2<f32>(x_1384.x, x_1384.y)) + vec2<f32>(x_1387.w, x_1387.y));
        let x_1391 : f32 = u_xlat12.y;
        u_xlat9.w = x_1391;
        let x_1394 : vec4<f32> = u_xlat7;
        let x_1397 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1400 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1394.x, x_1394.y) * vec2<f32>(x_1397.x, x_1397.y)) + vec2<f32>(x_1400.x, x_1400.w));
        let x_1403 : vec4<f32> = u_xlat12;
        let x_1404 : vec3<f32> = vec3<f32>(x_1403.x, x_1403.z, x_1403.w);
        let x_1405 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1404.x, x_1405.y, x_1404.y, x_1404.z);
        let x_1407 : vec4<f32> = u_xlat7;
        let x_1410 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1413 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1407.x, x_1407.y, x_1407.x, x_1407.y) * vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.y)) + vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1413.y));
        let x_1417 : vec4<f32> = u_xlat7;
        let x_1420 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.x, x_1420.y)) + vec2<f32>(x_1423.w, x_1423.y));
        let x_1427 : f32 = u_xlat9.x;
        u_xlat10.x = x_1427;
        let x_1429 : vec4<f32> = u_xlat7;
        let x_1432 : vec4<f32> = x_203.x_MainLightShadowmapSize;
        let x_1435 : vec4<f32> = u_xlat10;
        let x_1437 : vec2<f32> = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1432.x, x_1432.y)) + vec2<f32>(x_1435.x, x_1435.y));
        let x_1438 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1437.x, x_1437.y, x_1438.z, x_1438.w);
        let x_1441 : vec4<f32> = u_xlat8;
        let x_1443 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1441.x, x_1441.x, x_1441.x, x_1441.x) * x_1443);
        let x_1446 : vec4<f32> = u_xlat8;
        let x_1448 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1446.y, x_1446.y, x_1446.y, x_1446.y) * x_1448);
        let x_1451 : vec4<f32> = u_xlat8;
        let x_1453 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1451.z, x_1451.z, x_1451.z, x_1451.z) * x_1453);
        let x_1455 : vec4<f32> = u_xlat8;
        let x_1457 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1455.w, x_1455.w, x_1455.w, x_1455.w) * x_1457);
        let x_1460 : vec4<f32> = u_xlat13;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.x, x_1460.y);
        let x_1463 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec13;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1470.xy, x_1470.z);
        u_xlat69 = x_1472;
        let x_1474 : vec4<f32> = u_xlat13;
        let x_1475 : vec2<f32> = vec2<f32>(x_1474.z, x_1474.w);
        let x_1477 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec14;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1484.xy, x_1484.z);
        u_xlat9.x = x_1486;
        let x_1489 : f32 = u_xlat9.x;
        let x_1491 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1489 * x_1491);
        let x_1495 : f32 = u_xlat18.x;
        let x_1496 : f32 = u_xlat69;
        let x_1499 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1495 * x_1496) + x_1499);
        let x_1502 : vec2<f32> = u_xlat49;
        let x_1504 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec15;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1511.xy, x_1511.z);
        u_xlat49.x = x_1513;
        let x_1516 : f32 = u_xlat18.z;
        let x_1518 : f32 = u_xlat49.x;
        let x_1520 : f32 = u_xlat69;
        u_xlat69 = ((x_1516 * x_1518) + x_1520);
        let x_1523 : vec4<f32> = u_xlat16;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.x, x_1523.y);
        let x_1526 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec16;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1533.xy, x_1533.z);
        u_xlat49.x = x_1535;
        let x_1538 : f32 = u_xlat18.w;
        let x_1540 : f32 = u_xlat49.x;
        let x_1542 : f32 = u_xlat69;
        u_xlat69 = ((x_1538 * x_1540) + x_1542);
        let x_1545 : vec4<f32> = u_xlat14;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.x, x_1545.y);
        let x_1548 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec17;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1555.xy, x_1555.z);
        u_xlat49.x = x_1557;
        let x_1560 : f32 = u_xlat19.x;
        let x_1562 : f32 = u_xlat49.x;
        let x_1564 : f32 = u_xlat69;
        u_xlat69 = ((x_1560 * x_1562) + x_1564);
        let x_1567 : vec4<f32> = u_xlat14;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.z, x_1567.w);
        let x_1570 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec18;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1577.xy, x_1577.z);
        u_xlat49.x = x_1579;
        let x_1582 : f32 = u_xlat19.y;
        let x_1584 : f32 = u_xlat49.x;
        let x_1586 : f32 = u_xlat69;
        u_xlat69 = ((x_1582 * x_1584) + x_1586);
        let x_1589 : vec4<f32> = u_xlat15;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.x, x_1589.y);
        let x_1592 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec19;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1599.xy, x_1599.z);
        u_xlat49.x = x_1601;
        let x_1604 : f32 = u_xlat19.z;
        let x_1606 : f32 = u_xlat49.x;
        let x_1608 : f32 = u_xlat69;
        u_xlat69 = ((x_1604 * x_1606) + x_1608);
        let x_1611 : vec4<f32> = u_xlat16;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.z, x_1611.w);
        let x_1614 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec20;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1621.xy, x_1621.z);
        u_xlat49.x = x_1623;
        let x_1626 : f32 = u_xlat19.w;
        let x_1628 : f32 = u_xlat49.x;
        let x_1630 : f32 = u_xlat69;
        u_xlat69 = ((x_1626 * x_1628) + x_1630);
        let x_1633 : vec4<f32> = u_xlat17;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.x, x_1633.y);
        let x_1636 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec21;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1643.xy, x_1643.z);
        u_xlat49.x = x_1645;
        let x_1648 : f32 = u_xlat20.x;
        let x_1650 : f32 = u_xlat49.x;
        let x_1652 : f32 = u_xlat69;
        u_xlat69 = ((x_1648 * x_1650) + x_1652);
        let x_1655 : vec4<f32> = u_xlat17;
        let x_1656 : vec2<f32> = vec2<f32>(x_1655.z, x_1655.w);
        let x_1658 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1656.x, x_1656.y, x_1658);
        let x_1665 : vec3<f32> = txVec22;
        let x_1667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1665.xy, x_1665.z);
        u_xlat49.x = x_1667;
        let x_1670 : f32 = u_xlat20.y;
        let x_1672 : f32 = u_xlat49.x;
        let x_1674 : f32 = u_xlat69;
        u_xlat69 = ((x_1670 * x_1672) + x_1674);
        let x_1677 : vec2<f32> = u_xlat30;
        let x_1679 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec23;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
        u_xlat49.x = x_1688;
        let x_1691 : f32 = u_xlat20.z;
        let x_1693 : f32 = u_xlat49.x;
        let x_1695 : f32 = u_xlat69;
        u_xlat69 = ((x_1691 * x_1693) + x_1695);
        let x_1698 : vec2<f32> = u_xlat57;
        let x_1700 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec24;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1707.xy, x_1707.z);
        u_xlat49.x = x_1709;
        let x_1712 : f32 = u_xlat20.w;
        let x_1714 : f32 = u_xlat49.x;
        let x_1716 : f32 = u_xlat69;
        u_xlat69 = ((x_1712 * x_1714) + x_1716);
        let x_1719 : vec4<f32> = u_xlat12;
        let x_1720 : vec2<f32> = vec2<f32>(x_1719.x, x_1719.y);
        let x_1722 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec25;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1729.xy, x_1729.z);
        u_xlat49.x = x_1731;
        let x_1734 : f32 = u_xlat8.x;
        let x_1736 : f32 = u_xlat49.x;
        let x_1738 : f32 = u_xlat69;
        u_xlat69 = ((x_1734 * x_1736) + x_1738);
        let x_1741 : vec4<f32> = u_xlat12;
        let x_1742 : vec2<f32> = vec2<f32>(x_1741.z, x_1741.w);
        let x_1744 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec26;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1751.xy, x_1751.z);
        u_xlat49.x = x_1753;
        let x_1756 : f32 = u_xlat8.y;
        let x_1758 : f32 = u_xlat49.x;
        let x_1760 : f32 = u_xlat69;
        u_xlat69 = ((x_1756 * x_1758) + x_1760);
        let x_1763 : vec2<f32> = u_xlat52;
        let x_1765 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec27;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1772.xy, x_1772.z);
        u_xlat49.x = x_1774;
        let x_1777 : f32 = u_xlat8.z;
        let x_1779 : f32 = u_xlat49.x;
        let x_1781 : f32 = u_xlat69;
        u_xlat69 = ((x_1777 * x_1779) + x_1781);
        let x_1784 : vec4<f32> = u_xlat7;
        let x_1785 : vec2<f32> = vec2<f32>(x_1784.x, x_1784.y);
        let x_1787 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
        let x_1794 : vec3<f32> = txVec28;
        let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1794.xy, x_1794.z);
        u_xlat7.x = x_1796;
        let x_1799 : f32 = u_xlat8.w;
        let x_1801 : f32 = u_xlat7.x;
        let x_1803 : f32 = u_xlat69;
        u_xlat48.x = ((x_1799 * x_1801) + x_1803);
      }
    }
  } else {
    let x_1808 : vec4<f32> = u_xlat4;
    let x_1809 : vec2<f32> = vec2<f32>(x_1808.x, x_1808.y);
    let x_1811 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1809.x, x_1809.y, x_1811);
    let x_1818 : vec3<f32> = txVec29;
    let x_1820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1818.xy, x_1818.z);
    u_xlat48.x = x_1820;
  }
  let x_1823 : f32 = x_203.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1823) + 1.0f);
  let x_1828 : f32 = u_xlat48.x;
  let x_1830 : f32 = x_203.x_MainLightShadowParams.x;
  let x_1833 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1828 * x_1830) + x_1833);
  let x_1840 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_1840);
  let x_1845 : f32 = u_xlat4.z;
  u_xlatb46 = (x_1845 >= 1.0f);
  let x_1847 : bool = u_xlatb46;
  let x_1849 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_1847 | x_1849);
  let x_1853 : bool = u_xlatb25.x;
  if (x_1853) {
    x_1854 = 1.0f;
  } else {
    let x_1859 : f32 = u_xlat4.x;
    x_1854 = x_1859;
  }
  let x_1860 : f32 = x_1854;
  u_xlat4.x = x_1860;
  let x_1862 : vec3<f32> = vs_TEXCOORD1;
  let x_1864 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1866 : vec3<f32> = (x_1862 + -(x_1864));
  let x_1867 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
  let x_1870 : vec4<f32> = u_xlat7;
  let x_1872 : vec4<f32> = u_xlat7;
  u_xlat25.x = dot(vec3<f32>(x_1870.x, x_1870.y, x_1870.z), vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
  let x_1877 : f32 = u_xlat25.x;
  let x_1879 : f32 = x_203.x_MainLightShadowParams.z;
  let x_1882 : f32 = x_203.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1877 * x_1879) + x_1882);
  let x_1886 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1886, 0.0f, 1.0f);
  let x_1891 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_1891) + 1.0f);
  let x_1895 : f32 = u_xlat25.x;
  let x_1896 : f32 = u_xlat46;
  let x_1899 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1895 * x_1896) + x_1899);
  let x_1908 : f32 = x_1906.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_1908 == -1.0f));
  let x_1912 : bool = u_xlatb25.x;
  if (x_1912) {
    let x_1915 : vec3<f32> = vs_TEXCOORD1;
    let x_1918 : vec4<f32> = x_1906.x_MainLightWorldToLight[1i];
    u_xlat25 = (vec2<f32>(x_1915.y, x_1915.y) * vec2<f32>(x_1918.x, x_1918.y));
    let x_1922 : vec4<f32> = x_1906.x_MainLightWorldToLight[0i];
    let x_1924 : vec3<f32> = vs_TEXCOORD1;
    let x_1927 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_1922.x, x_1922.y) * vec2<f32>(x_1924.x, x_1924.x)) + x_1927);
    let x_1930 : vec4<f32> = x_1906.x_MainLightWorldToLight[2i];
    let x_1932 : vec3<f32> = vs_TEXCOORD1;
    let x_1935 : vec2<f32> = u_xlat25;
    u_xlat25 = ((vec2<f32>(x_1930.x, x_1930.y) * vec2<f32>(x_1932.z, x_1932.z)) + x_1935);
    let x_1937 : vec2<f32> = u_xlat25;
    let x_1939 : vec4<f32> = x_1906.x_MainLightWorldToLight[3i];
    u_xlat25 = (x_1937 + vec2<f32>(x_1939.x, x_1939.y));
    let x_1942 : vec2<f32> = u_xlat25;
    u_xlat25 = ((x_1942 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1950 : vec2<f32> = u_xlat25;
    let x_1952 : f32 = x_44.x_GlobalMipBias.x;
    let x_1953 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1950, x_1952);
    u_xlat7 = x_1953;
    let x_1955 : f32 = x_1906.x_MainLightCookieTextureFormat;
    let x_1957 : f32 = x_1906.x_MainLightCookieTextureFormat;
    let x_1959 : f32 = x_1906.x_MainLightCookieTextureFormat;
    let x_1961 : f32 = x_1906.x_MainLightCookieTextureFormat;
    let x_1962 : vec4<f32> = vec4<f32>(x_1955, x_1957, x_1959, x_1961);
    let x_1969 : vec4<bool> = (vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1962.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_1969.x, x_1969.y);
    let x_1972 : bool = u_xlatb25.y;
    if (x_1972) {
      let x_1977 : f32 = u_xlat7.w;
      x_1973 = x_1977;
    } else {
      let x_1980 : f32 = u_xlat7.x;
      x_1973 = x_1980;
    }
    let x_1981 : f32 = x_1973;
    u_xlat46 = x_1981;
    let x_1983 : bool = u_xlatb25.x;
    if (x_1983) {
      let x_1987 : vec4<f32> = u_xlat7;
      x_1984 = vec3<f32>(x_1987.x, x_1987.y, x_1987.z);
    } else {
      let x_1990 : f32 = u_xlat46;
      x_1984 = vec3<f32>(x_1990, x_1990, x_1990);
    }
    let x_1992 : vec3<f32> = x_1984;
    let x_1993 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1999 : vec4<f32> = u_xlat7;
  let x_2002 : vec4<f32> = x_44.x_MainLightColor;
  let x_2004 : vec3<f32> = (vec3<f32>(x_1999.x, x_1999.y, x_1999.z) * vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
  let x_2007 : f32 = u_xlat27;
  let x_2009 : vec4<f32> = u_xlat7;
  let x_2011 : vec3<f32> = (vec3<f32>(x_2007, x_2007, x_2007) * vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
  let x_2012 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
  let x_2014 : vec3<f32> = u_xlat3;
  let x_2016 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(-(x_2014), x_2016);
  let x_2020 : f32 = u_xlat25.x;
  let x_2022 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2020 + x_2022);
  let x_2025 : vec3<f32> = u_xlat2;
  let x_2026 : vec2<f32> = u_xlat25;
  let x_2030 : vec3<f32> = u_xlat3;
  let x_2032 : vec3<f32> = ((x_2025 * -(vec3<f32>(x_2026.x, x_2026.x, x_2026.x))) + -(x_2030));
  let x_2033 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2032.x, x_2032.y, x_2032.z, x_2033.w);
  let x_2035 : vec3<f32> = u_xlat2;
  let x_2036 : vec3<f32> = u_xlat3;
  u_xlat25.x = dot(x_2035, x_2036);
  let x_2040 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2040, 0.0f, 1.0f);
  let x_2044 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2044) + 1.0f);
  let x_2049 : f32 = u_xlat25.x;
  let x_2051 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2049 * x_2051);
  let x_2055 : f32 = u_xlat25.x;
  let x_2057 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2055 * x_2057);
  let x_2060 : f32 = u_xlat63;
  u_xlat46 = ((-(x_2060) * 0.699999988f) + 1.700000048f);
  let x_2066 : f32 = u_xlat63;
  let x_2067 : f32 = u_xlat46;
  u_xlat63 = (x_2066 * x_2067);
  let x_2069 : f32 = u_xlat63;
  u_xlat63 = (x_2069 * 6.0f);
  let x_2080 : vec4<f32> = u_xlat8;
  let x_2082 : f32 = u_xlat63;
  let x_2083 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2080.x, x_2080.y, x_2080.z), x_2082);
  u_xlat8 = x_2083;
  let x_2085 : f32 = u_xlat8.w;
  u_xlat63 = (x_2085 + -1.0f);
  let x_2088 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_2089 : f32 = u_xlat63;
  u_xlat63 = ((x_2088 * x_2089) + 1.0f);
  let x_2092 : f32 = u_xlat63;
  u_xlat63 = max(x_2092, 0.0f);
  let x_2094 : f32 = u_xlat63;
  u_xlat63 = log2(x_2094);
  let x_2096 : f32 = u_xlat63;
  let x_2098 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2096 * x_2098);
  let x_2100 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2100);
  let x_2102 : f32 = u_xlat63;
  let x_2104 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2102 * x_2104);
  let x_2106 : vec4<f32> = u_xlat8;
  let x_2108 : f32 = u_xlat63;
  let x_2110 : vec3<f32> = (vec3<f32>(x_2106.x, x_2106.y, x_2106.z) * vec3<f32>(x_2108, x_2108, x_2108));
  let x_2111 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
  let x_2113 : f32 = u_xlat66;
  let x_2115 : f32 = u_xlat66;
  u_xlat48 = ((vec2<f32>(x_2113, x_2113) * vec2<f32>(x_2115, x_2115)) + vec2<f32>(-1.0f, 1.0f));
  let x_2121 : f32 = u_xlat48.y;
  u_xlat63 = (1.0f / x_2121);
  let x_2123 : vec4<f32> = u_xlat0;
  let x_2126 : f32 = u_xlat65;
  let x_2128 : vec3<f32> = (-(vec3<f32>(x_2123.x, x_2123.y, x_2123.z)) + vec3<f32>(x_2126, x_2126, x_2126));
  let x_2129 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2129.w);
  let x_2131 : vec2<f32> = u_xlat25;
  let x_2133 : vec4<f32> = u_xlat9;
  let x_2136 : vec4<f32> = u_xlat0;
  let x_2138 : vec3<f32> = ((vec3<f32>(x_2131.x, x_2131.x, x_2131.x) * vec3<f32>(x_2133.x, x_2133.y, x_2133.z)) + vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
  let x_2139 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
  let x_2141 : f32 = u_xlat63;
  let x_2143 : vec4<f32> = u_xlat9;
  let x_2145 : vec3<f32> = (vec3<f32>(x_2141, x_2141, x_2141) * vec3<f32>(x_2143.x, x_2143.y, x_2143.z));
  let x_2146 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2145.x, x_2145.y, x_2145.z, x_2146.w);
  let x_2148 : vec4<f32> = u_xlat8;
  let x_2150 : vec4<f32> = u_xlat9;
  let x_2152 : vec3<f32> = (vec3<f32>(x_2148.x, x_2148.y, x_2148.z) * vec3<f32>(x_2150.x, x_2150.y, x_2150.z));
  let x_2153 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
  let x_2155 : vec4<f32> = u_xlat5;
  let x_2157 : vec3<f32> = u_xlat22;
  let x_2159 : vec4<f32> = u_xlat8;
  let x_2161 : vec3<f32> = ((vec3<f32>(x_2155.x, x_2155.y, x_2155.z) * x_2157) + vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
  let x_2162 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
  let x_2165 : f32 = u_xlat4.x;
  let x_2167 : f32 = x_95.unity_LightData.z;
  u_xlat63 = (x_2165 * x_2167);
  let x_2169 : vec3<f32> = u_xlat2;
  let x_2171 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_2169, vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
  let x_2174 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2174, 0.0f, 1.0f);
  let x_2176 : f32 = u_xlat63;
  let x_2177 : f32 = u_xlat65;
  u_xlat63 = (x_2176 * x_2177);
  let x_2179 : f32 = u_xlat63;
  let x_2181 : vec4<f32> = u_xlat7;
  let x_2183 : vec3<f32> = (vec3<f32>(x_2179, x_2179, x_2179) * vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
  let x_2184 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
  let x_2186 : vec3<f32> = u_xlat3;
  let x_2188 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2190 : vec3<f32> = (x_2186 + vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
  let x_2191 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
  let x_2193 : vec4<f32> = u_xlat7;
  let x_2195 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2193.x, x_2193.y, x_2193.z), vec3<f32>(x_2195.x, x_2195.y, x_2195.z));
  let x_2198 : f32 = u_xlat63;
  u_xlat63 = max(x_2198, 1.17549435e-37f);
  let x_2201 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2201);
  let x_2203 : f32 = u_xlat63;
  let x_2205 : vec4<f32> = u_xlat7;
  let x_2207 : vec3<f32> = (vec3<f32>(x_2203, x_2203, x_2203) * vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2208 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
  let x_2210 : vec3<f32> = u_xlat2;
  let x_2211 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(x_2210, vec3<f32>(x_2211.x, x_2211.y, x_2211.z));
  let x_2214 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2214, 0.0f, 1.0f);
  let x_2217 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2219 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2217.x, x_2217.y, x_2217.z), vec3<f32>(x_2219.x, x_2219.y, x_2219.z));
  let x_2222 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2222, 0.0f, 1.0f);
  let x_2224 : f32 = u_xlat63;
  let x_2225 : f32 = u_xlat63;
  u_xlat63 = (x_2224 * x_2225);
  let x_2227 : f32 = u_xlat63;
  let x_2229 : f32 = u_xlat48.x;
  u_xlat63 = ((x_2227 * x_2229) + 1.000010014f);
  let x_2233 : f32 = u_xlat65;
  let x_2234 : f32 = u_xlat65;
  u_xlat65 = (x_2233 * x_2234);
  let x_2236 : f32 = u_xlat63;
  let x_2237 : f32 = u_xlat63;
  u_xlat63 = (x_2236 * x_2237);
  let x_2239 : f32 = u_xlat65;
  u_xlat65 = max(x_2239, 0.100000001f);
  let x_2242 : f32 = u_xlat63;
  let x_2243 : f32 = u_xlat65;
  u_xlat63 = (x_2242 * x_2243);
  let x_2245 : f32 = u_xlat68;
  let x_2246 : f32 = u_xlat63;
  u_xlat63 = (x_2245 * x_2246);
  let x_2248 : f32 = u_xlat67;
  let x_2249 : f32 = u_xlat63;
  u_xlat63 = (x_2248 / x_2249);
  let x_2251 : vec4<f32> = u_xlat0;
  let x_2253 : f32 = u_xlat63;
  let x_2256 : vec3<f32> = u_xlat22;
  let x_2257 : vec3<f32> = ((vec3<f32>(x_2251.x, x_2251.y, x_2251.z) * vec3<f32>(x_2253, x_2253, x_2253)) + x_2256);
  let x_2258 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2257.x, x_2257.y, x_2257.z, x_2258.w);
  let x_2260 : vec4<f32> = u_xlat4;
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2264 : vec3<f32> = (vec3<f32>(x_2260.x, x_2260.y, x_2260.z) * vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
  let x_2265 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
  let x_2268 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2270 : f32 = x_95.unity_LightData.y;
  u_xlat63 = min(x_2268, x_2270);
  let x_2272 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2272));
  let x_2277 : f32 = x_1906.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2279 : f32 = x_1906.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2281 : f32 = x_1906.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2283 : f32 = x_1906.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2284 : vec4<f32> = vec4<f32>(x_2277, x_2279, x_2281, x_2283);
  let x_2290 : vec4<bool> = (vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2284.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2290.x, x_2290.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2301 : u32 = u_xlatu_loop_1;
    let x_2302 : u32 = u_xlatu63;
    if ((x_2301 < x_2302)) {
    } else {
      break;
    }
    let x_2305 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2305 >> 2u);
    let x_2308 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2308 & 3u));
    let x_2311 : u32 = u_xlatu66;
    let x_2314 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_2311)];
    let x_2324 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2329 : vec4<u32> = indexable[x_2324];
    u_xlat66 = dot(x_2314, bitcast<vec4<f32>>(x_2329));
    let x_2332 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2332));
    let x_2335 : vec3<f32> = vs_TEXCOORD1;
    let x_2347 : u32 = u_xlatu66;
    let x_2350 : vec4<f32> = x_2346.x_AdditionalLightsPosition[bitcast<i32>(x_2347)];
    let x_2353 : u32 = u_xlatu66;
    let x_2356 : vec4<f32> = x_2346.x_AdditionalLightsPosition[bitcast<i32>(x_2353)];
    let x_2358 : vec3<f32> = ((-(x_2335) * vec3<f32>(x_2350.w, x_2350.w, x_2350.w)) + vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
    let x_2359 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
    let x_2361 : vec4<f32> = u_xlat9;
    let x_2363 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2361.x, x_2361.y, x_2361.z), vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
    let x_2366 : f32 = u_xlat69;
    u_xlat69 = max(x_2366, 6.10351562e-05f);
    let x_2369 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2369);
    let x_2372 : vec2<f32> = u_xlat49;
    let x_2374 : vec4<f32> = u_xlat9;
    let x_2376 : vec3<f32> = (vec3<f32>(x_2372.x, x_2372.x, x_2372.x) * vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
    let x_2377 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
    let x_2380 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2380);
    let x_2382 : f32 = u_xlat69;
    let x_2383 : u32 = u_xlatu66;
    let x_2386 : f32 = x_2346.x_AdditionalLightsAttenuation[bitcast<i32>(x_2383)].x;
    u_xlat69 = (x_2382 * x_2386);
    let x_2388 : f32 = u_xlat69;
    let x_2390 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2388) * x_2390) + 1.0f);
    let x_2393 : f32 = u_xlat69;
    u_xlat69 = max(x_2393, 0.0f);
    let x_2395 : f32 = u_xlat69;
    let x_2396 : f32 = u_xlat69;
    u_xlat69 = (x_2395 * x_2396);
    let x_2398 : f32 = u_xlat69;
    let x_2399 : f32 = u_xlat70;
    u_xlat69 = (x_2398 * x_2399);
    let x_2401 : u32 = u_xlatu66;
    let x_2404 : vec4<f32> = x_2346.x_AdditionalLightsSpotDir[bitcast<i32>(x_2401)];
    let x_2406 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2404.x, x_2404.y, x_2404.z), vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
    let x_2409 : f32 = u_xlat70;
    let x_2410 : u32 = u_xlatu66;
    let x_2413 : f32 = x_2346.x_AdditionalLightsAttenuation[bitcast<i32>(x_2410)].z;
    let x_2415 : u32 = u_xlatu66;
    let x_2418 : f32 = x_2346.x_AdditionalLightsAttenuation[bitcast<i32>(x_2415)].w;
    u_xlat70 = ((x_2409 * x_2413) + x_2418);
    let x_2420 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2420, 0.0f, 1.0f);
    let x_2422 : f32 = u_xlat70;
    let x_2423 : f32 = u_xlat70;
    u_xlat70 = (x_2422 * x_2423);
    let x_2425 : f32 = u_xlat69;
    let x_2426 : f32 = u_xlat70;
    u_xlat69 = (x_2425 * x_2426);
    let x_2429 : u32 = u_xlatu66;
    u_xlatu70 = (x_2429 >> 5u);
    let x_2432 : u32 = u_xlatu66;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2432) & 31i)));
    let x_2438 : i32 = u_xlati71;
    let x_2440 : u32 = u_xlatu70;
    let x_2443 : f32 = x_1906.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2440)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2438) & bitcast<u32>(x_2443)));
    let x_2447 : i32 = u_xlati70;
    if ((x_2447 != 0i)) {
      let x_2457 : u32 = u_xlatu66;
      let x_2460 : f32 = x_2456.x_AdditionalLightsLightTypes[bitcast<i32>(x_2457)].el;
      u_xlati70 = i32(x_2460);
      let x_2462 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2462 != 0i));
      let x_2466 : u32 = u_xlatu66;
      u_xlati72 = (bitcast<i32>(x_2466) << bitcast<u32>(2i));
      let x_2469 : i32 = u_xlati71;
      if ((x_2469 != 0i)) {
        let x_2473 : vec3<f32> = vs_TEXCOORD1;
        let x_2475 : i32 = u_xlati72;
        let x_2478 : i32 = u_xlati72;
        let x_2482 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2475 + 1i) / 4i)][((x_2478 + 1i) % 4i)];
        let x_2484 : vec3<f32> = (vec3<f32>(x_2473.y, x_2473.y, x_2473.y) * vec3<f32>(x_2482.x, x_2482.y, x_2482.w));
        let x_2485 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
        let x_2487 : i32 = u_xlati72;
        let x_2489 : i32 = u_xlati72;
        let x_2492 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[(x_2487 / 4i)][(x_2489 % 4i)];
        let x_2494 : vec3<f32> = vs_TEXCOORD1;
        let x_2497 : vec4<f32> = u_xlat11;
        let x_2499 : vec3<f32> = ((vec3<f32>(x_2492.x, x_2492.y, x_2492.w) * vec3<f32>(x_2494.x, x_2494.x, x_2494.x)) + vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
        let x_2500 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
        let x_2502 : i32 = u_xlati72;
        let x_2505 : i32 = u_xlati72;
        let x_2509 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2502 + 2i) / 4i)][((x_2505 + 2i) % 4i)];
        let x_2511 : vec3<f32> = vs_TEXCOORD1;
        let x_2514 : vec4<f32> = u_xlat11;
        let x_2516 : vec3<f32> = ((vec3<f32>(x_2509.x, x_2509.y, x_2509.w) * vec3<f32>(x_2511.z, x_2511.z, x_2511.z)) + vec3<f32>(x_2514.x, x_2514.y, x_2514.z));
        let x_2517 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
        let x_2519 : vec4<f32> = u_xlat11;
        let x_2521 : i32 = u_xlati72;
        let x_2524 : i32 = u_xlati72;
        let x_2528 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2521 + 3i) / 4i)][((x_2524 + 3i) % 4i)];
        let x_2530 : vec3<f32> = (vec3<f32>(x_2519.x, x_2519.y, x_2519.z) + vec3<f32>(x_2528.x, x_2528.y, x_2528.w));
        let x_2531 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
        let x_2533 : vec4<f32> = u_xlat11;
        let x_2535 : vec4<f32> = u_xlat11;
        let x_2537 : vec2<f32> = (vec2<f32>(x_2533.x, x_2533.y) / vec2<f32>(x_2535.z, x_2535.z));
        let x_2538 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2537.x, x_2537.y, x_2538.z, x_2538.w);
        let x_2540 : vec4<f32> = u_xlat11;
        let x_2543 : vec2<f32> = ((vec2<f32>(x_2540.x, x_2540.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2544 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
        let x_2546 : vec4<f32> = u_xlat11;
        let x_2550 : vec2<f32> = clamp(vec2<f32>(x_2546.x, x_2546.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2551 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2550.x, x_2550.y, x_2551.z, x_2551.w);
        let x_2553 : u32 = u_xlatu66;
        let x_2556 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2553)];
        let x_2558 : vec4<f32> = u_xlat11;
        let x_2561 : u32 = u_xlatu66;
        let x_2564 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2561)];
        let x_2566 : vec2<f32> = ((vec2<f32>(x_2556.x, x_2556.y) * vec2<f32>(x_2558.x, x_2558.y)) + vec2<f32>(x_2564.z, x_2564.w));
        let x_2567 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
      } else {
        let x_2571 : i32 = u_xlati70;
        u_xlatb70 = (x_2571 == 1i);
        let x_2573 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2573);
        let x_2575 : i32 = u_xlati70;
        if ((x_2575 != 0i)) {
          let x_2580 : vec3<f32> = vs_TEXCOORD1;
          let x_2582 : i32 = u_xlati72;
          let x_2585 : i32 = u_xlati72;
          let x_2589 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2582 + 1i) / 4i)][((x_2585 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2580.y, x_2580.y) * vec2<f32>(x_2589.x, x_2589.y));
          let x_2592 : i32 = u_xlati72;
          let x_2594 : i32 = u_xlati72;
          let x_2597 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[(x_2592 / 4i)][(x_2594 % 4i)];
          let x_2599 : vec3<f32> = vs_TEXCOORD1;
          let x_2602 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2597.x, x_2597.y) * vec2<f32>(x_2599.x, x_2599.x)) + x_2602);
          let x_2604 : i32 = u_xlati72;
          let x_2607 : i32 = u_xlati72;
          let x_2611 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2604 + 2i) / 4i)][((x_2607 + 2i) % 4i)];
          let x_2613 : vec3<f32> = vs_TEXCOORD1;
          let x_2616 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2611.x, x_2611.y) * vec2<f32>(x_2613.z, x_2613.z)) + x_2616);
          let x_2618 : vec2<f32> = u_xlat53;
          let x_2619 : i32 = u_xlati72;
          let x_2622 : i32 = u_xlati72;
          let x_2626 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2619 + 3i) / 4i)][((x_2622 + 3i) % 4i)];
          u_xlat53 = (x_2618 + vec2<f32>(x_2626.x, x_2626.y));
          let x_2629 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2629 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2632 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2632);
          let x_2634 : u32 = u_xlatu66;
          let x_2637 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2634)];
          let x_2639 : vec2<f32> = u_xlat53;
          let x_2641 : u32 = u_xlatu66;
          let x_2644 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2641)];
          let x_2646 : vec2<f32> = ((vec2<f32>(x_2637.x, x_2637.y) * x_2639) + vec2<f32>(x_2644.z, x_2644.w));
          let x_2647 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2646.x, x_2646.y, x_2647.z, x_2647.w);
        } else {
          let x_2650 : vec3<f32> = vs_TEXCOORD1;
          let x_2652 : i32 = u_xlati72;
          let x_2655 : i32 = u_xlati72;
          let x_2659 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2652 + 1i) / 4i)][((x_2655 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2650.y, x_2650.y, x_2650.y, x_2650.y) * x_2659);
          let x_2661 : i32 = u_xlati72;
          let x_2663 : i32 = u_xlati72;
          let x_2666 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[(x_2661 / 4i)][(x_2663 % 4i)];
          let x_2667 : vec3<f32> = vs_TEXCOORD1;
          let x_2670 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2666 * vec4<f32>(x_2667.x, x_2667.x, x_2667.x, x_2667.x)) + x_2670);
          let x_2672 : i32 = u_xlati72;
          let x_2675 : i32 = u_xlati72;
          let x_2679 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2672 + 2i) / 4i)][((x_2675 + 2i) % 4i)];
          let x_2680 : vec3<f32> = vs_TEXCOORD1;
          let x_2683 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2679 * vec4<f32>(x_2680.z, x_2680.z, x_2680.z, x_2680.z)) + x_2683);
          let x_2685 : vec4<f32> = u_xlat12;
          let x_2686 : i32 = u_xlati72;
          let x_2689 : i32 = u_xlati72;
          let x_2693 : vec4<f32> = x_2456.x_AdditionalLightsWorldToLights[((x_2686 + 3i) / 4i)][((x_2689 + 3i) % 4i)];
          u_xlat12 = (x_2685 + x_2693);
          let x_2695 : vec4<f32> = u_xlat12;
          let x_2697 : vec4<f32> = u_xlat12;
          let x_2699 : vec3<f32> = (vec3<f32>(x_2695.x, x_2695.y, x_2695.z) / vec3<f32>(x_2697.w, x_2697.w, x_2697.w));
          let x_2700 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
          let x_2702 : vec4<f32> = u_xlat12;
          let x_2704 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2702.x, x_2702.y, x_2702.z), vec3<f32>(x_2704.x, x_2704.y, x_2704.z));
          let x_2707 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2707);
          let x_2709 : f32 = u_xlat70;
          let x_2711 : vec4<f32> = u_xlat12;
          let x_2713 : vec3<f32> = (vec3<f32>(x_2709, x_2709, x_2709) * vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
          let x_2714 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
          let x_2716 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2716.x, x_2716.y, x_2716.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2721 : f32 = u_xlat70;
          u_xlat70 = max(x_2721, 0.000001f);
          let x_2724 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2724);
          let x_2726 : f32 = u_xlat70;
          let x_2728 : vec4<f32> = u_xlat12;
          let x_2730 : vec3<f32> = (vec3<f32>(x_2726, x_2726, x_2726) * vec3<f32>(x_2728.z, x_2728.x, x_2728.y));
          let x_2731 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2730.x, x_2730.y, x_2730.z, x_2731.w);
          let x_2734 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2734);
          let x_2738 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2738, 0.0f, 1.0f);
          let x_2742 : vec4<f32> = u_xlat13;
          let x_2745 : vec4<bool> = (vec4<f32>(x_2742.y, x_2742.z, x_2742.y, x_2742.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2745.x, x_2745.y);
          let x_2748 : bool = u_xlatb53.x;
          if (x_2748) {
            let x_2753 : f32 = u_xlat13.x;
            x_2749 = x_2753;
          } else {
            let x_2756 : f32 = u_xlat13.x;
            x_2749 = -(x_2756);
          }
          let x_2758 : f32 = x_2749;
          u_xlat53.x = x_2758;
          let x_2761 : bool = u_xlatb53.y;
          if (x_2761) {
            let x_2766 : f32 = u_xlat13.x;
            x_2762 = x_2766;
          } else {
            let x_2769 : f32 = u_xlat13.x;
            x_2762 = -(x_2769);
          }
          let x_2771 : f32 = x_2762;
          u_xlat53.y = x_2771;
          let x_2773 : vec4<f32> = u_xlat12;
          let x_2775 : f32 = u_xlat70;
          let x_2778 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2773.x, x_2773.y) * vec2<f32>(x_2775, x_2775)) + x_2778);
          let x_2780 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2780 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2783 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2783, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2787 : u32 = u_xlatu66;
          let x_2790 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2787)];
          let x_2792 : vec2<f32> = u_xlat53;
          let x_2794 : u32 = u_xlatu66;
          let x_2797 : vec4<f32> = x_2456.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2794)];
          let x_2799 : vec2<f32> = ((vec2<f32>(x_2790.x, x_2790.y) * x_2792) + vec2<f32>(x_2797.z, x_2797.w));
          let x_2800 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2799.x, x_2799.y, x_2800.z, x_2800.w);
        }
      }
      let x_2807 : vec4<f32> = u_xlat11;
      let x_2810 : f32 = x_44.x_GlobalMipBias.x;
      let x_2811 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2807.x, x_2807.y), x_2810);
      u_xlat11 = x_2811;
      let x_2813 : bool = u_xlatb7.y;
      if (x_2813) {
        let x_2818 : f32 = u_xlat11.w;
        x_2814 = x_2818;
      } else {
        let x_2821 : f32 = u_xlat11.x;
        x_2814 = x_2821;
      }
      let x_2822 : f32 = x_2814;
      u_xlat70 = x_2822;
      let x_2824 : bool = u_xlatb7.x;
      if (x_2824) {
        let x_2828 : vec4<f32> = u_xlat11;
        x_2825 = vec3<f32>(x_2828.x, x_2828.y, x_2828.z);
      } else {
        let x_2831 : f32 = u_xlat70;
        x_2825 = vec3<f32>(x_2831, x_2831, x_2831);
      }
      let x_2833 : vec3<f32> = x_2825;
      let x_2834 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2834.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2840 : vec4<f32> = u_xlat11;
    let x_2842 : u32 = u_xlatu66;
    let x_2845 : vec4<f32> = x_2346.x_AdditionalLightsColor[bitcast<i32>(x_2842)];
    let x_2847 : vec3<f32> = (vec3<f32>(x_2840.x, x_2840.y, x_2840.z) * vec3<f32>(x_2845.x, x_2845.y, x_2845.z));
    let x_2848 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2847.x, x_2847.y, x_2847.z, x_2848.w);
    let x_2850 : f32 = u_xlat27;
    let x_2852 : vec4<f32> = u_xlat11;
    let x_2854 : vec3<f32> = (vec3<f32>(x_2850, x_2850, x_2850) * vec3<f32>(x_2852.x, x_2852.y, x_2852.z));
    let x_2855 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2855.w);
    let x_2857 : vec3<f32> = u_xlat2;
    let x_2858 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_2857, vec3<f32>(x_2858.x, x_2858.y, x_2858.z));
    let x_2861 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2861, 0.0f, 1.0f);
    let x_2863 : f32 = u_xlat66;
    let x_2864 : f32 = u_xlat69;
    u_xlat66 = (x_2863 * x_2864);
    let x_2866 : f32 = u_xlat66;
    let x_2868 : vec4<f32> = u_xlat11;
    let x_2870 : vec3<f32> = (vec3<f32>(x_2866, x_2866, x_2866) * vec3<f32>(x_2868.x, x_2868.y, x_2868.z));
    let x_2871 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
    let x_2873 : vec4<f32> = u_xlat9;
    let x_2875 : vec2<f32> = u_xlat49;
    let x_2878 : vec3<f32> = u_xlat3;
    let x_2879 : vec3<f32> = ((vec3<f32>(x_2873.x, x_2873.y, x_2873.z) * vec3<f32>(x_2875.x, x_2875.x, x_2875.x)) + x_2878);
    let x_2880 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
    let x_2882 : vec4<f32> = u_xlat9;
    let x_2884 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2882.x, x_2882.y, x_2882.z), vec3<f32>(x_2884.x, x_2884.y, x_2884.z));
    let x_2887 : f32 = u_xlat66;
    u_xlat66 = max(x_2887, 1.17549435e-37f);
    let x_2889 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2889);
    let x_2891 : f32 = u_xlat66;
    let x_2893 : vec4<f32> = u_xlat9;
    let x_2895 : vec3<f32> = (vec3<f32>(x_2891, x_2891, x_2891) * vec3<f32>(x_2893.x, x_2893.y, x_2893.z));
    let x_2896 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2895.x, x_2895.y, x_2895.z, x_2896.w);
    let x_2898 : vec3<f32> = u_xlat2;
    let x_2899 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(x_2898, vec3<f32>(x_2899.x, x_2899.y, x_2899.z));
    let x_2902 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2902, 0.0f, 1.0f);
    let x_2904 : vec4<f32> = u_xlat10;
    let x_2906 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2904.x, x_2904.y, x_2904.z), vec3<f32>(x_2906.x, x_2906.y, x_2906.z));
    let x_2909 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2909, 0.0f, 1.0f);
    let x_2911 : f32 = u_xlat66;
    let x_2912 : f32 = u_xlat66;
    u_xlat66 = (x_2911 * x_2912);
    let x_2914 : f32 = u_xlat66;
    let x_2916 : f32 = u_xlat48.x;
    u_xlat66 = ((x_2914 * x_2916) + 1.000010014f);
    let x_2919 : f32 = u_xlat69;
    let x_2920 : f32 = u_xlat69;
    u_xlat69 = (x_2919 * x_2920);
    let x_2922 : f32 = u_xlat66;
    let x_2923 : f32 = u_xlat66;
    u_xlat66 = (x_2922 * x_2923);
    let x_2925 : f32 = u_xlat69;
    u_xlat69 = max(x_2925, 0.100000001f);
    let x_2927 : f32 = u_xlat66;
    let x_2928 : f32 = u_xlat69;
    u_xlat66 = (x_2927 * x_2928);
    let x_2930 : f32 = u_xlat68;
    let x_2931 : f32 = u_xlat66;
    u_xlat66 = (x_2930 * x_2931);
    let x_2933 : f32 = u_xlat67;
    let x_2934 : f32 = u_xlat66;
    u_xlat66 = (x_2933 / x_2934);
    let x_2936 : vec4<f32> = u_xlat0;
    let x_2938 : f32 = u_xlat66;
    let x_2941 : vec3<f32> = u_xlat22;
    let x_2942 : vec3<f32> = ((vec3<f32>(x_2936.x, x_2936.y, x_2936.z) * vec3<f32>(x_2938, x_2938, x_2938)) + x_2941);
    let x_2943 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2942.x, x_2942.y, x_2942.z, x_2943.w);
    let x_2945 : vec4<f32> = u_xlat9;
    let x_2947 : vec4<f32> = u_xlat11;
    let x_2950 : vec4<f32> = u_xlat8;
    let x_2952 : vec3<f32> = ((vec3<f32>(x_2945.x, x_2945.y, x_2945.z) * vec3<f32>(x_2947.x, x_2947.y, x_2947.z)) + vec3<f32>(x_2950.x, x_2950.y, x_2950.z));
    let x_2953 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);

    continuing {
      let x_2955 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2955 + bitcast<u32>(1i));
    }
  }
  let x_2957 : vec4<f32> = u_xlat5;
  let x_2959 : vec3<f32> = u_xlat6;
  let x_2962 : vec4<f32> = u_xlat4;
  let x_2964 : vec3<f32> = ((vec3<f32>(x_2957.x, x_2957.y, x_2957.z) * vec3<f32>(x_2959.x, x_2959.x, x_2959.x)) + vec3<f32>(x_2962.x, x_2962.y, x_2962.z));
  let x_2965 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
  let x_2969 : vec4<f32> = u_xlat8;
  let x_2971 : vec4<f32> = u_xlat0;
  let x_2973 : vec3<f32> = (vec3<f32>(x_2969.x, x_2969.y, x_2969.z) + vec3<f32>(x_2971.x, x_2971.y, x_2971.z));
  let x_2974 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2973.x, x_2973.y, x_2973.z, x_2974.w);
  let x_2979 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2979 == 1.0f);
  let x_2981 : bool = u_xlatb0;
  if (x_2981) {
    let x_2986 : f32 = u_xlat1.x;
    x_2982 = x_2986;
  } else {
    x_2982 = 1.0f;
  }
  let x_2988 : f32 = x_2982;
  SV_Target0.w = x_2988;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

