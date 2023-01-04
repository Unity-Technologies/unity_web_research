struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(13) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
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
  let x_47 : vec4<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_50);
  let x_53 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_53 * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + x_57);
  let x_60 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat2;
  gl_Position = ((x_73 * vec4<f32>(x_74.w, x_74.w, x_74.w, x_74.w)) + x_77);
  let x_82 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_83 : vec4<f32> = in_POSITION0;
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat1 = ((x_82 * vec4<f32>(x_83.w, x_83.w, x_83.w, x_83.w)) + x_86);
  let x_92 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_94 : vec4<f32> = in_POSITION0;
  let x_97 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_92.x, x_92.y, x_92.z) * vec3<f32>(x_94.w, x_94.w, x_94.w)) + vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_101 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_107 : vec2<f32> = (vec2<f32>(x_101.y, x_101.y) * vec2<f32>(x_105.x, x_105.y));
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_108.w);
  let x_111 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_113 : vec4<f32> = u_xlat1;
  let x_116 : vec4<f32> = u_xlat0;
  let x_118 : vec2<f32> = ((vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_113.x, x_113.x)) + vec2<f32>(x_116.x, x_116.y));
  let x_119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_122 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_124 : vec4<f32> = u_xlat1;
  let x_127 : vec4<f32> = u_xlat0;
  let x_129 : vec2<f32> = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.z, x_124.z)) + vec2<f32>(x_127.x, x_127.y));
  let x_130 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_135 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_137 : vec4<f32> = u_xlat1;
  let x_140 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec2<f32>(x_135.x, x_135.y) * vec2<f32>(x_137.w, x_137.w)) + vec2<f32>(x_140.x, x_140.y));
  let x_146 : vec4<f32> = in_TEXCOORD0;
  let x_150 : vec4<f32> = x_17.x_MainTex_ST;
  let x_154 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_150.x, x_150.y)) + vec2<f32>(x_154.z, x_154.w));
  let x_159 : vec3<f32> = in_NORMAL0;
  let x_161 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_159, vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_166 : vec3<f32> = in_NORMAL0;
  let x_168 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_166, vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_173 : vec3<f32> = in_NORMAL0;
  let x_175 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_173, vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_181 : vec4<f32> = u_xlat0;
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_186);
  let x_188 : f32 = u_xlat9;
  let x_190 : vec4<f32> = u_xlat0;
  let x_192 : vec3<f32> = (vec3<f32>(x_188, x_188, x_188) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = in_TANGENT0;
  let x_199 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_201 : vec3<f32> = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_199.y, x_199.z, x_199.x));
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_207 : vec4<f32> = in_TANGENT0;
  let x_210 : vec4<f32> = u_xlat1;
  let x_212 : vec3<f32> = ((vec3<f32>(x_205.y, x_205.z, x_205.x) * vec3<f32>(x_207.x, x_207.x, x_207.x)) + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_218 : vec4<f32> = in_TANGENT0;
  let x_221 : vec4<f32> = u_xlat1;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.y, x_216.z, x_216.x) * vec3<f32>(x_218.z, x_218.z, x_218.z)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_226.x, x_226.y, x_226.z), vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_231);
  let x_233 : f32 = u_xlat9;
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat0;
  let x_249 : vec4<f32> = u_xlat1;
  let x_252 : vec4<f32> = u_xlat2;
  let x_255 : vec3<f32> = ((vec3<f32>(x_247.z, x_247.x, x_247.y) * vec3<f32>(x_249.y, x_249.z, x_249.x)) + -(vec3<f32>(x_252.x, x_252.y, x_252.z)));
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_261 : f32 = in_TANGENT0.w;
  let x_264 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat9 = (x_261 * x_264);
  let x_266 : f32 = u_xlat9;
  let x_268 : vec4<f32> = u_xlat2;
  let x_270 : vec3<f32> = (vec3<f32>(x_266, x_266, x_266) * vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_275 : f32 = u_xlat2.x;
  vs_TEXCOORD1.y = x_275;
  let x_279 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_279;
  let x_282 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_282;
  let x_286 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_286;
  let x_290 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_290;
  let x_293 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_293;
  let x_296 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_296;
  let x_299 : f32 = u_xlat2.y;
  vs_TEXCOORD2.y = x_299;
  let x_302 : f32 = u_xlat2.z;
  vs_TEXCOORD3.y = x_302;
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

