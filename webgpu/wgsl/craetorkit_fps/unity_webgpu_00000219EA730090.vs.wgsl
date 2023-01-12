struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_48 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_50 : vec4<f32> = in_POSITION0;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_50.w, x_50.w, x_50.w)) + vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat1;
  gl_Position = x_92;
  let x_99 : vec4<f32> = in_TEXCOORD0;
  let x_103 : vec4<f32> = x_17.x_MainTex_ST;
  let x_107 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(x_103.x, x_103.y)) + vec2<f32>(x_107.z, x_107.w));
  let x_114 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_114;
  let x_120 : vec3<f32> = in_NORMAL0;
  let x_122 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_120, vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_126 : vec3<f32> = in_NORMAL0;
  let x_128 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_126, vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_133 : vec3<f32> = in_NORMAL0;
  let x_135 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_133, vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = u_xlat2;
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_146 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_146);
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = (vec3<f32>(x_149.x, x_149.x, x_149.x) * vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_159 : vec4<f32> = in_TANGENT0;
  let x_162 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_159.y, x_159.y, x_159.y) * vec3<f32>(x_162.y, x_162.z, x_162.x));
  let x_166 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_168 : vec4<f32> = in_TANGENT0;
  let x_171 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_166.y, x_166.z, x_166.x) * vec3<f32>(x_168.x, x_168.x, x_168.x)) + x_171);
  let x_174 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_176 : vec4<f32> = in_TANGENT0;
  let x_179 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_174.y, x_174.z, x_174.x) * vec3<f32>(x_176.z, x_176.z, x_176.z)) + x_179);
  let x_181 : vec3<f32> = u_xlat3;
  let x_182 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_181, x_182);
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_186);
  let x_189 : vec4<f32> = u_xlat0;
  let x_191 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_189.x, x_189.x, x_189.x) * x_191);
  let x_194 : vec4<f32> = u_xlat2;
  let x_196 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_194.x, x_194.y, x_194.z) * x_196);
  let x_198 : vec4<f32> = u_xlat2;
  let x_200 : vec3<f32> = u_xlat3;
  let x_203 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_198.z, x_198.x, x_198.y) * vec3<f32>(x_200.y, x_200.z, x_200.x)) + -(x_203));
  let x_208 : f32 = in_TANGENT0.w;
  let x_211 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_208 * x_211);
  let x_214 : vec4<f32> = u_xlat0;
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_214.x, x_214.x, x_214.x) * x_216);
  let x_219 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_219;
  let x_222 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_222;
  let x_225 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_225;
  let x_229 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_229;
  let x_233 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_233;
  let x_236 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_236;
  let x_239 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_239;
  let x_242 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_242;
  let x_245 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_245;
  let x_248 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_248;
  let x_251 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_251;
  let x_254 : f32 = u_xlat1.y;
  let x_256 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_254 * x_256);
  let x_260 : f32 = u_xlat0.x;
  u_xlat0.w = (x_260 * 0.5f);
  let x_264 : vec4<f32> = u_xlat1;
  let x_267 : vec2<f32> = (vec2<f32>(x_264.x, x_264.w) * vec2<f32>(0.5f, 0.5f));
  let x_268 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_267.x, x_268.y, x_267.y, x_268.w);
  let x_271 : vec4<f32> = u_xlat1;
  let x_272 : vec2<f32> = vec2<f32>(x_271.z, x_271.w);
  let x_273 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_273.x, x_273.y, x_272.x, x_272.y);
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec2<f32> = (vec2<f32>(x_275.z, x_275.z) + vec2<f32>(x_277.x, x_277.w));
  let x_280 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_279.x, x_279.y, x_280.z, x_280.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6);
}

