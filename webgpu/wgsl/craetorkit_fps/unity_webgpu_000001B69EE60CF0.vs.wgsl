struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
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

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_51 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_53.w, x_53.w, x_53.w)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat0;
  gl_Position = x_92;
  let x_100 : f32 = u_xlat0.z;
  vs_TEXCOORD4 = x_100;
  let x_103 : vec4<f32> = u_xlat0;
  let x_104 : vec2<f32> = vec2<f32>(x_103.z, x_103.w);
  let x_105 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_105.x, x_105.y, x_104.x, x_104.y);
  let x_110 : vec4<f32> = in_TEXCOORD0;
  let x_114 : vec4<f32> = x_17.x_MainTex_ST;
  let x_118 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_114.x, x_114.y)) + vec2<f32>(x_118.z, x_118.w));
  let x_123 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_123, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : vec3<f32> = in_NORMAL0;
  let x_133 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_131, vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_137 : vec3<f32> = in_NORMAL0;
  let x_139 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_137, vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_144.x, x_144.y, x_144.z), vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_149);
  let x_151 : f32 = u_xlat6;
  let x_153 : vec4<f32> = u_xlat1;
  let x_155 : vec3<f32> = (vec3<f32>(x_151, x_151, x_151) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec3<f32>(x_159.x, x_159.y, x_159.z);
  let x_162 : f32 = u_xlat1.y;
  let x_164 : f32 = u_xlat1.y;
  u_xlat6 = (x_162 * x_164);
  let x_167 : f32 = u_xlat1.x;
  let x_169 : f32 = u_xlat1.x;
  let x_171 : f32 = u_xlat6;
  u_xlat6 = ((x_167 * x_169) + -(x_171));
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_174.y, x_174.z, x_174.z, x_174.x) * vec4<f32>(x_176.x, x_176.y, x_176.z, x_176.z));
  let x_182 : vec4<f32> = x_17.unity_SHBr;
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_182, x_183);
  let x_187 : vec4<f32> = x_17.unity_SHBg;
  let x_188 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_187, x_188);
  let x_192 : vec4<f32> = x_17.unity_SHBb;
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_192, x_193);
  let x_199 : vec4<f32> = x_17.unity_SHC;
  let x_201 : f32 = u_xlat6;
  let x_204 : vec3<f32> = u_xlat2;
  vs_TEXCOORD3 = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201, x_201, x_201)) + x_204);
  let x_208 : f32 = u_xlat0.y;
  let x_211 : f32 = x_17.x_ProjectionParams.x;
  u_xlat3 = (x_208 * x_211);
  let x_213 : vec4<f32> = u_xlat0;
  let x_217 : vec2<f32> = (vec2<f32>(x_213.x, x_213.w) * vec2<f32>(0.5f, 0.5f));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_218.y, x_217.y, x_218.w);
  let x_220 : f32 = u_xlat3;
  u_xlat0.w = (x_220 * 0.5f);
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = u_xlat0;
  let x_228 : vec2<f32> = (vec2<f32>(x_224.z, x_224.z) + vec2<f32>(x_226.x, x_226.w));
  let x_229 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_228.x, x_228.y, x_229.z, x_229.w);
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
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD3);
}

