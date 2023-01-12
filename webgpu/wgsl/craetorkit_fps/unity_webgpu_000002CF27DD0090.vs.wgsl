struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_MetaVertexControl : vec4<u32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_35 : VGlobals;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat0 : vec4<f32>;
  var x_58 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlat1 : vec4<f32>;
  var x_95 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = in_POSITION0.z;
  u_xlatb0 = (0.0f < x_18);
  let x_22 : bool = u_xlatb0;
  u_xlat0.z = select(0.0f, 0.0001f, x_22);
  let x_29 : vec4<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_35.unity_LightmapST;
  let x_44 : vec4<f32> = x_35.unity_LightmapST;
  let x_46 : vec2<f32> = ((vec2<f32>(x_29.x, x_29.y) * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_47.z, x_47.w);
  let x_54 : u32 = x_35.unity_MetaVertexControl.x;
  if ((x_54 != 0u)) {
    let x_61 : vec4<f32> = u_xlat0;
    x_58 = vec3<f32>(x_61.x, x_61.y, x_61.z);
  } else {
    let x_64 : vec4<f32> = in_POSITION0;
    x_58 = vec3<f32>(x_64.x, x_64.y, x_64.z);
  }
  let x_66 : vec3<f32> = x_58;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_71 : f32 = u_xlat0.z;
  u_xlatb12 = (0.0f < x_71);
  let x_74 : bool = u_xlatb12;
  u_xlat1.z = select(0.0f, 0.0001f, x_74);
  let x_78 : vec4<f32> = in_TEXCOORD2;
  let x_82 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_86 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_88 : vec2<f32> = ((vec2<f32>(x_78.x, x_78.y) * vec2<f32>(x_82.x, x_82.y)) + vec2<f32>(x_86.z, x_86.w));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_89.z, x_89.w);
  let x_93 : u32 = x_35.unity_MetaVertexControl.y;
  if ((x_93 != 0u)) {
    let x_98 : vec4<f32> = u_xlat1;
    x_95 = vec3<f32>(x_98.x, x_98.y, x_98.z);
  } else {
    let x_101 : vec4<f32> = u_xlat0;
    x_95 = vec3<f32>(x_101.x, x_101.y, x_101.z);
  }
  let x_103 : vec3<f32> = x_95;
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_106 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = x_35.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_106.y, x_106.y, x_106.y, x_106.y) * x_111);
  let x_115 : vec4<f32> = x_35.unity_MatrixVP[0i];
  let x_116 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_115 * vec4<f32>(x_116.x, x_116.x, x_116.x, x_116.x)) + x_119);
  let x_123 : vec4<f32> = x_35.unity_MatrixVP[2i];
  let x_124 : vec4<f32> = u_xlat0;
  let x_127 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_123 * vec4<f32>(x_124.z, x_124.z, x_124.z, x_124.z)) + x_127);
  let x_133 : vec4<f32> = u_xlat0;
  let x_135 : vec4<f32> = x_35.unity_MatrixVP[3i];
  gl_Position = (x_133 + x_135);
  let x_142 : vec4<f32> = in_TEXCOORD0;
  let x_146 : vec4<f32> = x_35.x_MainTex_ST;
  let x_150 : vec4<f32> = x_35.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_146.x, x_146.y)) + vec2<f32>(x_150.z, x_150.w));
  let x_155 : vec3<f32> = in_NORMAL0;
  let x_157 : vec4<f32> = x_35.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_155, vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_161 : vec3<f32> = in_NORMAL0;
  let x_163 : vec4<f32> = x_35.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_161, vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_167 : vec3<f32> = in_NORMAL0;
  let x_169 : vec4<f32> = x_35.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_167, vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat12;
  let x_183 : vec4<f32> = u_xlat0;
  let x_185 : vec3<f32> = (vec3<f32>(x_181, x_181, x_181) * vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_189 : vec4<f32> = in_TANGENT0;
  let x_192 : vec4<f32> = x_35.unity_ObjectToWorld[1i];
  let x_194 : vec3<f32> = (vec3<f32>(x_189.y, x_189.y, x_189.y) * vec3<f32>(x_192.y, x_192.z, x_192.x));
  let x_195 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_198 : vec4<f32> = x_35.unity_ObjectToWorld[0i];
  let x_200 : vec4<f32> = in_TANGENT0;
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = ((vec3<f32>(x_198.y, x_198.z, x_198.x) * vec3<f32>(x_200.x, x_200.x, x_200.x)) + vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_209 : vec4<f32> = x_35.unity_ObjectToWorld[2i];
  let x_211 : vec4<f32> = in_TANGENT0;
  let x_214 : vec4<f32> = u_xlat1;
  let x_216 : vec3<f32> = ((vec3<f32>(x_209.y, x_209.z, x_209.x) * vec3<f32>(x_211.z, x_211.z, x_211.z)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_224);
  let x_226 : f32 = u_xlat12;
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = (vec3<f32>(x_226, x_226, x_226) * vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : vec4<f32> = u_xlat1;
  let x_244 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_239.z, x_239.x, x_239.y) * vec3<f32>(x_241.y, x_241.z, x_241.x)) + -(x_244));
  let x_249 : f32 = in_TANGENT0.w;
  let x_252 : f32 = x_35.unity_WorldTransformParams.w;
  u_xlat12 = (x_249 * x_252);
  let x_254 : f32 = u_xlat12;
  let x_256 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_254, x_254, x_254) * x_256);
  let x_261 : f32 = u_xlat2.x;
  vs_TEXCOORD1.y = x_261;
  let x_265 : vec4<f32> = in_POSITION0;
  let x_268 : vec4<f32> = x_35.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_265.y, x_265.y, x_265.y) * vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_272 : vec4<f32> = x_35.unity_ObjectToWorld[0i];
  let x_274 : vec4<f32> = in_POSITION0;
  let x_277 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_274.x, x_274.x, x_274.x)) + x_277);
  let x_280 : vec4<f32> = x_35.unity_ObjectToWorld[2i];
  let x_282 : vec4<f32> = in_POSITION0;
  let x_285 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.z, x_282.z, x_282.z)) + x_285);
  let x_288 : vec4<f32> = x_35.unity_ObjectToWorld[3i];
  let x_290 : vec4<f32> = in_POSITION0;
  let x_293 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_288.x, x_288.y, x_288.z) * vec3<f32>(x_290.w, x_290.w, x_290.w)) + x_293);
  let x_296 : f32 = u_xlat3.x;
  vs_TEXCOORD1.w = x_296;
  let x_299 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_299;
  let x_302 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_302;
  let x_306 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_306;
  let x_310 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_310;
  let x_313 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_313;
  let x_316 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_316;
  let x_319 : f32 = u_xlat3.y;
  vs_TEXCOORD2.w = x_319;
  let x_322 : f32 = u_xlat3.z;
  vs_TEXCOORD3.w = x_322;
  let x_325 : f32 = u_xlat2.y;
  vs_TEXCOORD2.y = x_325;
  let x_328 : f32 = u_xlat2.z;
  vs_TEXCOORD3.y = x_328;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(5) in_TEXCOORD2_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

