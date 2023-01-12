struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_50 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_52.w, x_52.w, x_52.w)) + vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * x_61);
  let x_64 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_65 : vec4<f32> = u_xlat1;
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_71 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_72 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_71 * vec4<f32>(x_72.z, x_72.z, x_72.z, x_72.z)) + x_75);
  let x_78 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_78 * vec4<f32>(x_79.w, x_79.w, x_79.w, x_79.w)) + x_82);
  let x_90 : vec4<f32> = u_xlat0;
  gl_Position = x_90;
  let x_96 : f32 = u_xlat0.z;
  let x_99 : f32 = x_17.x_ProjectionParams.y;
  u_xlat0.x = (x_96 / x_99);
  let x_104 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_104) + 1.0f);
  let x_110 : f32 = u_xlat0.x;
  let x_112 : f32 = x_17.x_ProjectionParams.z;
  u_xlat0.x = (x_110 * x_112);
  let x_116 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_116, 0.0f);
  let x_121 : f32 = u_xlat0.x;
  let x_124 : f32 = x_17.unity_FogParams.x;
  u_xlat0.x = (x_121 * x_124);
  let x_128 : f32 = u_xlat0.x;
  let x_130 : f32 = u_xlat0.x;
  u_xlat0.x = (x_128 * -(x_130));
  let x_137 : f32 = u_xlat0.x;
  vs_TEXCOORD4 = exp2(x_137);
  let x_143 : vec4<f32> = in_TEXCOORD0;
  let x_147 : vec4<f32> = x_17.x_MainTex_ST;
  let x_151 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_143.x, x_143.y) * vec2<f32>(x_147.x, x_147.y)) + vec2<f32>(x_151.z, x_151.w));
  let x_156 : vec3<f32> = in_NORMAL0;
  let x_158 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_156, vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_162 : vec3<f32> = in_NORMAL0;
  let x_164 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_162, vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec3<f32> = in_NORMAL0;
  let x_170 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_168, vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_180);
  let x_183 : f32 = u_xlat6;
  let x_185 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = (vec3<f32>(x_183, x_183, x_183) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD4_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1);
}

