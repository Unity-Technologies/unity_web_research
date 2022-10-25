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
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_207 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2080 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb21 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat21 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var x_172 : vec3<f32>;
  var u_xlat61 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu3 : u32;
  var u_xlati3 : i32;
  var u_xlat23 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat62 : f32;
  var u_xlat64 : f32;
  var u_xlatb5 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat25 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat45 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat16 : vec2<f32>;
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
  var u_xlatb23 : bool;
  var u_xlatb43 : bool;
  var x_1851 : f32;
  var u_xlat43 : f32;
  var u_xlatu5 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati46 : i32;
  var u_xlat26 : vec3<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : bool;
  var x_2319 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb21 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb21;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_135 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat21 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat21;
  let x_149 : vec3<f32> = u_xlat21;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat21;
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat21 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_162;
  let x_165 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_165;
  let x_169 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_169;
  let x_171 : bool = u_xlatb1;
  if (x_171) {
    let x_175 : vec3<f32> = u_xlat21;
    x_172 = x_175;
  } else {
    let x_177 : vec4<f32> = u_xlat2;
    x_172 = vec3<f32>(x_177.x, x_177.y, x_177.z);
  }
  let x_179 : vec3<f32> = x_172;
  u_xlat1 = x_179;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  u_xlat61 = dot(x_182, x_183);
  let x_185 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_185);
  let x_187 : f32 = u_xlat61;
  let x_189 : vec3<f32> = vs_TEXCOORD2;
  let x_190 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * x_189);
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec3<f32> = u_xlat1;
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat61 = dot(x_193, x_194);
  let x_196 : f32 = u_xlat61;
  u_xlat61 = max(x_196, 1.17549435e-37f);
  let x_199 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_199);
  let x_202 : vec3<f32> = vs_TEXCOORD1;
  let x_209 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres0;
  let x_212 : vec3<f32> = (x_202 + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec3<f32> = vs_TEXCOORD1;
  let x_218 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres1;
  let x_221 : vec3<f32> = (x_216 + -(vec3<f32>(x_218.x, x_218.y, x_218.z)));
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : vec3<f32> = vs_TEXCOORD1;
  let x_228 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres2;
  let x_231 : vec3<f32> = (x_225 + -(vec3<f32>(x_228.x, x_228.y, x_228.z)));
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres3;
  let x_241 : vec3<f32> = (x_235 + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat3;
  let x_246 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_256 : vec4<f32> = u_xlat5;
  let x_258 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_262 : vec4<f32> = u_xlat6;
  let x_264 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_271 : vec4<f32> = u_xlat3;
  let x_274 : vec4<f32> = x_207.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_271 < x_274);
  let x_277 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_277);
  let x_281 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_285);
  let x_289 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_289);
  let x_293 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_293);
  let x_299 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_299);
  let x_303 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_303);
  let x_306 : vec4<f32> = u_xlat3;
  let x_308 : vec4<f32> = u_xlat4;
  let x_310 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.z) + vec3<f32>(x_308.y, x_308.z, x_308.w));
  let x_311 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat3;
  let x_316 : vec3<f32> = max(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_317.x, x_316.x, x_316.y, x_316.z);
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_319, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_327 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_327) + 4.0f);
  let x_334 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_334);
  let x_338 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_338) << bitcast<u32>(2i));
  let x_342 : vec3<f32> = vs_TEXCOORD1;
  let x_344 : i32 = u_xlati3;
  let x_347 : i32 = u_xlati3;
  let x_351 : vec4<f32> = x_207.x_MainLightWorldToShadow[((x_344 + 1i) / 4i)][((x_347 + 1i) % 4i)];
  u_xlat23 = (vec3<f32>(x_342.y, x_342.y, x_342.y) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : i32 = u_xlati3;
  let x_356 : i32 = u_xlati3;
  let x_359 : vec4<f32> = x_207.x_MainLightWorldToShadow[(x_354 / 4i)][(x_356 % 4i)];
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + x_364);
  let x_366 : i32 = u_xlati3;
  let x_369 : i32 = u_xlati3;
  let x_373 : vec4<f32> = x_207.x_MainLightWorldToShadow[((x_366 + 2i) / 4i)][((x_369 + 2i) % 4i)];
  let x_375 : vec3<f32> = vs_TEXCOORD1;
  let x_378 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375.z, x_375.z, x_375.z)) + x_378);
  let x_380 : vec3<f32> = u_xlat23;
  let x_381 : i32 = u_xlati3;
  let x_384 : i32 = u_xlati3;
  let x_388 : vec4<f32> = x_207.x_MainLightWorldToShadow[((x_381 + 3i) / 4i)][((x_384 + 3i) % 4i)];
  let x_390 : vec3<f32> = (x_380 + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_395 : f32 = vs_TEXCOORD1.y;
  let x_397 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_395 * x_397);
  let x_400 : f32 = x_44.unity_MatrixV[0i].z;
  let x_402 : f32 = vs_TEXCOORD1.x;
  let x_404 : f32 = u_xlat63;
  u_xlat63 = ((x_400 * x_402) + x_404);
  let x_407 : f32 = x_44.unity_MatrixV[2i].z;
  let x_409 : f32 = vs_TEXCOORD1.z;
  let x_411 : f32 = u_xlat63;
  u_xlat63 = ((x_407 * x_409) + x_411);
  let x_413 : f32 = u_xlat63;
  let x_415 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_413 + x_415);
  let x_417 : f32 = u_xlat63;
  let x_421 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_417) + -(x_421));
  let x_424 : f32 = u_xlat63;
  u_xlat63 = max(x_424, 0.0f);
  let x_426 : f32 = u_xlat63;
  let x_429 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_426 * x_429);
  u_xlat2.w = 1.0f;
  let x_434 : vec4<f32> = x_93.unity_SHAr;
  let x_435 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_434, x_435);
  let x_440 : vec4<f32> = x_93.unity_SHAg;
  let x_441 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_440, x_441);
  let x_446 : vec4<f32> = x_93.unity_SHAb;
  let x_447 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_446, x_447);
  let x_450 : vec4<f32> = u_xlat2;
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_450.y, x_450.z, x_450.z, x_450.x) * vec4<f32>(x_452.x, x_452.y, x_452.z, x_452.z));
  let x_457 : vec4<f32> = x_93.unity_SHBr;
  let x_458 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_457, x_458);
  let x_463 : vec4<f32> = x_93.unity_SHBg;
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_463, x_464);
  let x_469 : vec4<f32> = x_93.unity_SHBb;
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_469, x_470);
  let x_475 : f32 = u_xlat2.y;
  let x_477 : f32 = u_xlat2.y;
  u_xlat62 = (x_475 * x_477);
  let x_480 : f32 = u_xlat2.x;
  let x_482 : f32 = u_xlat2.x;
  let x_484 : f32 = u_xlat62;
  u_xlat62 = ((x_480 * x_482) + -(x_484));
  let x_489 : vec4<f32> = x_93.unity_SHC;
  let x_491 : f32 = u_xlat62;
  let x_494 : vec4<f32> = u_xlat6;
  let x_496 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491, x_491, x_491)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat4;
  let x_501 : vec4<f32> = u_xlat5;
  let x_503 : vec3<f32> = (vec3<f32>(x_499.x, x_499.y, x_499.z) + vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat4;
  let x_508 : vec3<f32> = max(vec3<f32>(x_506.x, x_506.y, x_506.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_509 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_513 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_514 : vec2<f32> = vec2<f32>(x_513.x, x_513.y);
  let x_518 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_514.x, x_514.y));
  let x_519 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat5;
  let x_523 : vec4<f32> = hlslcc_FragCoord;
  let x_525 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(x_523.x, x_523.y));
  let x_526 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
  let x_529 : f32 = u_xlat5.y;
  let x_532 : f32 = x_44.x_ScaleBiasRt.x;
  let x_535 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat62 = ((x_529 * x_532) + x_535);
  let x_537 : f32 = u_xlat62;
  u_xlat5.z = (-(x_537) + 1.0f);
  let x_546 : vec4<f32> = u_xlat5;
  let x_549 : f32 = x_44.x_GlobalMipBias.x;
  let x_550 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_546.x, x_546.z), x_549);
  u_xlat62 = x_550.x;
  let x_553 : f32 = u_xlat62;
  u_xlat64 = (x_553 + -1.0f);
  let x_556 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_557 : f32 = u_xlat64;
  u_xlat64 = ((x_556 * x_557) + 1.0f);
  let x_560 : f32 = u_xlat62;
  u_xlat62 = min(x_560, 1.0f);
  let x_564 : f32 = x_207.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_564);
  let x_566 : bool = u_xlatb5;
  if (x_566) {
    let x_570 : f32 = x_207.x_MainLightShadowParams.y;
    u_xlatb5 = (x_570 == 1.0f);
    let x_572 : bool = u_xlatb5;
    if (x_572) {
      let x_575 : vec4<f32> = u_xlat3;
      let x_578 : vec4<f32> = x_207.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y) + x_578);
      let x_581 : vec4<f32> = u_xlat5;
      let x_582 : vec2<f32> = vec2<f32>(x_581.x, x_581.y);
      let x_584 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_582.x, x_582.y, x_584);
      let x_596 : vec3<f32> = txVec0;
      let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_596.xy, x_596.z);
      u_xlat6.x = x_598;
      let x_601 : vec4<f32> = u_xlat5;
      let x_602 : vec2<f32> = vec2<f32>(x_601.z, x_601.w);
      let x_604 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_602.x, x_602.y, x_604);
      let x_611 : vec3<f32> = txVec1;
      let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_611.xy, x_611.z);
      u_xlat6.y = x_613;
      let x_615 : vec4<f32> = u_xlat3;
      let x_618 : vec4<f32> = x_207.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_615.x, x_615.y, x_615.x, x_615.y) + x_618);
      let x_621 : vec4<f32> = u_xlat5;
      let x_622 : vec2<f32> = vec2<f32>(x_621.x, x_621.y);
      let x_624 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_622.x, x_622.y, x_624);
      let x_631 : vec3<f32> = txVec2;
      let x_633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_631.xy, x_631.z);
      u_xlat6.z = x_633;
      let x_636 : vec4<f32> = u_xlat5;
      let x_637 : vec2<f32> = vec2<f32>(x_636.z, x_636.w);
      let x_639 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_637.x, x_637.y, x_639);
      let x_646 : vec3<f32> = txVec3;
      let x_648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_646.xy, x_646.z);
      u_xlat6.w = x_648;
      let x_650 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_650, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_658 : f32 = x_207.x_MainLightShadowParams.y;
      u_xlatb25 = (x_658 == 2.0f);
      let x_660 : bool = u_xlatb25;
      if (x_660) {
        let x_664 : vec4<f32> = u_xlat3;
        let x_667 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_672 : vec2<f32> = ((vec2<f32>(x_664.x, x_664.y) * vec2<f32>(x_667.z, x_667.w)) + vec2<f32>(0.5f, 0.5f));
        let x_673 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_672.x, x_672.y, x_673.z);
        let x_675 : vec3<f32> = u_xlat25;
        let x_677 : vec2<f32> = floor(vec2<f32>(x_675.x, x_675.y));
        let x_678 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_677.x, x_677.y, x_678.z);
        let x_680 : vec4<f32> = u_xlat3;
        let x_683 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_686 : vec3<f32> = u_xlat25;
        let x_689 : vec2<f32> = ((vec2<f32>(x_680.x, x_680.y) * vec2<f32>(x_683.z, x_683.w)) + -(vec2<f32>(x_686.x, x_686.y)));
        let x_690 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_693 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_693.x, x_693.x, x_693.y, x_693.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_698 : vec4<f32> = u_xlat7;
        let x_700 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_698.x, x_698.x, x_698.z, x_698.z) * vec4<f32>(x_700.x, x_700.x, x_700.z, x_700.z));
        let x_705 : vec4<f32> = u_xlat8;
        u_xlat46 = (vec2<f32>(x_705.y, x_705.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_710 : vec4<f32> = u_xlat8;
        let x_713 : vec4<f32> = u_xlat6;
        let x_716 : vec2<f32> = ((vec2<f32>(x_710.x, x_710.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_713.x, x_713.y)));
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_716.x, x_717.y, x_716.y, x_717.w);
        let x_719 : vec4<f32> = u_xlat6;
        let x_722 : vec2<f32> = (-(vec2<f32>(x_719.x, x_719.y)) + vec2<f32>(1.0f, 1.0f));
        let x_723 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_722.x, x_722.y, x_723.z, x_723.w);
        let x_726 : vec4<f32> = u_xlat6;
        u_xlat48 = min(vec2<f32>(x_726.x, x_726.y), vec2<f32>(0.0f, 0.0f));
        let x_730 : vec2<f32> = u_xlat48;
        let x_732 : vec2<f32> = u_xlat48;
        let x_734 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_730) * x_732) + vec2<f32>(x_734.x, x_734.y));
        let x_737 : vec4<f32> = u_xlat6;
        let x_739 : vec2<f32> = max(vec2<f32>(x_737.x, x_737.y), vec2<f32>(0.0f, 0.0f));
        let x_740 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat6;
        let x_745 : vec4<f32> = u_xlat6;
        let x_748 : vec4<f32> = u_xlat7;
        let x_750 : vec2<f32> = ((-(vec2<f32>(x_742.x, x_742.y)) * vec2<f32>(x_745.x, x_745.y)) + vec2<f32>(x_748.y, x_748.w));
        let x_751 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
        let x_753 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_753 + vec2<f32>(1.0f, 1.0f));
        let x_755 : vec4<f32> = u_xlat6;
        let x_757 : vec2<f32> = (vec2<f32>(x_755.x, x_755.y) + vec2<f32>(1.0f, 1.0f));
        let x_758 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_761 : vec4<f32> = u_xlat7;
        let x_765 : vec2<f32> = (vec2<f32>(x_761.x, x_761.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_766 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
        let x_769 : vec4<f32> = u_xlat8;
        let x_771 : vec2<f32> = (vec2<f32>(x_769.x, x_769.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_772 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_774 : vec2<f32> = u_xlat48;
        let x_775 : vec2<f32> = (x_774 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_776 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_775.x, x_775.y, x_776.z, x_776.w);
        let x_779 : vec4<f32> = u_xlat6;
        let x_781 : vec2<f32> = (vec2<f32>(x_779.x, x_779.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_782 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
        let x_784 : vec4<f32> = u_xlat7;
        let x_786 : vec2<f32> = (vec2<f32>(x_784.y, x_784.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_787 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
        let x_790 : f32 = u_xlat8.x;
        u_xlat9.z = x_790;
        let x_793 : f32 = u_xlat6.x;
        u_xlat9.w = x_793;
        let x_796 : f32 = u_xlat11.x;
        u_xlat10.z = x_796;
        let x_799 : f32 = u_xlat46.x;
        u_xlat10.w = x_799;
        let x_801 : vec4<f32> = u_xlat9;
        let x_803 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_801.z, x_801.w, x_801.x, x_801.z) + vec4<f32>(x_803.z, x_803.w, x_803.x, x_803.z));
        let x_807 : f32 = u_xlat9.y;
        u_xlat8.z = x_807;
        let x_810 : f32 = u_xlat6.y;
        u_xlat8.w = x_810;
        let x_813 : f32 = u_xlat10.y;
        u_xlat11.z = x_813;
        let x_816 : f32 = u_xlat46.y;
        u_xlat11.w = x_816;
        let x_818 : vec4<f32> = u_xlat8;
        let x_820 : vec4<f32> = u_xlat11;
        let x_822 : vec3<f32> = (vec3<f32>(x_818.z, x_818.y, x_818.w) + vec3<f32>(x_820.z, x_820.y, x_820.w));
        let x_823 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
        let x_825 : vec4<f32> = u_xlat10;
        let x_827 : vec4<f32> = u_xlat7;
        let x_829 : vec3<f32> = (vec3<f32>(x_825.x, x_825.z, x_825.w) / vec3<f32>(x_827.z, x_827.w, x_827.y));
        let x_830 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat8;
        let x_838 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_839 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
        let x_841 : vec4<f32> = u_xlat11;
        let x_843 : vec4<f32> = u_xlat6;
        let x_845 : vec3<f32> = (vec3<f32>(x_841.z, x_841.y, x_841.w) / vec3<f32>(x_843.x, x_843.y, x_843.z));
        let x_846 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
        let x_848 : vec4<f32> = u_xlat9;
        let x_850 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_851 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat8;
        let x_856 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_858 : vec3<f32> = (vec3<f32>(x_853.y, x_853.x, x_853.z) * vec3<f32>(x_856.x, x_856.x, x_856.x));
        let x_859 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
        let x_861 : vec4<f32> = u_xlat9;
        let x_864 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_866 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(x_864.y, x_864.y, x_864.y));
        let x_867 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
        let x_870 : f32 = u_xlat9.x;
        u_xlat8.w = x_870;
        let x_872 : vec3<f32> = u_xlat25;
        let x_875 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_872.x, x_872.y, x_872.x, x_872.y) * vec4<f32>(x_875.x, x_875.y, x_875.x, x_875.y)) + vec4<f32>(x_878.y, x_878.w, x_878.x, x_878.w));
        let x_881 : vec3<f32> = u_xlat25;
        let x_884 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_887 : vec4<f32> = u_xlat8;
        let x_889 : vec2<f32> = ((vec2<f32>(x_881.x, x_881.y) * vec2<f32>(x_884.x, x_884.y)) + vec2<f32>(x_887.z, x_887.w));
        let x_890 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_889.x, x_889.y, x_890.z, x_890.w);
        let x_893 : f32 = u_xlat8.y;
        u_xlat9.w = x_893;
        let x_895 : vec4<f32> = u_xlat9;
        let x_896 : vec2<f32> = vec2<f32>(x_895.y, x_895.z);
        let x_897 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_897.x, x_896.x, x_897.z, x_896.y);
        let x_900 : vec3<f32> = u_xlat25;
        let x_903 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_906 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y) * vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y)) + vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.y));
        let x_909 : vec3<f32> = u_xlat25;
        let x_912 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_915 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_909.x, x_909.y, x_909.x, x_909.y) * vec4<f32>(x_912.x, x_912.y, x_912.x, x_912.y)) + vec4<f32>(x_915.w, x_915.y, x_915.w, x_915.z));
        let x_918 : vec3<f32> = u_xlat25;
        let x_921 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_918.x, x_918.y, x_918.x, x_918.y) * vec4<f32>(x_921.x, x_921.y, x_921.x, x_921.y)) + vec4<f32>(x_924.x, x_924.w, x_924.z, x_924.w));
        let x_928 : vec4<f32> = u_xlat6;
        let x_930 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_928.x, x_928.x, x_928.x, x_928.y) * vec4<f32>(x_930.z, x_930.w, x_930.y, x_930.z));
        let x_934 : vec4<f32> = u_xlat6;
        let x_936 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_934.y, x_934.y, x_934.z, x_934.z) * x_936);
        let x_939 : f32 = u_xlat6.z;
        let x_941 : f32 = u_xlat7.y;
        u_xlat25.x = (x_939 * x_941);
        let x_945 : vec4<f32> = u_xlat10;
        let x_946 : vec2<f32> = vec2<f32>(x_945.x, x_945.y);
        let x_948 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_946.x, x_946.y, x_948);
        let x_956 : vec3<f32> = txVec4;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_956.xy, x_956.z);
        u_xlat45 = x_958;
        let x_960 : vec4<f32> = u_xlat10;
        let x_961 : vec2<f32> = vec2<f32>(x_960.z, x_960.w);
        let x_963 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_961.x, x_961.y, x_963);
        let x_971 : vec3<f32> = txVec5;
        let x_973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_971.xy, x_971.z);
        u_xlat65 = x_973;
        let x_974 : f32 = u_xlat65;
        let x_976 : f32 = u_xlat13.y;
        u_xlat65 = (x_974 * x_976);
        let x_979 : f32 = u_xlat13.x;
        let x_980 : f32 = u_xlat45;
        let x_982 : f32 = u_xlat65;
        u_xlat45 = ((x_979 * x_980) + x_982);
        let x_985 : vec4<f32> = u_xlat11;
        let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
        let x_988 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_986.x, x_986.y, x_988);
        let x_995 : vec3<f32> = txVec6;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_995.xy, x_995.z);
        u_xlat65 = x_997;
        let x_999 : f32 = u_xlat13.z;
        let x_1000 : f32 = u_xlat65;
        let x_1002 : f32 = u_xlat45;
        u_xlat45 = ((x_999 * x_1000) + x_1002);
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1006 : vec2<f32> = vec2<f32>(x_1005.x, x_1005.y);
        let x_1008 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1006.x, x_1006.y, x_1008);
        let x_1015 : vec3<f32> = txVec7;
        let x_1017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1015.xy, x_1015.z);
        u_xlat65 = x_1017;
        let x_1019 : f32 = u_xlat13.w;
        let x_1020 : f32 = u_xlat65;
        let x_1022 : f32 = u_xlat45;
        u_xlat45 = ((x_1019 * x_1020) + x_1022);
        let x_1025 : vec4<f32> = u_xlat12;
        let x_1026 : vec2<f32> = vec2<f32>(x_1025.x, x_1025.y);
        let x_1028 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1026.x, x_1026.y, x_1028);
        let x_1035 : vec3<f32> = txVec8;
        let x_1037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1035.xy, x_1035.z);
        u_xlat65 = x_1037;
        let x_1039 : f32 = u_xlat14.x;
        let x_1040 : f32 = u_xlat65;
        let x_1042 : f32 = u_xlat45;
        u_xlat45 = ((x_1039 * x_1040) + x_1042);
        let x_1045 : vec4<f32> = u_xlat12;
        let x_1046 : vec2<f32> = vec2<f32>(x_1045.z, x_1045.w);
        let x_1048 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
        let x_1055 : vec3<f32> = txVec9;
        let x_1057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1055.xy, x_1055.z);
        u_xlat65 = x_1057;
        let x_1059 : f32 = u_xlat14.y;
        let x_1060 : f32 = u_xlat65;
        let x_1062 : f32 = u_xlat45;
        u_xlat45 = ((x_1059 * x_1060) + x_1062);
        let x_1065 : vec4<f32> = u_xlat9;
        let x_1066 : vec2<f32> = vec2<f32>(x_1065.z, x_1065.w);
        let x_1068 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1066.x, x_1066.y, x_1068);
        let x_1075 : vec3<f32> = txVec10;
        let x_1077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1075.xy, x_1075.z);
        u_xlat65 = x_1077;
        let x_1079 : f32 = u_xlat14.z;
        let x_1080 : f32 = u_xlat65;
        let x_1082 : f32 = u_xlat45;
        u_xlat45 = ((x_1079 * x_1080) + x_1082);
        let x_1085 : vec4<f32> = u_xlat8;
        let x_1086 : vec2<f32> = vec2<f32>(x_1085.x, x_1085.y);
        let x_1088 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
        let x_1095 : vec3<f32> = txVec11;
        let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1095.xy, x_1095.z);
        u_xlat65 = x_1097;
        let x_1099 : f32 = u_xlat14.w;
        let x_1100 : f32 = u_xlat65;
        let x_1102 : f32 = u_xlat45;
        u_xlat45 = ((x_1099 * x_1100) + x_1102);
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1106 : vec2<f32> = vec2<f32>(x_1105.z, x_1105.w);
        let x_1108 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
        let x_1115 : vec3<f32> = txVec12;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1115.xy, x_1115.z);
        u_xlat65 = x_1117;
        let x_1119 : f32 = u_xlat25.x;
        let x_1120 : f32 = u_xlat65;
        let x_1122 : f32 = u_xlat45;
        u_xlat5.x = ((x_1119 * x_1120) + x_1122);
      } else {
        let x_1126 : vec4<f32> = u_xlat3;
        let x_1129 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1129.z, x_1129.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1133 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1132.x, x_1132.y, x_1133.z);
        let x_1135 : vec3<f32> = u_xlat25;
        let x_1137 : vec2<f32> = floor(vec2<f32>(x_1135.x, x_1135.y));
        let x_1138 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1137.x, x_1137.y, x_1138.z);
        let x_1140 : vec4<f32> = u_xlat3;
        let x_1143 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1146 : vec3<f32> = u_xlat25;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1143.z, x_1143.w)) + -(vec2<f32>(x_1146.x, x_1146.y)));
        let x_1150 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1152.x, x_1152.x, x_1152.y, x_1152.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1155 : vec4<f32> = u_xlat7;
        let x_1157 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1155.x, x_1155.x, x_1155.z, x_1155.z) * vec4<f32>(x_1157.x, x_1157.x, x_1157.z, x_1157.z));
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1164 : vec2<f32> = (vec2<f32>(x_1160.y, x_1160.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1164.x, x_1165.z, x_1164.y);
        let x_1167 : vec4<f32> = u_xlat8;
        let x_1170 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1167.x, x_1167.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1170.x, x_1170.y)));
        let x_1174 : vec4<f32> = u_xlat6;
        let x_1177 : vec2<f32> = (-(vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1178 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1177.x, x_1178.y, x_1177.y, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat6;
        let x_1182 : vec2<f32> = min(vec2<f32>(x_1180.x, x_1180.y), vec2<f32>(0.0f, 0.0f));
        let x_1183 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat8;
        let x_1188 : vec4<f32> = u_xlat8;
        let x_1191 : vec4<f32> = u_xlat7;
        let x_1193 : vec2<f32> = ((-(vec2<f32>(x_1185.x, x_1185.y)) * vec2<f32>(x_1188.x, x_1188.y)) + vec2<f32>(x_1191.x, x_1191.z));
        let x_1194 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1193.x, x_1194.y, x_1193.y, x_1194.w);
        let x_1196 : vec4<f32> = u_xlat6;
        let x_1198 : vec2<f32> = max(vec2<f32>(x_1196.x, x_1196.y), vec2<f32>(0.0f, 0.0f));
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1198.x, x_1198.y, x_1199.z, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1204 : vec4<f32> = u_xlat8;
        let x_1207 : vec4<f32> = u_xlat7;
        let x_1209 : vec2<f32> = ((-(vec2<f32>(x_1201.x, x_1201.y)) * vec2<f32>(x_1204.x, x_1204.y)) + vec2<f32>(x_1207.y, x_1207.w));
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1210.x, x_1209.x, x_1210.z, x_1209.y);
        let x_1212 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1212 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1216 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1216 * 0.081632003f);
        let x_1220 : vec2<f32> = u_xlat46;
        let x_1223 : vec2<f32> = (vec2<f32>(x_1220.y, x_1220.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1226.x, x_1226.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1230 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1230 * 0.081632003f);
        let x_1234 : f32 = u_xlat10.y;
        u_xlat8.x = x_1234;
        let x_1236 : vec4<f32> = u_xlat6;
        let x_1243 : vec2<f32> = ((vec2<f32>(x_1236.x, x_1236.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1244 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1244.x, x_1243.x, x_1244.z, x_1243.y);
        let x_1246 : vec4<f32> = u_xlat6;
        let x_1250 : vec2<f32> = ((vec2<f32>(x_1246.x, x_1246.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1251 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1250.x, x_1251.y, x_1250.y, x_1251.w);
        let x_1254 : f32 = u_xlat46.x;
        u_xlat7.y = x_1254;
        let x_1257 : f32 = u_xlat9.y;
        u_xlat7.w = x_1257;
        let x_1259 : vec4<f32> = u_xlat7;
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1259 + x_1260);
        let x_1262 : vec4<f32> = u_xlat6;
        let x_1265 : vec2<f32> = ((vec2<f32>(x_1262.y, x_1262.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1266 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1265.x, x_1266.z, x_1265.y);
        let x_1268 : vec4<f32> = u_xlat6;
        let x_1271 : vec2<f32> = ((vec2<f32>(x_1268.y, x_1268.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1271.x, x_1272.y, x_1271.y, x_1272.w);
        let x_1275 : f32 = u_xlat46.y;
        u_xlat9.y = x_1275;
        let x_1277 : vec4<f32> = u_xlat9;
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1277 + x_1278);
        let x_1280 : vec4<f32> = u_xlat7;
        let x_1281 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1280 / x_1281);
        let x_1283 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1283 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1289 : vec4<f32> = u_xlat9;
        let x_1290 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1289 / x_1290);
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1292 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1294 : vec4<f32> = u_xlat7;
        let x_1297 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1294.w, x_1294.x, x_1294.y, x_1294.z) * vec4<f32>(x_1297.x, x_1297.x, x_1297.x, x_1297.x));
        let x_1300 : vec4<f32> = u_xlat9;
        let x_1303 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1300.x, x_1300.w, x_1300.y, x_1300.z) * vec4<f32>(x_1303.y, x_1303.y, x_1303.y, x_1303.y));
        let x_1306 : vec4<f32> = u_xlat7;
        let x_1307 : vec3<f32> = vec3<f32>(x_1306.y, x_1306.z, x_1306.w);
        let x_1308 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1307.x, x_1308.y, x_1307.y, x_1307.z);
        let x_1311 : f32 = u_xlat9.x;
        u_xlat10.y = x_1311;
        let x_1313 : vec3<f32> = u_xlat25;
        let x_1316 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1319.y));
        let x_1322 : vec3<f32> = u_xlat25;
        let x_1325 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat10;
        let x_1330 : vec2<f32> = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1325.x, x_1325.y)) + vec2<f32>(x_1328.w, x_1328.y));
        let x_1331 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
        let x_1334 : f32 = u_xlat10.y;
        u_xlat7.y = x_1334;
        let x_1337 : f32 = u_xlat9.z;
        u_xlat10.y = x_1337;
        let x_1339 : vec3<f32> = u_xlat25;
        let x_1342 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1339.x, x_1339.y, x_1339.x, x_1339.y) * vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y)) + vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1345.y));
        let x_1349 : vec3<f32> = u_xlat25;
        let x_1352 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1349.x, x_1349.y) * vec2<f32>(x_1352.x, x_1352.y)) + vec2<f32>(x_1355.w, x_1355.y));
        let x_1359 : f32 = u_xlat10.y;
        u_xlat7.z = x_1359;
        let x_1361 : vec3<f32> = u_xlat25;
        let x_1364 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1367 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1361.x, x_1361.y, x_1361.x, x_1361.y) * vec4<f32>(x_1364.x, x_1364.y, x_1364.x, x_1364.y)) + vec4<f32>(x_1367.x, x_1367.y, x_1367.x, x_1367.z));
        let x_1371 : f32 = u_xlat9.w;
        u_xlat10.y = x_1371;
        let x_1374 : vec3<f32> = u_xlat25;
        let x_1377 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1380 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1374.x, x_1374.y, x_1374.x, x_1374.y) * vec4<f32>(x_1377.x, x_1377.y, x_1377.x, x_1377.y)) + vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1380.y));
        let x_1384 : vec3<f32> = u_xlat25;
        let x_1387 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat27 = ((vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1390.w, x_1390.y));
        let x_1394 : f32 = u_xlat10.y;
        u_xlat7.w = x_1394;
        let x_1397 : vec3<f32> = u_xlat25;
        let x_1400 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1403 : vec4<f32> = u_xlat7;
        u_xlat16 = ((vec2<f32>(x_1397.x, x_1397.y) * vec2<f32>(x_1400.x, x_1400.y)) + vec2<f32>(x_1403.x, x_1403.w));
        let x_1406 : vec4<f32> = u_xlat10;
        let x_1407 : vec3<f32> = vec3<f32>(x_1406.x, x_1406.z, x_1406.w);
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1407.x, x_1408.y, x_1407.y, x_1407.z);
        let x_1410 : vec3<f32> = u_xlat25;
        let x_1413 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1416 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.y) * vec4<f32>(x_1413.x, x_1413.y, x_1413.x, x_1413.y)) + vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1416.y));
        let x_1420 : vec3<f32> = u_xlat25;
        let x_1423 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1426 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1420.x, x_1420.y) * vec2<f32>(x_1423.x, x_1423.y)) + vec2<f32>(x_1426.w, x_1426.y));
        let x_1430 : f32 = u_xlat7.x;
        u_xlat9.x = x_1430;
        let x_1432 : vec3<f32> = u_xlat25;
        let x_1435 : vec4<f32> = x_207.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat9;
        let x_1440 : vec2<f32> = ((vec2<f32>(x_1432.x, x_1432.y) * vec2<f32>(x_1435.x, x_1435.y)) + vec2<f32>(x_1438.x, x_1438.y));
        let x_1441 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1440.x, x_1440.y, x_1441.z);
        let x_1444 : vec4<f32> = u_xlat6;
        let x_1446 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1444.x, x_1444.x, x_1444.x, x_1444.x) * x_1446);
        let x_1449 : vec4<f32> = u_xlat6;
        let x_1451 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1449.y, x_1449.y, x_1449.y, x_1449.y) * x_1451);
        let x_1454 : vec4<f32> = u_xlat6;
        let x_1456 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1454.z, x_1454.z, x_1454.z, x_1454.z) * x_1456);
        let x_1458 : vec4<f32> = u_xlat6;
        let x_1460 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1458.w, x_1458.w, x_1458.w, x_1458.w) * x_1460);
        let x_1463 : vec4<f32> = u_xlat11;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec13;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1473.xy, x_1473.z);
        u_xlat65 = x_1475;
        let x_1477 : vec4<f32> = u_xlat11;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec14;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat7.x = x_1489;
        let x_1492 : f32 = u_xlat7.x;
        let x_1494 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1492 * x_1494);
        let x_1498 : f32 = u_xlat17.x;
        let x_1499 : f32 = u_xlat65;
        let x_1502 : f32 = u_xlat7.x;
        u_xlat65 = ((x_1498 * x_1499) + x_1502);
        let x_1505 : vec4<f32> = u_xlat12;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec15;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1515.xy, x_1515.z);
        u_xlat7.x = x_1517;
        let x_1520 : f32 = u_xlat17.z;
        let x_1522 : f32 = u_xlat7.x;
        let x_1524 : f32 = u_xlat65;
        u_xlat65 = ((x_1520 * x_1522) + x_1524);
        let x_1527 : vec4<f32> = u_xlat14;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.x, x_1527.y);
        let x_1530 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec16;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1537.xy, x_1537.z);
        u_xlat7.x = x_1539;
        let x_1542 : f32 = u_xlat17.w;
        let x_1544 : f32 = u_xlat7.x;
        let x_1546 : f32 = u_xlat65;
        u_xlat65 = ((x_1542 * x_1544) + x_1546);
        let x_1549 : vec4<f32> = u_xlat13;
        let x_1550 : vec2<f32> = vec2<f32>(x_1549.x, x_1549.y);
        let x_1552 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec17;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1559.xy, x_1559.z);
        u_xlat7.x = x_1561;
        let x_1564 : f32 = u_xlat18.x;
        let x_1566 : f32 = u_xlat7.x;
        let x_1568 : f32 = u_xlat65;
        u_xlat65 = ((x_1564 * x_1566) + x_1568);
        let x_1571 : vec4<f32> = u_xlat13;
        let x_1572 : vec2<f32> = vec2<f32>(x_1571.z, x_1571.w);
        let x_1574 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec18;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1581.xy, x_1581.z);
        u_xlat7.x = x_1583;
        let x_1586 : f32 = u_xlat18.y;
        let x_1588 : f32 = u_xlat7.x;
        let x_1590 : f32 = u_xlat65;
        u_xlat65 = ((x_1586 * x_1588) + x_1590);
        let x_1593 : vec2<f32> = u_xlat52;
        let x_1595 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec19;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1602.xy, x_1602.z);
        u_xlat7.x = x_1604;
        let x_1607 : f32 = u_xlat18.z;
        let x_1609 : f32 = u_xlat7.x;
        let x_1611 : f32 = u_xlat65;
        u_xlat65 = ((x_1607 * x_1609) + x_1611);
        let x_1614 : vec4<f32> = u_xlat14;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.z, x_1614.w);
        let x_1617 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec20;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat7.x = x_1626;
        let x_1629 : f32 = u_xlat18.w;
        let x_1631 : f32 = u_xlat7.x;
        let x_1633 : f32 = u_xlat65;
        u_xlat65 = ((x_1629 * x_1631) + x_1633);
        let x_1636 : vec4<f32> = u_xlat15;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.x, x_1636.y);
        let x_1639 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec21;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1646.xy, x_1646.z);
        u_xlat7.x = x_1648;
        let x_1651 : f32 = u_xlat19.x;
        let x_1653 : f32 = u_xlat7.x;
        let x_1655 : f32 = u_xlat65;
        u_xlat65 = ((x_1651 * x_1653) + x_1655);
        let x_1658 : vec4<f32> = u_xlat15;
        let x_1659 : vec2<f32> = vec2<f32>(x_1658.z, x_1658.w);
        let x_1661 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1659.x, x_1659.y, x_1661);
        let x_1668 : vec3<f32> = txVec22;
        let x_1670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1668.xy, x_1668.z);
        u_xlat7.x = x_1670;
        let x_1673 : f32 = u_xlat19.y;
        let x_1675 : f32 = u_xlat7.x;
        let x_1677 : f32 = u_xlat65;
        u_xlat65 = ((x_1673 * x_1675) + x_1677);
        let x_1680 : vec2<f32> = u_xlat27;
        let x_1682 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec23;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1689.xy, x_1689.z);
        u_xlat7.x = x_1691;
        let x_1694 : f32 = u_xlat19.z;
        let x_1696 : f32 = u_xlat7.x;
        let x_1698 : f32 = u_xlat65;
        u_xlat65 = ((x_1694 * x_1696) + x_1698);
        let x_1701 : vec2<f32> = u_xlat16;
        let x_1703 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec24;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1710.xy, x_1710.z);
        u_xlat7.x = x_1712;
        let x_1715 : f32 = u_xlat19.w;
        let x_1717 : f32 = u_xlat7.x;
        let x_1719 : f32 = u_xlat65;
        u_xlat65 = ((x_1715 * x_1717) + x_1719);
        let x_1722 : vec4<f32> = u_xlat10;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec25;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1732.xy, x_1732.z);
        u_xlat7.x = x_1734;
        let x_1737 : f32 = u_xlat6.x;
        let x_1739 : f32 = u_xlat7.x;
        let x_1741 : f32 = u_xlat65;
        u_xlat65 = ((x_1737 * x_1739) + x_1741);
        let x_1744 : vec4<f32> = u_xlat10;
        let x_1745 : vec2<f32> = vec2<f32>(x_1744.z, x_1744.w);
        let x_1747 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
        let x_1754 : vec3<f32> = txVec26;
        let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1754.xy, x_1754.z);
        u_xlat6.x = x_1756;
        let x_1759 : f32 = u_xlat6.y;
        let x_1761 : f32 = u_xlat6.x;
        let x_1763 : f32 = u_xlat65;
        u_xlat65 = ((x_1759 * x_1761) + x_1763);
        let x_1766 : vec2<f32> = u_xlat49;
        let x_1768 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec27;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1775.xy, x_1775.z);
        u_xlat6.x = x_1777;
        let x_1780 : f32 = u_xlat6.z;
        let x_1782 : f32 = u_xlat6.x;
        let x_1784 : f32 = u_xlat65;
        u_xlat65 = ((x_1780 * x_1782) + x_1784);
        let x_1787 : vec3<f32> = u_xlat25;
        let x_1788 : vec2<f32> = vec2<f32>(x_1787.x, x_1787.y);
        let x_1790 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1788.x, x_1788.y, x_1790);
        let x_1797 : vec3<f32> = txVec28;
        let x_1799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1797.xy, x_1797.z);
        u_xlat25.x = x_1799;
        let x_1802 : f32 = u_xlat6.w;
        let x_1804 : f32 = u_xlat25.x;
        let x_1806 : f32 = u_xlat65;
        u_xlat5.x = ((x_1802 * x_1804) + x_1806);
      }
    }
  } else {
    let x_1811 : vec4<f32> = u_xlat3;
    let x_1812 : vec2<f32> = vec2<f32>(x_1811.x, x_1811.y);
    let x_1814 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1812.x, x_1812.y, x_1814);
    let x_1821 : vec3<f32> = txVec29;
    let x_1823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1821.xy, x_1821.z);
    u_xlat5.x = x_1823;
  }
  let x_1826 : f32 = x_207.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1826) + 1.0f);
  let x_1831 : f32 = u_xlat5.x;
  let x_1833 : f32 = x_207.x_MainLightShadowParams.x;
  let x_1836 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1831 * x_1833) + x_1836);
  let x_1841 : f32 = u_xlat3.z;
  u_xlatb23 = (0.0f >= x_1841);
  let x_1845 : f32 = u_xlat3.z;
  u_xlatb43 = (x_1845 >= 1.0f);
  let x_1847 : bool = u_xlatb43;
  let x_1848 : bool = u_xlatb23;
  u_xlatb23 = (x_1847 | x_1848);
  let x_1850 : bool = u_xlatb23;
  if (x_1850) {
    x_1851 = 1.0f;
  } else {
    let x_1856 : f32 = u_xlat3.x;
    x_1851 = x_1856;
  }
  let x_1857 : f32 = x_1851;
  u_xlat3.x = x_1857;
  let x_1859 : vec3<f32> = vs_TEXCOORD1;
  let x_1861 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1863 : vec3<f32> = (x_1859 + -(x_1861));
  let x_1864 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1866 : vec4<f32> = u_xlat5;
  let x_1868 : vec4<f32> = u_xlat5;
  u_xlat23.x = dot(vec3<f32>(x_1866.x, x_1866.y, x_1866.z), vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1873 : f32 = u_xlat23.x;
  let x_1875 : f32 = x_207.x_MainLightShadowParams.z;
  let x_1878 : f32 = x_207.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1873 * x_1875) + x_1878);
  let x_1882 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1882, 0.0f, 1.0f);
  let x_1887 : f32 = u_xlat3.x;
  u_xlat43 = (-(x_1887) + 1.0f);
  let x_1891 : f32 = u_xlat23.x;
  let x_1892 : f32 = u_xlat43;
  let x_1895 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1891 * x_1892) + x_1895);
  let x_1898 : f32 = u_xlat64;
  let x_1901 : vec4<f32> = x_44.x_MainLightColor;
  let x_1903 : vec3<f32> = (vec3<f32>(x_1898, x_1898, x_1898) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : f32 = u_xlat62;
  let x_1908 : vec4<f32> = u_xlat4;
  let x_1910 : vec3<f32> = (vec3<f32>(x_1906, x_1906, x_1906) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
  let x_1911 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  let x_1914 : f32 = u_xlat3.x;
  let x_1916 : f32 = x_93.unity_LightData.z;
  u_xlat62 = (x_1914 * x_1916);
  let x_1918 : f32 = u_xlat62;
  let x_1920 : vec4<f32> = u_xlat5;
  let x_1922 : vec3<f32> = (vec3<f32>(x_1918, x_1918, x_1918) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
  let x_1923 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1925 : vec4<f32> = u_xlat2;
  let x_1928 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_1925.x, x_1925.y, x_1925.z), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
  let x_1931 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1931, 0.0f, 1.0f);
  let x_1933 : f32 = u_xlat62;
  let x_1935 : vec4<f32> = u_xlat3;
  let x_1937 : vec3<f32> = (vec3<f32>(x_1933, x_1933, x_1933) * vec3<f32>(x_1935.x, x_1935.y, x_1935.z));
  let x_1938 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1937.x, x_1937.y, x_1937.z, x_1938.w);
  let x_1941 : f32 = u_xlat0.x;
  u_xlat62 = ((x_1941 * 10.0f) + 1.0f);
  let x_1945 : f32 = u_xlat62;
  u_xlat62 = exp2(x_1945);
  let x_1947 : vec3<f32> = u_xlat1;
  let x_1948 : f32 = u_xlat61;
  let x_1952 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1954 : vec3<f32> = ((x_1947 * vec3<f32>(x_1948, x_1948, x_1948)) + vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1955 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
  let x_1957 : vec4<f32> = u_xlat6;
  let x_1959 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_1957.x, x_1957.y, x_1957.z), vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
  let x_1962 : f32 = u_xlat65;
  u_xlat65 = max(x_1962, 1.17549435e-37f);
  let x_1964 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_1964);
  let x_1966 : f32 = u_xlat65;
  let x_1968 : vec4<f32> = u_xlat6;
  let x_1970 : vec3<f32> = (vec3<f32>(x_1966, x_1966, x_1966) * vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
  let x_1971 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1973 : vec4<f32> = u_xlat2;
  let x_1975 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_1973.x, x_1973.y, x_1973.z), vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1978, 0.0f, 1.0f);
  let x_1980 : f32 = u_xlat65;
  u_xlat65 = log2(x_1980);
  let x_1982 : f32 = u_xlat62;
  let x_1983 : f32 = u_xlat65;
  u_xlat65 = (x_1982 * x_1983);
  let x_1985 : f32 = u_xlat65;
  u_xlat65 = exp2(x_1985);
  let x_1987 : f32 = u_xlat65;
  let x_1990 : vec4<f32> = x_56.x_SpecColor;
  let x_1992 : vec3<f32> = (vec3<f32>(x_1987, x_1987, x_1987) * vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
  let x_1993 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1995 : vec4<f32> = u_xlat3;
  let x_1997 : vec4<f32> = u_xlat6;
  let x_1999 : vec3<f32> = (vec3<f32>(x_1995.x, x_1995.y, x_1995.z) * vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
  let x_2000 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
  let x_2002 : vec4<f32> = u_xlat5;
  let x_2004 : vec4<f32> = u_xlat0;
  let x_2007 : vec4<f32> = u_xlat3;
  let x_2009 : vec3<f32> = ((vec3<f32>(x_2002.x, x_2002.y, x_2002.z) * vec3<f32>(x_2004.y, x_2004.z, x_2004.w)) + vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
  let x_2010 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2009.x, x_2009.y, x_2009.z, x_2010.w);
  let x_2013 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2015 : f32 = x_93.unity_LightData.y;
  u_xlat5.x = min(x_2013, x_2015);
  let x_2020 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_2020));
  u_xlat25.x = 0.0f;
  u_xlat25.y = 0.0f;
  u_xlat25.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2032 : u32 = u_xlatu_loop_1;
    let x_2033 : u32 = u_xlatu5;
    if ((x_2032 < x_2033)) {
    } else {
      break;
    }
    let x_2036 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_2036 >> 2u);
    let x_2039 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_2039 & 3u));
    let x_2043 : u32 = u_xlatu26;
    let x_2046 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_2043)];
    let x_2056 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2061 : vec4<u32> = indexable[x_2056];
    u_xlat26.x = dot(x_2046, bitcast<vec4<f32>>(x_2061));
    let x_2067 : f32 = u_xlat26.x;
    u_xlati26 = i32(x_2067);
    let x_2069 : vec3<f32> = vs_TEXCOORD1;
    let x_2081 : i32 = u_xlati26;
    let x_2083 : vec4<f32> = x_2080.x_AdditionalLightsPosition[x_2081];
    let x_2086 : i32 = u_xlati26;
    let x_2088 : vec4<f32> = x_2080.x_AdditionalLightsPosition[x_2086];
    let x_2090 : vec3<f32> = ((-(x_2069) * vec3<f32>(x_2083.w, x_2083.w, x_2083.w)) + vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
    let x_2091 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
    let x_2093 : vec4<f32> = u_xlat7;
    let x_2095 : vec4<f32> = u_xlat7;
    u_xlat46.x = dot(vec3<f32>(x_2093.x, x_2093.y, x_2093.z), vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
    let x_2100 : f32 = u_xlat46.x;
    u_xlat46.x = max(x_2100, 6.10351562e-05f);
    let x_2106 : f32 = u_xlat46.x;
    u_xlat66 = inverseSqrt(x_2106);
    let x_2108 : f32 = u_xlat66;
    let x_2110 : vec4<f32> = u_xlat7;
    let x_2112 : vec3<f32> = (vec3<f32>(x_2108, x_2108, x_2108) * vec3<f32>(x_2110.x, x_2110.y, x_2110.z));
    let x_2113 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
    let x_2116 : f32 = u_xlat46.x;
    u_xlat66 = (1.0f / x_2116);
    let x_2119 : f32 = u_xlat46.x;
    let x_2120 : i32 = u_xlati26;
    let x_2122 : f32 = x_2080.x_AdditionalLightsAttenuation[x_2120].x;
    u_xlat46.x = (x_2119 * x_2122);
    let x_2126 : f32 = u_xlat46.x;
    let x_2129 : f32 = u_xlat46.x;
    u_xlat46.x = ((-(x_2126) * x_2129) + 1.0f);
    let x_2134 : f32 = u_xlat46.x;
    u_xlat46.x = max(x_2134, 0.0f);
    let x_2138 : f32 = u_xlat46.x;
    let x_2140 : f32 = u_xlat46.x;
    u_xlat46.x = (x_2138 * x_2140);
    let x_2144 : f32 = u_xlat46.x;
    let x_2145 : f32 = u_xlat66;
    u_xlat46.x = (x_2144 * x_2145);
    let x_2148 : i32 = u_xlati26;
    let x_2150 : vec4<f32> = x_2080.x_AdditionalLightsSpotDir[x_2148];
    let x_2152 : vec4<f32> = u_xlat7;
    u_xlat66 = dot(vec3<f32>(x_2150.x, x_2150.y, x_2150.z), vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
    let x_2155 : f32 = u_xlat66;
    let x_2156 : i32 = u_xlati26;
    let x_2158 : f32 = x_2080.x_AdditionalLightsAttenuation[x_2156].z;
    let x_2160 : i32 = u_xlati26;
    let x_2162 : f32 = x_2080.x_AdditionalLightsAttenuation[x_2160].w;
    u_xlat66 = ((x_2155 * x_2158) + x_2162);
    let x_2164 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2164, 0.0f, 1.0f);
    let x_2166 : f32 = u_xlat66;
    let x_2167 : f32 = u_xlat66;
    u_xlat66 = (x_2166 * x_2167);
    let x_2169 : f32 = u_xlat66;
    let x_2171 : f32 = u_xlat46.x;
    u_xlat46.x = (x_2169 * x_2171);
    let x_2174 : f32 = u_xlat64;
    let x_2176 : i32 = u_xlati26;
    let x_2178 : vec4<f32> = x_2080.x_AdditionalLightsColor[x_2176];
    let x_2180 : vec3<f32> = (vec3<f32>(x_2174, x_2174, x_2174) * vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
    let x_2181 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
    let x_2183 : vec2<f32> = u_xlat46;
    let x_2185 : vec4<f32> = u_xlat8;
    u_xlat26 = (vec3<f32>(x_2183.x, x_2183.x, x_2183.x) * vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
    let x_2189 : vec4<f32> = u_xlat2;
    let x_2191 : vec4<f32> = u_xlat7;
    u_xlat67 = dot(vec3<f32>(x_2189.x, x_2189.y, x_2189.z), vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
    let x_2194 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2194, 0.0f, 1.0f);
    let x_2196 : vec3<f32> = u_xlat26;
    let x_2197 : f32 = u_xlat67;
    let x_2199 : vec3<f32> = (x_2196 * vec3<f32>(x_2197, x_2197, x_2197));
    let x_2200 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
    let x_2202 : vec3<f32> = u_xlat1;
    let x_2203 : f32 = u_xlat61;
    let x_2206 : vec4<f32> = u_xlat7;
    let x_2208 : vec3<f32> = ((x_2202 * vec3<f32>(x_2203, x_2203, x_2203)) + vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
    let x_2209 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
    let x_2211 : vec4<f32> = u_xlat7;
    let x_2213 : vec4<f32> = u_xlat7;
    u_xlat67 = dot(vec3<f32>(x_2211.x, x_2211.y, x_2211.z), vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
    let x_2216 : f32 = u_xlat67;
    u_xlat67 = max(x_2216, 1.17549435e-37f);
    let x_2218 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2218);
    let x_2220 : f32 = u_xlat67;
    let x_2222 : vec4<f32> = u_xlat7;
    let x_2224 : vec3<f32> = (vec3<f32>(x_2220, x_2220, x_2220) * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
    let x_2225 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
    let x_2227 : vec4<f32> = u_xlat2;
    let x_2229 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_2227.x, x_2227.y, x_2227.z), vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
    let x_2234 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_2234, 0.0f, 1.0f);
    let x_2238 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_2238);
    let x_2241 : f32 = u_xlat62;
    let x_2243 : f32 = u_xlat7.x;
    u_xlat7.x = (x_2241 * x_2243);
    let x_2247 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_2247);
    let x_2250 : vec4<f32> = u_xlat7;
    let x_2253 : vec4<f32> = x_56.x_SpecColor;
    let x_2255 : vec3<f32> = (vec3<f32>(x_2250.x, x_2250.x, x_2250.x) * vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
    let x_2256 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
    let x_2258 : vec3<f32> = u_xlat26;
    let x_2259 : vec4<f32> = u_xlat7;
    u_xlat26 = (x_2258 * vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
    let x_2262 : vec4<f32> = u_xlat8;
    let x_2264 : vec4<f32> = u_xlat0;
    let x_2267 : vec3<f32> = u_xlat26;
    u_xlat26 = ((vec3<f32>(x_2262.x, x_2262.y, x_2262.z) * vec3<f32>(x_2264.y, x_2264.z, x_2264.w)) + x_2267);
    let x_2269 : vec3<f32> = u_xlat25;
    let x_2270 : vec3<f32> = u_xlat26;
    u_xlat25 = (x_2269 + x_2270);

    continuing {
      let x_2272 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2272 + bitcast<u32>(1i));
    }
  }
  let x_2275 : vec4<f32> = u_xlat4;
  let x_2277 : vec4<f32> = u_xlat0;
  let x_2280 : vec4<f32> = u_xlat3;
  u_xlat20 = ((vec3<f32>(x_2275.x, x_2275.y, x_2275.z) * vec3<f32>(x_2277.y, x_2277.z, x_2277.w)) + vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
  let x_2283 : vec3<f32> = u_xlat25;
  let x_2284 : vec3<f32> = u_xlat20;
  u_xlat20 = (x_2283 + x_2284);
  let x_2286 : f32 = u_xlat63;
  let x_2287 : f32 = u_xlat63;
  u_xlat1.x = (x_2286 * -(x_2287));
  let x_2292 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2292);
  let x_2295 : vec3<f32> = u_xlat20;
  let x_2298 : vec4<f32> = x_44.unity_FogColor;
  u_xlat20 = (x_2295 + -(vec3<f32>(x_2298.x, x_2298.y, x_2298.z)));
  let x_2304 : vec3<f32> = u_xlat1;
  let x_2306 : vec3<f32> = u_xlat20;
  let x_2309 : vec4<f32> = x_44.unity_FogColor;
  let x_2311 : vec3<f32> = ((vec3<f32>(x_2304.x, x_2304.x, x_2304.x) * x_2306) + vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
  let x_2312 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
  let x_2316 : f32 = x_56.x_Surface;
  u_xlatb20 = (x_2316 == 1.0f);
  let x_2318 : bool = u_xlatb20;
  if (x_2318) {
    let x_2323 : f32 = u_xlat0.x;
    x_2319 = x_2323;
  } else {
    x_2319 = 1.0f;
  }
  let x_2325 : f32 = x_2319;
  SV_Target0.w = x_2325;
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

