struct VGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_LightShadowBias : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> in_POSITION0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb9 : bool;
  var x_156 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_NORMAL0;
  let x_23 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_13, vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_30 : vec3<f32> = in_NORMAL0;
  let x_33 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_30, vec3<f32>(x_33.x, x_33.y, x_33.z));
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_41 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_38, vec3<f32>(x_41.x, x_41.y, x_41.z));
  let x_47 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_47.x, x_47.y, x_47.z), vec3<f32>(x_49.x, x_49.y, x_49.z));
  let x_52 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_52);
  let x_54 : f32 = u_xlat9;
  let x_56 : vec4<f32> = u_xlat0;
  let x_58 : vec3<f32> = (vec3<f32>(x_54, x_54, x_54) * vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_58.x, x_58.y, x_58.z, x_59.w);
  let x_64 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_64.y, x_64.y, x_64.y, x_64.y) * x_67);
  let x_70 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_71 : vec4<f32> = in_POSITION0;
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_78 : vec4<f32> = in_POSITION0;
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_85 : vec4<f32> = in_POSITION0;
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_91 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = x_17.x_WorldSpaceLightPos0;
  let x_99 : vec4<f32> = x_17.x_WorldSpaceLightPos0;
  let x_101 : vec3<f32> = ((-(vec3<f32>(x_91.x, x_91.y, x_91.z)) * vec3<f32>(x_95.w, x_95.w, x_95.w)) + vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat2;
  let x_106 : vec4<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_104.x, x_104.y, x_104.z), vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_109);
  let x_111 : f32 = u_xlat9;
  let x_113 : vec4<f32> = u_xlat2;
  let x_115 : vec3<f32> = (vec3<f32>(x_111, x_111, x_111) * vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_118.x, x_118.y, x_118.z), vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : f32 = u_xlat9;
  let x_125 : f32 = u_xlat9;
  u_xlat9 = ((-(x_123) * x_125) + 1.0f);
  let x_129 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_129);
  let x_131 : f32 = u_xlat9;
  let x_134 : f32 = x_17.unity_LightShadowBias.z;
  u_xlat9 = (x_131 * x_134);
  let x_136 : vec4<f32> = u_xlat0;
  let x_139 : f32 = u_xlat9;
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = ((-(vec3<f32>(x_136.x, x_136.y, x_136.z)) * vec3<f32>(x_139, x_139, x_139)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_151 : f32 = x_17.unity_LightShadowBias.z;
  u_xlatb9 = !((x_151 == 0.0f));
  let x_154 : bool = u_xlatb9;
  if (x_154) {
    let x_159 : vec4<f32> = u_xlat0;
    x_156 = vec3<f32>(x_159.x, x_159.y, x_159.z);
  } else {
    let x_162 : vec4<f32> = u_xlat1;
    x_156 = vec3<f32>(x_162.x, x_162.y, x_162.z);
  }
  let x_164 : vec3<f32> = x_156;
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_167 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_167.y, x_167.y, x_167.y, x_167.y) * x_171);
  let x_174 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_175 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_174 * vec4<f32>(x_175.x, x_175.x, x_175.x, x_175.x)) + x_178);
  let x_181 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_181 * vec4<f32>(x_182.z, x_182.z, x_182.z, x_182.z)) + x_185);
  let x_188 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_189 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_188 * vec4<f32>(x_189.w, x_189.w, x_189.w, x_189.w)) + x_192);
  let x_196 : f32 = u_xlat0.w;
  let x_198 : f32 = u_xlat0.z;
  u_xlat1.x = min(x_196, x_198);
  let x_202 : f32 = u_xlat0.z;
  let x_205 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_202) + x_205);
  let x_213 : f32 = x_17.unity_LightShadowBias.y;
  let x_215 : f32 = u_xlat1.x;
  let x_218 : f32 = u_xlat0.z;
  gl_Position.z = ((x_213 * x_215) + x_218);
  let x_222 : vec4<f32> = u_xlat0;
  let x_223 : vec3<f32> = vec3<f32>(x_222.x, x_222.y, x_222.w);
  let x_226 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_223.x, x_223.y, x_226.z, x_223.z);
  let x_233 : vec2<f32> = in_TEXCOORD0;
  let x_236 : vec4<f32> = x_17.x_MainTex_ST;
  let x_240 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD1 = ((x_233 * vec2<f32>(x_236.x, x_236.y)) + vec2<f32>(x_240.z, x_240.w));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1);
}

