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

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
  x_ShadowBias : vec4<f32>,
  x_LightDirection : vec3<f32>,
}

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_66 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec3<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_70 : f32 = x_66.x_LightDirection.x;
  let x_73 : f32 = x_66.x_LightDirection.y;
  let x_75 : f32 = x_66.x_LightDirection.z;
  let x_78 : vec4<f32> = x_66.x_ShadowBias;
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_70, x_73, x_75) * vec3<f32>(x_78.x, x_78.x, x_78.x)) + vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec3<f32> = in_NORMAL0;
  let x_90 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_88, vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_95 : vec3<f32> = in_NORMAL0;
  let x_97 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_95, vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_101 : vec3<f32> = in_NORMAL0;
  let x_103 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_101, vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_108.x, x_108.y, x_108.z), vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : f32 = u_xlat6;
  u_xlat6 = max(x_113, 1.17549435e-37f);
  let x_116 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_116);
  let x_118 : f32 = u_xlat6;
  let x_120 : vec4<f32> = u_xlat1;
  let x_122 : vec3<f32> = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_126 : f32 = x_66.x_LightDirection.x;
  let x_128 : f32 = x_66.x_LightDirection.y;
  let x_130 : f32 = x_66.x_LightDirection.z;
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_126, x_128, x_130), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : f32 = u_xlat6;
  u_xlat6 = clamp(x_135, 0.0f, 1.0f);
  let x_139 : f32 = u_xlat6;
  u_xlat6 = (-(x_139) + 1.0f);
  let x_142 : f32 = u_xlat6;
  let x_144 : f32 = x_66.x_ShadowBias.y;
  u_xlat6 = (x_142 * x_144);
  let x_146 : vec4<f32> = u_xlat1;
  let x_148 : f32 = u_xlat6;
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148, x_148, x_148)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_158 : vec4<f32> = u_xlat1;
  vs_INTERP0 = vec3<f32>(x_158.x, x_158.y, x_158.z);
  let x_160 : vec4<f32> = u_xlat0;
  let x_163 : vec4<f32> = x_66.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_160.y, x_160.y, x_160.y, x_160.y) * x_163);
  let x_166 : vec4<f32> = x_66.unity_MatrixVP[0i];
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_166 * vec4<f32>(x_167.x, x_167.x, x_167.x, x_167.x)) + x_170);
  let x_173 : vec4<f32> = x_66.unity_MatrixVP[2i];
  let x_174 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_173 * vec4<f32>(x_174.z, x_174.z, x_174.z, x_174.z)) + x_177);
  let x_179 : vec4<f32> = u_xlat0;
  let x_181 : vec4<f32> = x_66.unity_MatrixVP[3i];
  u_xlat0 = (x_179 + x_181);
  let x_188 : f32 = u_xlat0.z;
  gl_Position.z = min(x_188, 1.0f);
  let x_192 : vec4<f32> = u_xlat0;
  let x_193 : vec3<f32> = vec3<f32>(x_192.x, x_192.y, x_192.w);
  let x_196 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_193.x, x_193.y, x_196.z, x_193.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position);
}

