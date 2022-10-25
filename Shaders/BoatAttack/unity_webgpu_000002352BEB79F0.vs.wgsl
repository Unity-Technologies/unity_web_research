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

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

var<private> vs_TEXCOORD5 : f32;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_44 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_206 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(7) var<uniform> x_261 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_BaseMap_ST;
  let x_25 : vec4<f32> = x_16.x_BaseMap_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_21.x, x_21.y)) + vec2<f32>(x_25.z, x_25.w));
  vs_TEXCOORD5 = 0.0f;
  let x_36 : vec4<f32> = in_POSITION0;
  let x_47 : vec4<f32> = x_44.unity_ObjectToWorld[1i];
  let x_49 : vec3<f32> = (vec3<f32>(x_36.y, x_36.y, x_36.y) * vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = x_44.unity_ObjectToWorld[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat0;
  let x_60 : vec3<f32> = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * vec3<f32>(x_55.x, x_55.x, x_55.x)) + vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_65 : vec4<f32> = x_44.unity_ObjectToWorld[2i];
  let x_67 : vec4<f32> = in_POSITION0;
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = ((vec3<f32>(x_65.x, x_65.y, x_65.z) * vec3<f32>(x_67.z, x_67.z, x_67.z)) + vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = x_44.unity_ObjectToWorld[3i];
  let x_81 : vec3<f32> = (vec3<f32>(x_75.x, x_75.y, x_75.z) + vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_86 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_86.x, x_86.y, x_86.z);
  let x_91 : vec3<f32> = in_NORMAL0;
  let x_93 : vec4<f32> = x_44.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_91, vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_99 : vec3<f32> = in_NORMAL0;
  let x_101 : vec4<f32> = x_44.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_99, vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_108 : vec4<f32> = x_44.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_106, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_113 : vec4<f32> = u_xlat1;
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : f32 = u_xlat6;
  u_xlat6 = max(x_118, 1.17549435e-37f);
  let x_121 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_121);
  let x_124 : f32 = u_xlat6;
  let x_126 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = (vec3<f32>(x_124, x_124, x_124) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : vec4<f32> = in_TANGENT0;
  let x_133 : vec4<f32> = x_44.unity_ObjectToWorld[1i];
  let x_135 : vec3<f32> = (vec3<f32>(x_130.y, x_130.y, x_130.y) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = x_44.unity_ObjectToWorld[0i];
  let x_141 : vec4<f32> = in_TANGENT0;
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec4<f32> = x_44.unity_ObjectToWorld[2i];
  let x_152 : vec4<f32> = in_TANGENT0;
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.z, x_152.z, x_152.z)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_160 : vec4<f32> = u_xlat1;
  let x_162 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_160.x, x_160.y, x_160.z), vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : f32 = u_xlat6;
  u_xlat6 = max(x_165, 1.17549435e-37f);
  let x_167 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_167);
  let x_171 : f32 = u_xlat6;
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec3<f32> = (vec3<f32>(x_171, x_171, x_171) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_184 : f32 = x_44.unity_WorldTransformParams.w;
  u_xlatb6 = (x_184 >= 0.0f);
  let x_186 : bool = u_xlatb6;
  u_xlat6 = select(-1.0f, 1.0f, x_186);
  let x_190 : f32 = u_xlat6;
  let x_193 : f32 = in_TANGENT0.w;
  vs_TEXCOORD3.w = (x_190 * x_193);
  vs_TEXCOORD4 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_200 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = x_206.x_MainLightWorldToShadow[0i][1i];
  let x_210 : vec3<f32> = (vec3<f32>(x_200.y, x_200.y, x_200.y) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : vec4<f32> = x_206.x_MainLightWorldToShadow[0i][0i];
  let x_216 : vec4<f32> = u_xlat0;
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : vec4<f32> = x_206.x_MainLightWorldToShadow[0i][2i];
  let x_227 : vec4<f32> = u_xlat0;
  let x_230 : vec4<f32> = u_xlat1;
  let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.z, x_227.z, x_227.z)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = x_206.x_MainLightWorldToShadow[0i][3i];
  let x_241 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) + vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  vs_TEXCOORD6.w = 0.0f;
  let x_247 : vec2<f32> = in_TEXCOORD1;
  let x_250 : vec4<f32> = x_44.unity_LightmapST;
  let x_254 : vec4<f32> = x_44.unity_LightmapST;
  vs_TEXCOORD8 = ((x_247 * vec2<f32>(x_250.x, x_250.y)) + vec2<f32>(x_254.z, x_254.w));
  let x_257 : vec4<f32> = u_xlat0;
  let x_263 : vec4<f32> = x_261.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_257.y, x_257.y, x_257.y, x_257.y) * x_263);
  let x_266 : vec4<f32> = x_261.unity_MatrixVP[0i];
  let x_267 : vec4<f32> = u_xlat0;
  let x_270 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_266 * vec4<f32>(x_267.x, x_267.x, x_267.x, x_267.x)) + x_270);
  let x_273 : vec4<f32> = x_261.unity_MatrixVP[2i];
  let x_274 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_273 * vec4<f32>(x_274.z, x_274.z, x_274.z, x_274.z)) + x_277);
  let x_283 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = x_261.unity_MatrixVP[3i];
  gl_Position = (x_283 + x_285);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD8_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec2<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6, vs_TEXCOORD8, gl_Position);
}

