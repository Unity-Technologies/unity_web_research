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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_187 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2192 : AdditionalLights;

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
  var x_164 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
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
  var u_xlatb7 : bool;
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
  var u_xlatb25 : bool;
  var u_xlatb46 : bool;
  var x_1837 : f32;
  var u_xlat25 : f32;
  var u_xlat46 : vec2<f32>;
  var u_xlatu65 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati69 : i32;
  var u_xlat71 : f32;
  var u_xlatb0 : bool;
  var x_2428 : f32;
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
    let x_169 : vec3<f32> = u_xlat3;
    x_164 = x_169;
  }
  let x_170 : vec3<f32> = x_164;
  u_xlat2 = x_170;
  let x_172 : vec3<f32> = vs_TEXCOORD2;
  let x_173 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_172, x_173);
  let x_175 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat63;
  let x_179 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_177, x_177, x_177) * x_179);
  let x_182 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres0;
  let x_192 : vec3<f32> = (x_182 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec3<f32> = vs_TEXCOORD1;
  let x_198 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres1;
  let x_201 : vec3<f32> = (x_196 + -(vec3<f32>(x_198.x, x_198.y, x_198.z)));
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : vec3<f32> = vs_TEXCOORD1;
  let x_208 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_205 + -(vec3<f32>(x_208.x, x_208.y, x_208.z)));
  let x_213 : vec3<f32> = vs_TEXCOORD1;
  let x_216 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres3;
  let x_219 : vec3<f32> = (x_213 + -(vec3<f32>(x_216.x, x_216.y, x_216.z)));
  let x_220 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat4;
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_222.x, x_222.y, x_222.z), vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_234 : vec3<f32> = u_xlat6;
  let x_235 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_234, x_235);
  let x_238 : vec4<f32> = u_xlat7;
  let x_240 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_247 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = x_187.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_247 < x_250);
  let x_253 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_253);
  let x_257 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_257);
  let x_261 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_261);
  let x_265 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_265);
  let x_269 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_269);
  let x_275 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_275);
  let x_279 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_279);
  let x_282 : vec4<f32> = u_xlat4;
  let x_284 : vec4<f32> = u_xlat5;
  let x_286 : vec3<f32> = (vec3<f32>(x_282.x, x_282.y, x_282.z) + vec3<f32>(x_284.y, x_284.z, x_284.w));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec4<f32> = u_xlat4;
  let x_292 : vec3<f32> = max(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_293.x, x_292.x, x_292.y, x_292.z);
  let x_295 : vec4<f32> = u_xlat5;
  u_xlat63 = dot(x_295, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_301 : f32 = u_xlat63;
  u_xlat63 = (-(x_301) + 4.0f);
  let x_306 : f32 = u_xlat63;
  u_xlatu63 = u32(x_306);
  let x_310 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_310) << bitcast<u32>(2i));
  let x_313 : vec3<f32> = vs_TEXCOORD1;
  let x_315 : i32 = u_xlati63;
  let x_318 : i32 = u_xlati63;
  let x_322 : vec4<f32> = x_187.x_MainLightWorldToShadow[((x_315 + 1i) / 4i)][((x_318 + 1i) % 4i)];
  let x_324 : vec3<f32> = (vec3<f32>(x_313.y, x_313.y, x_313.y) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : i32 = u_xlati63;
  let x_329 : i32 = u_xlati63;
  let x_332 : vec4<f32> = x_187.x_MainLightWorldToShadow[(x_327 / 4i)][(x_329 % 4i)];
  let x_334 : vec3<f32> = vs_TEXCOORD1;
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.x, x_334.x, x_334.x)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : i32 = u_xlati63;
  let x_345 : i32 = u_xlati63;
  let x_349 : vec4<f32> = x_187.x_MainLightWorldToShadow[((x_342 + 2i) / 4i)][((x_345 + 2i) % 4i)];
  let x_351 : vec3<f32> = vs_TEXCOORD1;
  let x_354 : vec4<f32> = u_xlat4;
  let x_356 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_351.z, x_351.z, x_351.z)) + vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat4;
  let x_361 : i32 = u_xlati63;
  let x_364 : i32 = u_xlati63;
  let x_368 : vec4<f32> = x_187.x_MainLightWorldToShadow[((x_361 + 3i) / 4i)][((x_364 + 3i) % 4i)];
  let x_370 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = vs_TEXCOORD1.y;
  let x_376 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_374 * x_376);
  let x_379 : f32 = x_44.unity_MatrixV[0i].z;
  let x_381 : f32 = vs_TEXCOORD1.x;
  let x_383 : f32 = u_xlat63;
  u_xlat63 = ((x_379 * x_381) + x_383);
  let x_386 : f32 = x_44.unity_MatrixV[2i].z;
  let x_388 : f32 = vs_TEXCOORD1.z;
  let x_390 : f32 = u_xlat63;
  u_xlat63 = ((x_386 * x_388) + x_390);
  let x_392 : f32 = u_xlat63;
  let x_394 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_392 + x_394);
  let x_396 : f32 = u_xlat63;
  let x_400 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_396) + -(x_400));
  let x_403 : f32 = u_xlat63;
  u_xlat63 = max(x_403, 0.0f);
  let x_405 : f32 = u_xlat63;
  let x_408 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_405 * x_408);
  let x_416 : vec2<f32> = vs_TEXCOORD8;
  let x_418 : f32 = x_44.x_GlobalMipBias.x;
  let x_419 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_416, x_418);
  let x_420 : vec3<f32> = vec3<f32>(x_419.x, x_419.y, x_419.z);
  let x_421 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_425 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_426 : vec2<f32> = vec2<f32>(x_425.x, x_425.y);
  let x_430 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_426.x, x_426.y));
  let x_431 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_430.x, x_430.y, x_431.z);
  let x_433 : vec3<f32> = u_xlat6;
  let x_435 : vec4<f32> = hlslcc_FragCoord;
  let x_437 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_435.x, x_435.y));
  let x_438 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_437.x, x_437.y, x_438.z);
  let x_441 : f32 = u_xlat6.y;
  let x_444 : f32 = x_44.x_ScaleBiasRt.x;
  let x_447 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_441 * x_444) + x_447);
  let x_449 : f32 = u_xlat65;
  u_xlat6.z = (-(x_449) + 1.0f);
  let x_454 : f32 = x_57.x_Metallic;
  u_xlat65 = ((-(x_454) * 0.959999979f) + 0.959999979f);
  let x_460 : f32 = u_xlat65;
  let x_463 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_460) + x_463);
  let x_466 : vec4<f32> = u_xlat1;
  let x_468 : f32 = u_xlat65;
  u_xlat22 = (vec3<f32>(x_466.y, x_466.z, x_466.w) * vec3<f32>(x_468, x_468, x_468));
  let x_471 : vec4<f32> = u_xlat0;
  let x_474 : vec4<f32> = x_57.x_BaseColor;
  let x_479 : vec3<f32> = ((vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(x_474.x, x_474.y, x_474.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_480 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_483 : f32 = x_57.x_Metallic;
  let x_485 : f32 = x_57.x_Metallic;
  let x_487 : f32 = x_57.x_Metallic;
  let x_488 : vec3<f32> = vec3<f32>(x_483, x_485, x_487);
  let x_493 : vec4<f32> = u_xlat0;
  let x_498 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.y, x_488.z) * vec3<f32>(x_493.x, x_493.y, x_493.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_499 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_502 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_502) + 1.0f);
  let x_506 : f32 = u_xlat65;
  let x_507 : f32 = u_xlat65;
  u_xlat67 = (x_506 * x_507);
  let x_509 : f32 = u_xlat67;
  u_xlat67 = max(x_509, 0.0078125f);
  let x_513 : f32 = u_xlat67;
  let x_514 : f32 = u_xlat67;
  u_xlat68 = (x_513 * x_514);
  let x_516 : f32 = u_xlat66;
  u_xlat66 = (x_516 + 1.0f);
  let x_518 : f32 = u_xlat66;
  u_xlat66 = clamp(x_518, 0.0f, 1.0f);
  let x_521 : f32 = u_xlat67;
  u_xlat27 = ((x_521 * 4.0f) + 2.0f);
  let x_529 : vec3<f32> = u_xlat6;
  let x_532 : f32 = x_44.x_GlobalMipBias.x;
  let x_533 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_529.x, x_529.z), x_532);
  u_xlat6.x = x_533.x;
  let x_538 : f32 = u_xlat6.x;
  u_xlat48 = (x_538 + -1.0f);
  let x_541 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_542 : f32 = u_xlat48;
  u_xlat48 = ((x_541 * x_542) + 1.0f);
  let x_546 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_546, 1.0f);
  let x_551 : f32 = x_187.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_551);
  let x_553 : bool = u_xlatb69;
  if (x_553) {
    let x_557 : f32 = x_187.x_MainLightShadowParams.y;
    u_xlatb69 = (x_557 == 1.0f);
    let x_559 : bool = u_xlatb69;
    if (x_559) {
      let x_562 : vec4<f32> = u_xlat4;
      let x_565 : vec4<f32> = x_187.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_562.x, x_562.y, x_562.x, x_562.y) + x_565);
      let x_568 : vec4<f32> = u_xlat7;
      let x_569 : vec2<f32> = vec2<f32>(x_568.x, x_568.y);
      let x_571 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_569.x, x_569.y, x_571);
      let x_584 : vec3<f32> = txVec0;
      let x_586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_584.xy, x_584.z);
      u_xlat8.x = x_586;
      let x_589 : vec4<f32> = u_xlat7;
      let x_590 : vec2<f32> = vec2<f32>(x_589.z, x_589.w);
      let x_592 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_590.x, x_590.y, x_592);
      let x_599 : vec3<f32> = txVec1;
      let x_601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_599.xy, x_599.z);
      u_xlat8.y = x_601;
      let x_603 : vec4<f32> = u_xlat4;
      let x_606 : vec4<f32> = x_187.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_603.x, x_603.y, x_603.x, x_603.y) + x_606);
      let x_609 : vec4<f32> = u_xlat7;
      let x_610 : vec2<f32> = vec2<f32>(x_609.x, x_609.y);
      let x_612 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_610.x, x_610.y, x_612);
      let x_619 : vec3<f32> = txVec2;
      let x_621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_619.xy, x_619.z);
      u_xlat8.z = x_621;
      let x_624 : vec4<f32> = u_xlat7;
      let x_625 : vec2<f32> = vec2<f32>(x_624.z, x_624.w);
      let x_627 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_625.x, x_625.y, x_627);
      let x_634 : vec3<f32> = txVec3;
      let x_636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_634.xy, x_634.z);
      u_xlat8.w = x_636;
      let x_639 : vec4<f32> = u_xlat8;
      u_xlat69 = dot(x_639, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_646 : f32 = x_187.x_MainLightShadowParams.y;
      u_xlatb7 = (x_646 == 2.0f);
      let x_648 : bool = u_xlatb7;
      if (x_648) {
        let x_651 : vec4<f32> = u_xlat4;
        let x_654 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_659 : vec2<f32> = ((vec2<f32>(x_651.x, x_651.y) * vec2<f32>(x_654.z, x_654.w)) + vec2<f32>(0.5f, 0.5f));
        let x_660 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_662 : vec4<f32> = u_xlat7;
        let x_664 : vec2<f32> = floor(vec2<f32>(x_662.x, x_662.y));
        let x_665 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_669 : vec4<f32> = u_xlat4;
        let x_672 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_675 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_669.x, x_669.y) * vec2<f32>(x_672.z, x_672.w)) + -(vec2<f32>(x_675.x, x_675.y)));
        let x_679 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_679.x, x_679.x, x_679.y, x_679.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_684 : vec4<f32> = u_xlat8;
        let x_686 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_684.x, x_684.x, x_684.z, x_684.z) * vec4<f32>(x_686.x, x_686.x, x_686.z, x_686.z));
        let x_689 : vec4<f32> = u_xlat9;
        let x_693 : vec2<f32> = (vec2<f32>(x_689.y, x_689.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_694 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_693.x, x_694.y, x_693.y, x_694.w);
        let x_696 : vec4<f32> = u_xlat9;
        let x_699 : vec2<f32> = u_xlat49;
        let x_701 : vec2<f32> = ((vec2<f32>(x_696.x, x_696.z) * vec2<f32>(0.5f, 0.5f)) + -(x_699));
        let x_702 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
        let x_705 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_705) + vec2<f32>(1.0f, 1.0f));
        let x_709 : vec2<f32> = u_xlat49;
        let x_711 : vec2<f32> = min(x_709, vec2<f32>(0.0f, 0.0f));
        let x_712 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
        let x_714 : vec4<f32> = u_xlat10;
        let x_717 : vec4<f32> = u_xlat10;
        let x_720 : vec2<f32> = u_xlat51;
        let x_721 : vec2<f32> = ((-(vec2<f32>(x_714.x, x_714.y)) * vec2<f32>(x_717.x, x_717.y)) + x_720);
        let x_722 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
        let x_724 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_724, vec2<f32>(0.0f, 0.0f));
        let x_726 : vec2<f32> = u_xlat49;
        let x_728 : vec2<f32> = u_xlat49;
        let x_730 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_726) * x_728) + vec2<f32>(x_730.y, x_730.w));
        let x_733 : vec4<f32> = u_xlat10;
        let x_735 : vec2<f32> = (vec2<f32>(x_733.x, x_733.y) + vec2<f32>(1.0f, 1.0f));
        let x_736 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
        let x_738 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_738 + vec2<f32>(1.0f, 1.0f));
        let x_741 : vec4<f32> = u_xlat9;
        let x_745 : vec2<f32> = (vec2<f32>(x_741.x, x_741.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_746 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
        let x_748 : vec2<f32> = u_xlat51;
        let x_749 : vec2<f32> = (x_748 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_750 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat10;
        let x_754 : vec2<f32> = (vec2<f32>(x_752.x, x_752.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_755 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_758 : vec2<f32> = u_xlat49;
        let x_759 : vec2<f32> = (x_758 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_760 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
        let x_762 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_762.y, x_762.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_766 : f32 = u_xlat10.x;
        u_xlat11.z = x_766;
        let x_769 : f32 = u_xlat49.x;
        u_xlat11.w = x_769;
        let x_772 : f32 = u_xlat12.x;
        u_xlat9.z = x_772;
        let x_775 : f32 = u_xlat8.x;
        u_xlat9.w = x_775;
        let x_778 : vec4<f32> = u_xlat9;
        let x_780 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_778.z, x_778.w, x_778.x, x_778.z) + vec4<f32>(x_780.z, x_780.w, x_780.x, x_780.z));
        let x_784 : f32 = u_xlat11.y;
        u_xlat10.z = x_784;
        let x_787 : f32 = u_xlat49.y;
        u_xlat10.w = x_787;
        let x_790 : f32 = u_xlat9.y;
        u_xlat12.z = x_790;
        let x_793 : f32 = u_xlat8.z;
        u_xlat12.w = x_793;
        let x_795 : vec4<f32> = u_xlat10;
        let x_797 : vec4<f32> = u_xlat12;
        let x_799 : vec3<f32> = (vec3<f32>(x_795.z, x_795.y, x_795.w) + vec3<f32>(x_797.z, x_797.y, x_797.w));
        let x_800 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
        let x_802 : vec4<f32> = u_xlat9;
        let x_804 : vec4<f32> = u_xlat13;
        let x_806 : vec3<f32> = (vec3<f32>(x_802.x, x_802.z, x_802.w) / vec3<f32>(x_804.z, x_804.w, x_804.y));
        let x_807 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat9;
        let x_815 : vec3<f32> = (vec3<f32>(x_809.x, x_809.y, x_809.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_816 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
        let x_818 : vec4<f32> = u_xlat12;
        let x_820 : vec4<f32> = u_xlat8;
        let x_822 : vec3<f32> = (vec3<f32>(x_818.z, x_818.y, x_818.w) / vec3<f32>(x_820.x, x_820.y, x_820.z));
        let x_823 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
        let x_825 : vec4<f32> = u_xlat10;
        let x_827 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_828 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat9;
        let x_833 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_835 : vec3<f32> = (vec3<f32>(x_830.y, x_830.x, x_830.z) * vec3<f32>(x_833.x, x_833.x, x_833.x));
        let x_836 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat10;
        let x_841 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_843 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(x_841.y, x_841.y, x_841.y));
        let x_844 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
        let x_847 : f32 = u_xlat10.x;
        u_xlat9.w = x_847;
        let x_849 : vec4<f32> = u_xlat7;
        let x_852 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_855 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_849.x, x_849.y, x_849.x, x_849.y) * vec4<f32>(x_852.x, x_852.y, x_852.x, x_852.y)) + vec4<f32>(x_855.y, x_855.w, x_855.x, x_855.w));
        let x_858 : vec4<f32> = u_xlat7;
        let x_861 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_864 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_858.x, x_858.y) * vec2<f32>(x_861.x, x_861.y)) + vec2<f32>(x_864.z, x_864.w));
        let x_868 : f32 = u_xlat9.y;
        u_xlat10.w = x_868;
        let x_870 : vec4<f32> = u_xlat10;
        let x_871 : vec2<f32> = vec2<f32>(x_870.y, x_870.z);
        let x_872 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_872.x, x_871.x, x_872.z, x_871.y);
        let x_874 : vec4<f32> = u_xlat7;
        let x_877 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_880 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.y) * vec4<f32>(x_877.x, x_877.y, x_877.x, x_877.y)) + vec4<f32>(x_880.x, x_880.y, x_880.z, x_880.y));
        let x_883 : vec4<f32> = u_xlat7;
        let x_886 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_889 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.y) * vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y)) + vec4<f32>(x_889.w, x_889.y, x_889.w, x_889.z));
        let x_892 : vec4<f32> = u_xlat7;
        let x_895 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y) * vec4<f32>(x_895.x, x_895.y, x_895.x, x_895.y)) + vec4<f32>(x_898.x, x_898.w, x_898.z, x_898.w));
        let x_902 : vec4<f32> = u_xlat8;
        let x_904 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_902.x, x_902.x, x_902.x, x_902.y) * vec4<f32>(x_904.z, x_904.w, x_904.y, x_904.z));
        let x_908 : vec4<f32> = u_xlat8;
        let x_910 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_908.y, x_908.y, x_908.z, x_908.z) * x_910);
        let x_913 : f32 = u_xlat8.z;
        let x_915 : f32 = u_xlat13.y;
        u_xlat7.x = (x_913 * x_915);
        let x_919 : vec4<f32> = u_xlat11;
        let x_920 : vec2<f32> = vec2<f32>(x_919.x, x_919.y);
        let x_922 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_920.x, x_920.y, x_922);
        let x_930 : vec3<f32> = txVec4;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_930.xy, x_930.z);
        u_xlat28 = x_932;
        let x_934 : vec4<f32> = u_xlat11;
        let x_935 : vec2<f32> = vec2<f32>(x_934.z, x_934.w);
        let x_937 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_935.x, x_935.y, x_937);
        let x_944 : vec3<f32> = txVec5;
        let x_946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_944.xy, x_944.z);
        u_xlat8.x = x_946;
        let x_949 : f32 = u_xlat8.x;
        let x_951 : f32 = u_xlat14.y;
        u_xlat8.x = (x_949 * x_951);
        let x_955 : f32 = u_xlat14.x;
        let x_956 : f32 = u_xlat28;
        let x_959 : f32 = u_xlat8.x;
        u_xlat28 = ((x_955 * x_956) + x_959);
        let x_962 : vec2<f32> = u_xlat49;
        let x_964 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_971 : vec3<f32> = txVec6;
        let x_973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_971.xy, x_971.z);
        u_xlat49.x = x_973;
        let x_976 : f32 = u_xlat14.z;
        let x_978 : f32 = u_xlat49.x;
        let x_980 : f32 = u_xlat28;
        u_xlat28 = ((x_976 * x_978) + x_980);
        let x_983 : vec4<f32> = u_xlat10;
        let x_984 : vec2<f32> = vec2<f32>(x_983.x, x_983.y);
        let x_986 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_984.x, x_984.y, x_986);
        let x_993 : vec3<f32> = txVec7;
        let x_995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_993.xy, x_993.z);
        u_xlat49.x = x_995;
        let x_998 : f32 = u_xlat14.w;
        let x_1000 : f32 = u_xlat49.x;
        let x_1002 : f32 = u_xlat28;
        u_xlat28 = ((x_998 * x_1000) + x_1002);
        let x_1005 : vec4<f32> = u_xlat12;
        let x_1006 : vec2<f32> = vec2<f32>(x_1005.x, x_1005.y);
        let x_1008 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1006.x, x_1006.y, x_1008);
        let x_1015 : vec3<f32> = txVec8;
        let x_1017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1015.xy, x_1015.z);
        u_xlat49.x = x_1017;
        let x_1020 : f32 = u_xlat15.x;
        let x_1022 : f32 = u_xlat49.x;
        let x_1024 : f32 = u_xlat28;
        u_xlat28 = ((x_1020 * x_1022) + x_1024);
        let x_1027 : vec4<f32> = u_xlat12;
        let x_1028 : vec2<f32> = vec2<f32>(x_1027.z, x_1027.w);
        let x_1030 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1028.x, x_1028.y, x_1030);
        let x_1037 : vec3<f32> = txVec9;
        let x_1039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1037.xy, x_1037.z);
        u_xlat49.x = x_1039;
        let x_1042 : f32 = u_xlat15.y;
        let x_1044 : f32 = u_xlat49.x;
        let x_1046 : f32 = u_xlat28;
        u_xlat28 = ((x_1042 * x_1044) + x_1046);
        let x_1049 : vec4<f32> = u_xlat10;
        let x_1050 : vec2<f32> = vec2<f32>(x_1049.z, x_1049.w);
        let x_1052 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1050.x, x_1050.y, x_1052);
        let x_1059 : vec3<f32> = txVec10;
        let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1059.xy, x_1059.z);
        u_xlat49.x = x_1061;
        let x_1064 : f32 = u_xlat15.z;
        let x_1066 : f32 = u_xlat49.x;
        let x_1068 : f32 = u_xlat28;
        u_xlat28 = ((x_1064 * x_1066) + x_1068);
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1072 : vec2<f32> = vec2<f32>(x_1071.x, x_1071.y);
        let x_1074 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1072.x, x_1072.y, x_1074);
        let x_1081 : vec3<f32> = txVec11;
        let x_1083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1081.xy, x_1081.z);
        u_xlat49.x = x_1083;
        let x_1086 : f32 = u_xlat15.w;
        let x_1088 : f32 = u_xlat49.x;
        let x_1090 : f32 = u_xlat28;
        u_xlat28 = ((x_1086 * x_1088) + x_1090);
        let x_1093 : vec4<f32> = u_xlat9;
        let x_1094 : vec2<f32> = vec2<f32>(x_1093.z, x_1093.w);
        let x_1096 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1094.x, x_1094.y, x_1096);
        let x_1103 : vec3<f32> = txVec12;
        let x_1105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1103.xy, x_1103.z);
        u_xlat49.x = x_1105;
        let x_1108 : f32 = u_xlat7.x;
        let x_1110 : f32 = u_xlat49.x;
        let x_1112 : f32 = u_xlat28;
        u_xlat69 = ((x_1108 * x_1110) + x_1112);
      } else {
        let x_1115 : vec4<f32> = u_xlat4;
        let x_1118 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1121 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1118.z, x_1118.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1122 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat7;
        let x_1126 : vec2<f32> = floor(vec2<f32>(x_1124.x, x_1124.y));
        let x_1127 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1129 : vec4<f32> = u_xlat4;
        let x_1132 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.z, x_1132.w)) + -(vec2<f32>(x_1135.x, x_1135.y)));
        let x_1139 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1139.x, x_1139.x, x_1139.y, x_1139.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1144 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1142.x, x_1142.x, x_1142.z, x_1142.z) * vec4<f32>(x_1144.x, x_1144.x, x_1144.z, x_1144.z));
        let x_1147 : vec4<f32> = u_xlat9;
        let x_1151 : vec2<f32> = (vec2<f32>(x_1147.y, x_1147.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1152 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1152.x, x_1151.x, x_1152.z, x_1151.y);
        let x_1154 : vec4<f32> = u_xlat9;
        let x_1157 : vec2<f32> = u_xlat49;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1157));
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1159.x, x_1160.y, x_1159.y, x_1160.w);
        let x_1162 : vec2<f32> = u_xlat49;
        let x_1164 : vec2<f32> = (-(x_1162) + vec2<f32>(1.0f, 1.0f));
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1167, vec2<f32>(0.0f, 0.0f));
        let x_1169 : vec2<f32> = u_xlat51;
        let x_1171 : vec2<f32> = u_xlat51;
        let x_1173 : vec4<f32> = u_xlat9;
        let x_1175 : vec2<f32> = ((-(x_1169) * x_1171) + vec2<f32>(x_1173.x, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1178, vec2<f32>(0.0f, 0.0f));
        let x_1181 : vec2<f32> = u_xlat51;
        let x_1183 : vec2<f32> = u_xlat51;
        let x_1185 : vec4<f32> = u_xlat8;
        let x_1187 : vec2<f32> = ((-(x_1181) * x_1183) + vec2<f32>(x_1185.y, x_1185.w));
        let x_1188 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1187.x, x_1188.y, x_1187.y);
        let x_1190 : vec4<f32> = u_xlat9;
        let x_1193 : vec2<f32> = (vec2<f32>(x_1190.x, x_1190.y) + vec2<f32>(2.0f, 2.0f));
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
        let x_1196 : vec3<f32> = u_xlat29;
        let x_1198 : vec2<f32> = (vec2<f32>(x_1196.x, x_1196.z) + vec2<f32>(2.0f, 2.0f));
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1199.x, x_1198.x, x_1199.z, x_1198.y);
        let x_1202 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1202 * 0.081632003f);
        let x_1206 : vec4<f32> = u_xlat8;
        let x_1209 : vec3<f32> = (vec3<f32>(x_1206.z, x_1206.x, x_1206.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1210 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
        let x_1212 : vec4<f32> = u_xlat9;
        let x_1215 : vec2<f32> = (vec2<f32>(x_1212.x, x_1212.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1219 : f32 = u_xlat12.y;
        u_xlat11.x = x_1219;
        let x_1221 : vec2<f32> = u_xlat49;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1229.x, x_1228.x, x_1229.z, x_1228.y);
        let x_1231 : vec2<f32> = u_xlat49;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1231.x, x_1231.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1236 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1235.x, x_1236.y, x_1235.y, x_1236.w);
        let x_1239 : f32 = u_xlat8.x;
        u_xlat9.y = x_1239;
        let x_1242 : f32 = u_xlat10.y;
        u_xlat9.w = x_1242;
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1245 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1244 + x_1245);
        let x_1247 : vec2<f32> = u_xlat49;
        let x_1250 : vec2<f32> = ((vec2<f32>(x_1247.y, x_1247.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1251 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1251.x, x_1250.x, x_1251.z, x_1250.y);
        let x_1253 : vec2<f32> = u_xlat49;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1253.y, x_1253.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1256.x, x_1257.y, x_1256.y, x_1257.w);
        let x_1260 : f32 = u_xlat8.y;
        u_xlat10.y = x_1260;
        let x_1262 : vec4<f32> = u_xlat10;
        let x_1263 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1262 + x_1263);
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1266 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1265 / x_1266);
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1268 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1274 : vec4<f32> = u_xlat10;
        let x_1275 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1274 / x_1275);
        let x_1277 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1277 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1279 : vec4<f32> = u_xlat9;
        let x_1282 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1279.w, x_1279.x, x_1279.y, x_1279.z) * vec4<f32>(x_1282.x, x_1282.x, x_1282.x, x_1282.x));
        let x_1285 : vec4<f32> = u_xlat10;
        let x_1288 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1285.x, x_1285.w, x_1285.y, x_1285.z) * vec4<f32>(x_1288.y, x_1288.y, x_1288.y, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat9;
        let x_1292 : vec3<f32> = vec3<f32>(x_1291.y, x_1291.z, x_1291.w);
        let x_1293 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1292.x, x_1293.y, x_1292.y, x_1292.z);
        let x_1296 : f32 = u_xlat10.x;
        u_xlat12.y = x_1296;
        let x_1298 : vec4<f32> = u_xlat7;
        let x_1301 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1304.y));
        let x_1307 : vec4<f32> = u_xlat7;
        let x_1310 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1310.x, x_1310.y)) + vec2<f32>(x_1313.w, x_1313.y));
        let x_1317 : f32 = u_xlat12.y;
        u_xlat9.y = x_1317;
        let x_1320 : f32 = u_xlat10.z;
        u_xlat12.y = x_1320;
        let x_1322 : vec4<f32> = u_xlat7;
        let x_1325 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.y) * vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y)) + vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1328.y));
        let x_1331 : vec4<f32> = u_xlat7;
        let x_1334 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat12;
        let x_1339 : vec2<f32> = ((vec2<f32>(x_1331.x, x_1331.y) * vec2<f32>(x_1334.x, x_1334.y)) + vec2<f32>(x_1337.w, x_1337.y));
        let x_1340 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        let x_1343 : f32 = u_xlat12.y;
        u_xlat9.z = x_1343;
        let x_1346 : vec4<f32> = u_xlat7;
        let x_1349 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y) * vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y)) + vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.z));
        let x_1356 : f32 = u_xlat10.w;
        u_xlat12.y = x_1356;
        let x_1359 : vec4<f32> = u_xlat7;
        let x_1362 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y) * vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y)) + vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1365.y));
        let x_1369 : vec4<f32> = u_xlat7;
        let x_1372 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(x_1372.x, x_1372.y)) + vec2<f32>(x_1375.w, x_1375.y));
        let x_1379 : f32 = u_xlat12.y;
        u_xlat9.w = x_1379;
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1385 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(x_1385.x, x_1385.y)) + vec2<f32>(x_1388.x, x_1388.w));
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1392 : vec3<f32> = vec3<f32>(x_1391.x, x_1391.z, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1392.x, x_1393.y, x_1392.y, x_1392.z);
        let x_1395 : vec4<f32> = u_xlat7;
        let x_1398 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y) * vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y)) + vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1401.y));
        let x_1405 : vec4<f32> = u_xlat7;
        let x_1408 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1405.x, x_1405.y) * vec2<f32>(x_1408.x, x_1408.y)) + vec2<f32>(x_1411.w, x_1411.y));
        let x_1415 : f32 = u_xlat9.x;
        u_xlat10.x = x_1415;
        let x_1417 : vec4<f32> = u_xlat7;
        let x_1420 : vec4<f32> = x_187.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat10;
        let x_1425 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.x, x_1420.y)) + vec2<f32>(x_1423.x, x_1423.y));
        let x_1426 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1426.w);
        let x_1429 : vec4<f32> = u_xlat8;
        let x_1431 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1429.x, x_1429.x, x_1429.x, x_1429.x) * x_1431);
        let x_1434 : vec4<f32> = u_xlat8;
        let x_1436 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1434.y, x_1434.y, x_1434.y, x_1434.y) * x_1436);
        let x_1439 : vec4<f32> = u_xlat8;
        let x_1441 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1439.z, x_1439.z, x_1439.z, x_1439.z) * x_1441);
        let x_1443 : vec4<f32> = u_xlat8;
        let x_1445 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1443.w, x_1443.w, x_1443.w, x_1443.w) * x_1445);
        let x_1448 : vec4<f32> = u_xlat13;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.x, x_1448.y);
        let x_1451 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec13;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1458.xy, x_1458.z);
        u_xlat9.x = x_1460;
        let x_1463 : vec4<f32> = u_xlat13;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.z, x_1463.w);
        let x_1466 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1474 : vec3<f32> = txVec14;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1474.xy, x_1474.z);
        u_xlat72 = x_1476;
        let x_1477 : f32 = u_xlat72;
        let x_1479 : f32 = u_xlat18.y;
        u_xlat72 = (x_1477 * x_1479);
        let x_1482 : f32 = u_xlat18.x;
        let x_1484 : f32 = u_xlat9.x;
        let x_1486 : f32 = u_xlat72;
        u_xlat9.x = ((x_1482 * x_1484) + x_1486);
        let x_1490 : vec2<f32> = u_xlat49;
        let x_1492 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec15;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat49.x = x_1501;
        let x_1504 : f32 = u_xlat18.z;
        let x_1506 : f32 = u_xlat49.x;
        let x_1509 : f32 = u_xlat9.x;
        u_xlat49.x = ((x_1504 * x_1506) + x_1509);
        let x_1513 : vec4<f32> = u_xlat16;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.x, x_1513.y);
        let x_1516 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1524 : vec3<f32> = txVec16;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1524.xy, x_1524.z);
        u_xlat70 = x_1526;
        let x_1528 : f32 = u_xlat18.w;
        let x_1529 : f32 = u_xlat70;
        let x_1532 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1528 * x_1529) + x_1532);
        let x_1536 : vec4<f32> = u_xlat14;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.x, x_1536.y);
        let x_1539 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec17;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1546.xy, x_1546.z);
        u_xlat70 = x_1548;
        let x_1550 : f32 = u_xlat19.x;
        let x_1551 : f32 = u_xlat70;
        let x_1554 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1550 * x_1551) + x_1554);
        let x_1558 : vec4<f32> = u_xlat14;
        let x_1559 : vec2<f32> = vec2<f32>(x_1558.z, x_1558.w);
        let x_1561 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1559.x, x_1559.y, x_1561);
        let x_1568 : vec3<f32> = txVec18;
        let x_1570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1568.xy, x_1568.z);
        u_xlat70 = x_1570;
        let x_1572 : f32 = u_xlat19.y;
        let x_1573 : f32 = u_xlat70;
        let x_1576 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1572 * x_1573) + x_1576);
        let x_1580 : vec4<f32> = u_xlat15;
        let x_1581 : vec2<f32> = vec2<f32>(x_1580.x, x_1580.y);
        let x_1583 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
        let x_1590 : vec3<f32> = txVec19;
        let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1590.xy, x_1590.z);
        u_xlat70 = x_1592;
        let x_1594 : f32 = u_xlat19.z;
        let x_1595 : f32 = u_xlat70;
        let x_1598 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1594 * x_1595) + x_1598);
        let x_1602 : vec4<f32> = u_xlat16;
        let x_1603 : vec2<f32> = vec2<f32>(x_1602.z, x_1602.w);
        let x_1605 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1603.x, x_1603.y, x_1605);
        let x_1612 : vec3<f32> = txVec20;
        let x_1614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1612.xy, x_1612.z);
        u_xlat70 = x_1614;
        let x_1616 : f32 = u_xlat19.w;
        let x_1617 : f32 = u_xlat70;
        let x_1620 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1616 * x_1617) + x_1620);
        let x_1624 : vec4<f32> = u_xlat17;
        let x_1625 : vec2<f32> = vec2<f32>(x_1624.x, x_1624.y);
        let x_1627 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec21;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1634.xy, x_1634.z);
        u_xlat70 = x_1636;
        let x_1638 : f32 = u_xlat20.x;
        let x_1639 : f32 = u_xlat70;
        let x_1642 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1638 * x_1639) + x_1642);
        let x_1646 : vec4<f32> = u_xlat17;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.z, x_1646.w);
        let x_1649 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec22;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat70 = x_1658;
        let x_1660 : f32 = u_xlat20.y;
        let x_1661 : f32 = u_xlat70;
        let x_1664 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1660 * x_1661) + x_1664);
        let x_1668 : vec2<f32> = u_xlat30;
        let x_1670 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec23;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1677.xy, x_1677.z);
        u_xlat70 = x_1679;
        let x_1681 : f32 = u_xlat20.z;
        let x_1682 : f32 = u_xlat70;
        let x_1685 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1681 * x_1682) + x_1685);
        let x_1689 : vec2<f32> = u_xlat57;
        let x_1691 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1689.x, x_1689.y, x_1691);
        let x_1698 : vec3<f32> = txVec24;
        let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1698.xy, x_1698.z);
        u_xlat70 = x_1700;
        let x_1702 : f32 = u_xlat20.w;
        let x_1703 : f32 = u_xlat70;
        let x_1706 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1702 * x_1703) + x_1706);
        let x_1710 : vec4<f32> = u_xlat12;
        let x_1711 : vec2<f32> = vec2<f32>(x_1710.x, x_1710.y);
        let x_1713 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec25;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1720.xy, x_1720.z);
        u_xlat70 = x_1722;
        let x_1724 : f32 = u_xlat8.x;
        let x_1725 : f32 = u_xlat70;
        let x_1728 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1724 * x_1725) + x_1728);
        let x_1732 : vec4<f32> = u_xlat12;
        let x_1733 : vec2<f32> = vec2<f32>(x_1732.z, x_1732.w);
        let x_1735 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec26;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1742.xy, x_1742.z);
        u_xlat70 = x_1744;
        let x_1746 : f32 = u_xlat8.y;
        let x_1747 : f32 = u_xlat70;
        let x_1750 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1746 * x_1747) + x_1750);
        let x_1754 : vec2<f32> = u_xlat52;
        let x_1756 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec27;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1763.xy, x_1763.z);
        u_xlat70 = x_1765;
        let x_1767 : f32 = u_xlat8.z;
        let x_1768 : f32 = u_xlat70;
        let x_1771 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1767 * x_1768) + x_1771);
        let x_1775 : vec4<f32> = u_xlat7;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.x, x_1775.y);
        let x_1778 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec28;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1785.xy, x_1785.z);
        u_xlat7.x = x_1787;
        let x_1790 : f32 = u_xlat8.w;
        let x_1792 : f32 = u_xlat7.x;
        let x_1795 : f32 = u_xlat49.x;
        u_xlat69 = ((x_1790 * x_1792) + x_1795);
      }
    }
  } else {
    let x_1799 : vec4<f32> = u_xlat4;
    let x_1800 : vec2<f32> = vec2<f32>(x_1799.x, x_1799.y);
    let x_1802 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1800.x, x_1800.y, x_1802);
    let x_1809 : vec3<f32> = txVec29;
    let x_1811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1809.xy, x_1809.z);
    u_xlat69 = x_1811;
  }
  let x_1813 : f32 = x_187.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1813) + 1.0f);
  let x_1817 : f32 = u_xlat69;
  let x_1819 : f32 = x_187.x_MainLightShadowParams.x;
  let x_1822 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1817 * x_1819) + x_1822);
  let x_1827 : f32 = u_xlat4.z;
  u_xlatb25 = (0.0f >= x_1827);
  let x_1831 : f32 = u_xlat4.z;
  u_xlatb46 = (x_1831 >= 1.0f);
  let x_1833 : bool = u_xlatb46;
  let x_1834 : bool = u_xlatb25;
  u_xlatb25 = (x_1833 | x_1834);
  let x_1836 : bool = u_xlatb25;
  if (x_1836) {
    x_1837 = 1.0f;
  } else {
    let x_1842 : f32 = u_xlat4.x;
    x_1837 = x_1842;
  }
  let x_1843 : f32 = x_1837;
  u_xlat4.x = x_1843;
  let x_1845 : vec3<f32> = vs_TEXCOORD1;
  let x_1847 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1849 : vec3<f32> = (x_1845 + -(x_1847));
  let x_1850 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1853 : vec4<f32> = u_xlat7;
  let x_1855 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_1853.x, x_1853.y, x_1853.z), vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : f32 = u_xlat25;
  let x_1860 : f32 = x_187.x_MainLightShadowParams.z;
  let x_1863 : f32 = x_187.x_MainLightShadowParams.w;
  u_xlat25 = ((x_1858 * x_1860) + x_1863);
  let x_1865 : f32 = u_xlat25;
  u_xlat25 = clamp(x_1865, 0.0f, 1.0f);
  let x_1869 : f32 = u_xlat4.x;
  u_xlat46.x = (-(x_1869) + 1.0f);
  let x_1873 : f32 = u_xlat25;
  let x_1875 : f32 = u_xlat46.x;
  let x_1878 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1873 * x_1875) + x_1878);
  let x_1881 : f32 = u_xlat48;
  let x_1884 : vec4<f32> = x_44.x_MainLightColor;
  let x_1886 : vec3<f32> = (vec3<f32>(x_1881, x_1881, x_1881) * vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
  let x_1889 : vec3<f32> = u_xlat2;
  let x_1891 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(-(x_1889), x_1891);
  let x_1893 : f32 = u_xlat25;
  let x_1894 : f32 = u_xlat25;
  u_xlat25 = (x_1893 + x_1894);
  let x_1896 : vec3<f32> = u_xlat3;
  let x_1897 : f32 = u_xlat25;
  let x_1901 : vec3<f32> = u_xlat2;
  let x_1903 : vec3<f32> = ((x_1896 * -(vec3<f32>(x_1897, x_1897, x_1897))) + -(x_1901));
  let x_1904 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : vec3<f32> = u_xlat3;
  let x_1907 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_1906, x_1907);
  let x_1909 : f32 = u_xlat25;
  u_xlat25 = clamp(x_1909, 0.0f, 1.0f);
  let x_1911 : f32 = u_xlat25;
  u_xlat25 = (-(x_1911) + 1.0f);
  let x_1914 : f32 = u_xlat25;
  let x_1915 : f32 = u_xlat25;
  u_xlat25 = (x_1914 * x_1915);
  let x_1917 : f32 = u_xlat25;
  let x_1918 : f32 = u_xlat25;
  u_xlat25 = (x_1917 * x_1918);
  let x_1920 : f32 = u_xlat65;
  u_xlat46.x = ((-(x_1920) * 0.699999988f) + 1.700000048f);
  let x_1927 : f32 = u_xlat65;
  let x_1929 : f32 = u_xlat46.x;
  u_xlat65 = (x_1927 * x_1929);
  let x_1931 : f32 = u_xlat65;
  u_xlat65 = (x_1931 * 6.0f);
  let x_1942 : vec4<f32> = u_xlat8;
  let x_1944 : f32 = u_xlat65;
  let x_1945 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1942.x, x_1942.y, x_1942.z), x_1944);
  u_xlat8 = x_1945;
  let x_1947 : f32 = u_xlat8.w;
  u_xlat65 = (x_1947 + -1.0f);
  let x_1950 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1951 : f32 = u_xlat65;
  u_xlat65 = ((x_1950 * x_1951) + 1.0f);
  let x_1954 : f32 = u_xlat65;
  u_xlat65 = max(x_1954, 0.0f);
  let x_1956 : f32 = u_xlat65;
  u_xlat65 = log2(x_1956);
  let x_1958 : f32 = u_xlat65;
  let x_1960 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat65 = (x_1958 * x_1960);
  let x_1962 : f32 = u_xlat65;
  u_xlat65 = exp2(x_1962);
  let x_1964 : f32 = u_xlat65;
  let x_1966 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat65 = (x_1964 * x_1966);
  let x_1968 : vec4<f32> = u_xlat8;
  let x_1970 : f32 = u_xlat65;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1968.x, x_1968.y, x_1968.z) * vec3<f32>(x_1970, x_1970, x_1970));
  let x_1973 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1975 : f32 = u_xlat67;
  let x_1977 : f32 = u_xlat67;
  u_xlat46 = ((vec2<f32>(x_1975, x_1975) * vec2<f32>(x_1977, x_1977)) + vec2<f32>(-1.0f, 1.0f));
  let x_1983 : f32 = u_xlat46.y;
  u_xlat65 = (1.0f / x_1983);
  let x_1985 : vec4<f32> = u_xlat0;
  let x_1988 : f32 = u_xlat66;
  let x_1990 : vec3<f32> = (-(vec3<f32>(x_1985.x, x_1985.y, x_1985.z)) + vec3<f32>(x_1988, x_1988, x_1988));
  let x_1991 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
  let x_1993 : f32 = u_xlat25;
  let x_1995 : vec4<f32> = u_xlat9;
  let x_1998 : vec4<f32> = u_xlat0;
  let x_2000 : vec3<f32> = ((vec3<f32>(x_1993, x_1993, x_1993) * vec3<f32>(x_1995.x, x_1995.y, x_1995.z)) + vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
  let x_2001 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2001.w);
  let x_2003 : f32 = u_xlat65;
  let x_2005 : vec4<f32> = u_xlat9;
  let x_2007 : vec3<f32> = (vec3<f32>(x_2003, x_2003, x_2003) * vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
  let x_2008 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
  let x_2010 : vec4<f32> = u_xlat8;
  let x_2012 : vec4<f32> = u_xlat9;
  let x_2014 : vec3<f32> = (vec3<f32>(x_2010.x, x_2010.y, x_2010.z) * vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2015 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
  let x_2017 : vec4<f32> = u_xlat5;
  let x_2019 : vec3<f32> = u_xlat22;
  let x_2021 : vec4<f32> = u_xlat8;
  let x_2023 : vec3<f32> = ((vec3<f32>(x_2017.x, x_2017.y, x_2017.z) * x_2019) + vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
  let x_2024 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
  let x_2027 : f32 = u_xlat4.x;
  let x_2029 : f32 = x_95.unity_LightData.z;
  u_xlat65 = (x_2027 * x_2029);
  let x_2031 : vec3<f32> = u_xlat3;
  let x_2033 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(x_2031, vec3<f32>(x_2033.x, x_2033.y, x_2033.z));
  let x_2036 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2036, 0.0f, 1.0f);
  let x_2038 : f32 = u_xlat65;
  let x_2039 : f32 = u_xlat66;
  u_xlat65 = (x_2038 * x_2039);
  let x_2041 : f32 = u_xlat65;
  let x_2043 : vec4<f32> = u_xlat7;
  let x_2045 : vec3<f32> = (vec3<f32>(x_2041, x_2041, x_2041) * vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
  let x_2046 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2045.x, x_2045.y, x_2046.z, x_2045.z);
  let x_2048 : vec3<f32> = u_xlat2;
  let x_2050 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2052 : vec3<f32> = (x_2048 + vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
  let x_2053 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2052.x, x_2052.y, x_2052.z, x_2053.w);
  let x_2055 : vec4<f32> = u_xlat7;
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2055.x, x_2055.y, x_2055.z), vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
  let x_2060 : f32 = u_xlat65;
  u_xlat65 = max(x_2060, 1.17549435e-37f);
  let x_2063 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_2063);
  let x_2065 : f32 = u_xlat65;
  let x_2067 : vec4<f32> = u_xlat7;
  let x_2069 : vec3<f32> = (vec3<f32>(x_2065, x_2065, x_2065) * vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2070 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
  let x_2072 : vec3<f32> = u_xlat3;
  let x_2073 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(x_2072, vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
  let x_2076 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2076, 0.0f, 1.0f);
  let x_2079 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2081 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2079.x, x_2079.y, x_2079.z), vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2084, 0.0f, 1.0f);
  let x_2086 : f32 = u_xlat65;
  let x_2087 : f32 = u_xlat65;
  u_xlat65 = (x_2086 * x_2087);
  let x_2089 : f32 = u_xlat65;
  let x_2091 : f32 = u_xlat46.x;
  u_xlat65 = ((x_2089 * x_2091) + 1.000010014f);
  let x_2095 : f32 = u_xlat66;
  let x_2096 : f32 = u_xlat66;
  u_xlat66 = (x_2095 * x_2096);
  let x_2098 : f32 = u_xlat65;
  let x_2099 : f32 = u_xlat65;
  u_xlat65 = (x_2098 * x_2099);
  let x_2101 : f32 = u_xlat66;
  u_xlat66 = max(x_2101, 0.100000001f);
  let x_2104 : f32 = u_xlat65;
  let x_2105 : f32 = u_xlat66;
  u_xlat65 = (x_2104 * x_2105);
  let x_2107 : f32 = u_xlat27;
  let x_2108 : f32 = u_xlat65;
  u_xlat65 = (x_2107 * x_2108);
  let x_2110 : f32 = u_xlat68;
  let x_2111 : f32 = u_xlat65;
  u_xlat65 = (x_2110 / x_2111);
  let x_2113 : vec4<f32> = u_xlat0;
  let x_2115 : f32 = u_xlat65;
  let x_2118 : vec3<f32> = u_xlat22;
  let x_2119 : vec3<f32> = ((vec3<f32>(x_2113.x, x_2113.y, x_2113.z) * vec3<f32>(x_2115, x_2115, x_2115)) + x_2118);
  let x_2120 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
  let x_2122 : vec4<f32> = u_xlat4;
  let x_2124 : vec4<f32> = u_xlat7;
  let x_2126 : vec3<f32> = (vec3<f32>(x_2122.x, x_2122.y, x_2122.w) * vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2126.x, x_2126.y, x_2127.z, x_2126.z);
  let x_2130 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2132 : f32 = x_95.unity_LightData.y;
  u_xlat65 = min(x_2130, x_2132);
  let x_2135 : f32 = u_xlat65;
  u_xlatu65 = bitcast<u32>(i32(x_2135));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2147 : u32 = u_xlatu_loop_1;
    let x_2148 : u32 = u_xlatu65;
    if ((x_2147 < x_2148)) {
    } else {
      break;
    }
    let x_2151 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2151 >> 2u);
    let x_2154 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2154 & 3u));
    let x_2157 : u32 = u_xlatu69;
    let x_2160 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_2157)];
    let x_2170 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2175 : vec4<u32> = indexable[x_2170];
    u_xlat69 = dot(x_2160, bitcast<vec4<f32>>(x_2175));
    let x_2179 : f32 = u_xlat69;
    u_xlati69 = i32(x_2179);
    let x_2181 : vec3<f32> = vs_TEXCOORD1;
    let x_2193 : i32 = u_xlati69;
    let x_2195 : vec4<f32> = x_2192.x_AdditionalLightsPosition[x_2193];
    let x_2198 : i32 = u_xlati69;
    let x_2200 : vec4<f32> = x_2192.x_AdditionalLightsPosition[x_2198];
    let x_2202 : vec3<f32> = ((-(x_2181) * vec3<f32>(x_2195.w, x_2195.w, x_2195.w)) + vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
    let x_2203 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
    let x_2205 : vec4<f32> = u_xlat8;
    let x_2207 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2205.x, x_2205.y, x_2205.z), vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
    let x_2210 : f32 = u_xlat70;
    u_xlat70 = max(x_2210, 6.10351562e-05f);
    let x_2214 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2214);
    let x_2216 : f32 = u_xlat71;
    let x_2218 : vec4<f32> = u_xlat8;
    let x_2220 : vec3<f32> = (vec3<f32>(x_2216, x_2216, x_2216) * vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
    let x_2221 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
    let x_2223 : f32 = u_xlat70;
    u_xlat72 = (1.0f / x_2223);
    let x_2225 : f32 = u_xlat70;
    let x_2226 : i32 = u_xlati69;
    let x_2228 : f32 = x_2192.x_AdditionalLightsAttenuation[x_2226].x;
    u_xlat70 = (x_2225 * x_2228);
    let x_2230 : f32 = u_xlat70;
    let x_2232 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2230) * x_2232) + 1.0f);
    let x_2235 : f32 = u_xlat70;
    u_xlat70 = max(x_2235, 0.0f);
    let x_2237 : f32 = u_xlat70;
    let x_2238 : f32 = u_xlat70;
    u_xlat70 = (x_2237 * x_2238);
    let x_2240 : f32 = u_xlat70;
    let x_2241 : f32 = u_xlat72;
    u_xlat70 = (x_2240 * x_2241);
    let x_2243 : i32 = u_xlati69;
    let x_2245 : vec4<f32> = x_2192.x_AdditionalLightsSpotDir[x_2243];
    let x_2247 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2245.x, x_2245.y, x_2245.z), vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
    let x_2250 : f32 = u_xlat72;
    let x_2251 : i32 = u_xlati69;
    let x_2253 : f32 = x_2192.x_AdditionalLightsAttenuation[x_2251].z;
    let x_2255 : i32 = u_xlati69;
    let x_2257 : f32 = x_2192.x_AdditionalLightsAttenuation[x_2255].w;
    u_xlat72 = ((x_2250 * x_2253) + x_2257);
    let x_2259 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2259, 0.0f, 1.0f);
    let x_2261 : f32 = u_xlat72;
    let x_2262 : f32 = u_xlat72;
    u_xlat72 = (x_2261 * x_2262);
    let x_2264 : f32 = u_xlat70;
    let x_2265 : f32 = u_xlat72;
    u_xlat70 = (x_2264 * x_2265);
    let x_2267 : f32 = u_xlat48;
    let x_2269 : i32 = u_xlati69;
    let x_2271 : vec4<f32> = x_2192.x_AdditionalLightsColor[x_2269];
    let x_2273 : vec3<f32> = (vec3<f32>(x_2267, x_2267, x_2267) * vec3<f32>(x_2271.x, x_2271.y, x_2271.z));
    let x_2274 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
    let x_2276 : vec3<f32> = u_xlat3;
    let x_2277 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(x_2276, vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
    let x_2280 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2280, 0.0f, 1.0f);
    let x_2282 : f32 = u_xlat69;
    let x_2283 : f32 = u_xlat70;
    u_xlat69 = (x_2282 * x_2283);
    let x_2285 : f32 = u_xlat69;
    let x_2287 : vec4<f32> = u_xlat10;
    let x_2289 : vec3<f32> = (vec3<f32>(x_2285, x_2285, x_2285) * vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
    let x_2290 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
    let x_2292 : vec4<f32> = u_xlat8;
    let x_2294 : f32 = u_xlat71;
    let x_2297 : vec3<f32> = u_xlat2;
    let x_2298 : vec3<f32> = ((vec3<f32>(x_2292.x, x_2292.y, x_2292.z) * vec3<f32>(x_2294, x_2294, x_2294)) + x_2297);
    let x_2299 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
    let x_2301 : vec4<f32> = u_xlat8;
    let x_2303 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2301.x, x_2301.y, x_2301.z), vec3<f32>(x_2303.x, x_2303.y, x_2303.z));
    let x_2306 : f32 = u_xlat69;
    u_xlat69 = max(x_2306, 1.17549435e-37f);
    let x_2308 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_2308);
    let x_2310 : f32 = u_xlat69;
    let x_2312 : vec4<f32> = u_xlat8;
    let x_2314 : vec3<f32> = (vec3<f32>(x_2310, x_2310, x_2310) * vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
    let x_2315 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
    let x_2317 : vec3<f32> = u_xlat3;
    let x_2318 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(x_2317, vec3<f32>(x_2318.x, x_2318.y, x_2318.z));
    let x_2321 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2321, 0.0f, 1.0f);
    let x_2323 : vec4<f32> = u_xlat9;
    let x_2325 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2323.x, x_2323.y, x_2323.z), vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
    let x_2328 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2328, 0.0f, 1.0f);
    let x_2330 : f32 = u_xlat69;
    let x_2331 : f32 = u_xlat69;
    u_xlat69 = (x_2330 * x_2331);
    let x_2333 : f32 = u_xlat69;
    let x_2335 : f32 = u_xlat46.x;
    u_xlat69 = ((x_2333 * x_2335) + 1.000010014f);
    let x_2338 : f32 = u_xlat70;
    let x_2339 : f32 = u_xlat70;
    u_xlat70 = (x_2338 * x_2339);
    let x_2341 : f32 = u_xlat69;
    let x_2342 : f32 = u_xlat69;
    u_xlat69 = (x_2341 * x_2342);
    let x_2344 : f32 = u_xlat70;
    u_xlat70 = max(x_2344, 0.100000001f);
    let x_2346 : f32 = u_xlat69;
    let x_2347 : f32 = u_xlat70;
    u_xlat69 = (x_2346 * x_2347);
    let x_2349 : f32 = u_xlat27;
    let x_2350 : f32 = u_xlat69;
    u_xlat69 = (x_2349 * x_2350);
    let x_2352 : f32 = u_xlat68;
    let x_2353 : f32 = u_xlat69;
    u_xlat69 = (x_2352 / x_2353);
    let x_2355 : vec4<f32> = u_xlat0;
    let x_2357 : f32 = u_xlat69;
    let x_2360 : vec3<f32> = u_xlat22;
    let x_2361 : vec3<f32> = ((vec3<f32>(x_2355.x, x_2355.y, x_2355.z) * vec3<f32>(x_2357, x_2357, x_2357)) + x_2360);
    let x_2362 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
    let x_2364 : vec4<f32> = u_xlat8;
    let x_2366 : vec4<f32> = u_xlat10;
    let x_2369 : vec4<f32> = u_xlat7;
    let x_2371 : vec3<f32> = ((vec3<f32>(x_2364.x, x_2364.y, x_2364.z) * vec3<f32>(x_2366.x, x_2366.y, x_2366.z)) + vec3<f32>(x_2369.x, x_2369.y, x_2369.z));
    let x_2372 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2372.w);

    continuing {
      let x_2374 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2374 + bitcast<u32>(1i));
    }
  }
  let x_2376 : vec4<f32> = u_xlat5;
  let x_2378 : vec3<f32> = u_xlat6;
  let x_2381 : vec4<f32> = u_xlat4;
  let x_2383 : vec3<f32> = ((vec3<f32>(x_2376.x, x_2376.y, x_2376.z) * vec3<f32>(x_2378.x, x_2378.x, x_2378.x)) + vec3<f32>(x_2381.x, x_2381.y, x_2381.w));
  let x_2384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
  let x_2386 : vec4<f32> = u_xlat7;
  let x_2388 : vec4<f32> = u_xlat0;
  let x_2390 : vec3<f32> = (vec3<f32>(x_2386.x, x_2386.y, x_2386.z) + vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
  let x_2391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
  let x_2393 : f32 = u_xlat63;
  let x_2394 : f32 = u_xlat63;
  u_xlat63 = (x_2393 * -(x_2394));
  let x_2397 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2397);
  let x_2399 : vec4<f32> = u_xlat0;
  let x_2403 : vec4<f32> = x_44.unity_FogColor;
  let x_2406 : vec3<f32> = (vec3<f32>(x_2399.x, x_2399.y, x_2399.z) + -(vec3<f32>(x_2403.x, x_2403.y, x_2403.z)));
  let x_2407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2406.x, x_2406.y, x_2406.z, x_2407.w);
  let x_2411 : f32 = u_xlat63;
  let x_2413 : vec4<f32> = u_xlat0;
  let x_2417 : vec4<f32> = x_44.unity_FogColor;
  let x_2419 : vec3<f32> = ((vec3<f32>(x_2411, x_2411, x_2411) * vec3<f32>(x_2413.x, x_2413.y, x_2413.z)) + vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2420 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2419.x, x_2419.y, x_2419.z, x_2420.w);
  let x_2425 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2425 == 1.0f);
  let x_2427 : bool = u_xlatb0;
  if (x_2427) {
    let x_2432 : f32 = u_xlat1.x;
    x_2428 = x_2432;
  } else {
    x_2428 = 1.0f;
  }
  let x_2434 : f32 = x_2428;
  SV_Target0.w = x_2434;
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

