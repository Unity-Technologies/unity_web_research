struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat4 : f32;
  var u_xlat2 : f32;
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
  let x_98 : f32 = u_xlat0.z;
  vs_TEXCOORD4 = x_98;
  let x_101 : vec4<f32> = u_xlat0;
  let x_102 : vec2<f32> = vec2<f32>(x_101.z, x_101.w);
  let x_103 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_103.x, x_103.y, x_102.x, x_102.y);
  let x_108 : vec4<f32> = in_TEXCOORD0;
  let x_112 : vec4<f32> = x_17.x_MainTex_ST;
  let x_116 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112.x, x_112.y)) + vec2<f32>(x_116.z, x_116.w));
  let x_121 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_121, vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_128 : vec3<f32> = in_NORMAL0;
  let x_130 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_128, vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_134 : vec3<f32> = in_NORMAL0;
  let x_136 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_134, vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_141 : vec4<f32> = u_xlat1;
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat4 = dot(vec3<f32>(x_141.x, x_141.y, x_141.z), vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : f32 = u_xlat4;
  u_xlat4 = inverseSqrt(x_146);
  let x_149 : f32 = u_xlat4;
  let x_151 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = (vec3<f32>(x_149, x_149, x_149) * vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_156 : f32 = u_xlat0.y;
  let x_159 : f32 = x_17.x_ProjectionParams.x;
  u_xlat2 = (x_156 * x_159);
  let x_161 : vec4<f32> = u_xlat0;
  let x_165 : vec2<f32> = (vec2<f32>(x_161.x, x_161.w) * vec2<f32>(0.5f, 0.5f));
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_165.x, x_166.y, x_165.y, x_166.w);
  let x_168 : f32 = u_xlat2;
  u_xlat0.w = (x_168 * 0.5f);
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec2<f32> = (vec2<f32>(x_172.z, x_172.z) + vec2<f32>(x_174.x, x_174.w));
  let x_177 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD4_1 : f32,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
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
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1);
}

