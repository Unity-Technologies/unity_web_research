struct VGlobals {
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
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

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_37 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_180 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_MainTex_ST;
  let x_26 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_31 : vec2<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_37.unity_LightmapST;
  let x_44 : vec4<f32> = x_37.unity_LightmapST;
  vs_TEXCOORD1 = ((x_31 * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_51 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_51;
  let x_57 : vec3<f32> = in_NORMAL0;
  let x_61 : vec4<f32> = x_37.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_57, vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_67 : vec3<f32> = in_NORMAL0;
  let x_69 : vec4<f32> = x_37.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_67, vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_74 : vec3<f32> = in_NORMAL0;
  let x_77 : vec4<f32> = x_37.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_74, vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : f32 = u_xlat6;
  u_xlat6 = max(x_87, 1.17549435e-37f);
  let x_90 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_90);
  let x_92 : f32 = u_xlat6;
  let x_94 : vec4<f32> = u_xlat0;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_99 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat6 = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat6;
  u_xlat6 = clamp(x_105, 0.0f, 1.0f);
  let x_111 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = vec3<f32>(x_111.x, x_111.y, x_111.z);
  let x_114 : vec4<f32> = x_17.x_MainLightColor;
  let x_118 : vec4<f32> = x_37.unity_LightData;
  let x_120 : vec3<f32> = (vec3<f32>(x_114.x, x_114.y, x_114.z) * vec3<f32>(x_118.z, x_118.z, x_118.z));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : f32 = u_xlat6;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = (vec3<f32>(x_124, x_124, x_124) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  vs_TEXCOORD3.w = 0.0f;
  let x_135 : vec4<f32> = in_POSITION0;
  let x_138 : vec4<f32> = x_37.unity_ObjectToWorld[1i];
  let x_140 : vec3<f32> = (vec3<f32>(x_135.y, x_135.y, x_135.y) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_144 : vec4<f32> = x_37.unity_ObjectToWorld[0i];
  let x_146 : vec4<f32> = in_POSITION0;
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec3<f32> = ((vec3<f32>(x_144.x, x_144.y, x_144.z) * vec3<f32>(x_146.x, x_146.x, x_146.x)) + vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = x_37.unity_ObjectToWorld[2i];
  let x_157 : vec4<f32> = in_POSITION0;
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  let x_170 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = x_180.x_MainLightWorldToShadow[0i][1i];
  let x_184 : vec3<f32> = (vec3<f32>(x_174.y, x_174.y, x_174.y) * vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : vec4<f32> = x_180.x_MainLightWorldToShadow[0i][0i];
  let x_190 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = u_xlat1;
  let x_195 : vec3<f32> = ((vec3<f32>(x_188.x, x_188.y, x_188.z) * vec3<f32>(x_190.x, x_190.x, x_190.x)) + vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec4<f32> = x_180.x_MainLightWorldToShadow[0i][2i];
  let x_201 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.z, x_201.z, x_201.z)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_210 : vec4<f32> = u_xlat1;
  let x_213 : vec4<f32> = x_180.x_MainLightWorldToShadow[0i][3i];
  let x_215 : vec3<f32> = (vec3<f32>(x_210.x, x_210.y, x_210.z) + vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  vs_TEXCOORD4.w = 0.0f;
  let x_219 : vec4<f32> = u_xlat0;
  let x_222 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_219.y, x_219.y, x_219.y, x_219.y) * x_222);
  let x_225 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_226 : vec4<f32> = u_xlat0;
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_225 * vec4<f32>(x_226.x, x_226.x, x_226.x, x_226.x)) + x_229);
  let x_232 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_233 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_232 * vec4<f32>(x_233.z, x_233.z, x_233.z, x_233.z)) + x_236);
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_242 + x_244);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_TEXCOORD1_param : vec2<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD3, vs_TEXCOORD4, gl_Position);
}

