struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_95 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_68 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_68 * vec4<f32>(x_69.w, x_69.w, x_69.w, x_69.w)) + x_72);
  let x_80 : vec4<f32> = u_xlat0;
  gl_Position = x_80;
  let x_89 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_89 == 0.0f);
  let x_92 : bool = u_xlatb1;
  if (x_92) {
    let x_100 : vec2<f32> = in_TEXCOORD0;
    x_95 = x_100;
  } else {
    let x_103 : vec2<f32> = in_TEXCOORD1;
    x_95 = x_103;
  }
  let x_104 : vec2<f32> = x_95;
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_108 : vec4<f32> = u_xlat1;
  let x_112 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_116 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_118 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112.x, x_112.y)) + vec2<f32>(x_116.z, x_116.w));
  let x_119 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_119.x, x_119.y, x_118.x, x_118.y);
  let x_121 : vec2<f32> = in_TEXCOORD0;
  let x_124 : vec4<f32> = x_18.x_MainTex_ST;
  let x_128 : vec4<f32> = x_18.x_MainTex_ST;
  let x_130 : vec2<f32> = ((x_121 * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(x_128.z, x_128.w));
  let x_131 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_137 : f32 = u_xlat0.z;
  vs_TEXCOORD1.w = x_137;
  let x_141 : vec4<f32> = in_POSITION0;
  let x_144 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_146 : vec3<f32> = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_152 : vec4<f32> = in_POSITION0;
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.x, x_152.x, x_152.x)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_163 : vec4<f32> = in_POSITION0;
  let x_166 : vec4<f32> = u_xlat1;
  let x_168 : vec3<f32> = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * vec3<f32>(x_163.z, x_163.z, x_163.z)) + vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_174 : vec4<f32> = in_POSITION0;
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.w, x_174.w, x_174.w)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec4<f32> = u_xlat1;
  let x_186 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_188 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + -(x_186));
  let x_189 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_194 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_194;
  let x_199 : vec4<f32> = in_TANGENT0;
  let x_202 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_199.y, x_199.y, x_199.y) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_206 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_208 : vec4<f32> = in_TANGENT0;
  let x_211 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.x, x_208.x, x_208.x)) + x_211);
  let x_214 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_216 : vec4<f32> = in_TANGENT0;
  let x_219 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.z, x_216.z, x_216.z)) + x_219);
  let x_221 : vec3<f32> = u_xlat2;
  let x_222 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_221, x_222);
  let x_226 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_226);
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_229.x, x_229.x, x_229.x) * x_231);
  let x_233 : vec3<f32> = u_xlat2;
  let x_234 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_239 : vec3<f32> = in_NORMAL0;
  let x_241 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_239, vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_245 : vec3<f32> = in_NORMAL0;
  let x_247 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_245, vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_251 : vec3<f32> = in_NORMAL0;
  let x_253 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_251, vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_257 : vec3<f32> = u_xlat3;
  let x_258 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(x_257, x_258);
  let x_262 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_262);
  let x_265 : vec4<f32> = u_xlat1;
  let x_267 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_265.x, x_265.x, x_265.x) * x_267);
  let x_270 : vec3<f32> = u_xlat2;
  let x_272 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_270.y, x_270.z, x_270.x) * vec3<f32>(x_272.z, x_272.x, x_272.y));
  let x_275 : vec3<f32> = u_xlat3;
  let x_277 : vec3<f32> = u_xlat2;
  let x_280 : vec3<f32> = u_xlat4;
  u_xlat2 = ((vec3<f32>(x_275.y, x_275.z, x_275.x) * vec3<f32>(x_277.z, x_277.x, x_277.y)) + -(x_280));
  let x_284 : vec3<f32> = u_xlat3;
  let x_285 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_289 : f32 = in_TANGENT0.w;
  let x_292 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat1.x = (x_289 * x_292);
  let x_296 : vec4<f32> = u_xlat1;
  let x_298 : vec3<f32> = u_xlat2;
  let x_299 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * x_298);
  let x_300 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_303;
  let x_306 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_306;
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_312 : f32 = u_xlat0.y;
  let x_314 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.y = (x_312 * x_314);
  let x_317 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.x, x_317.w, x_317.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_321.x, x_322.y, x_321.y, x_321.z);
  let x_325 : vec4<f32> = u_xlat0;
  let x_326 : vec2<f32> = vec2<f32>(x_325.z, x_325.w);
  let x_327 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_327.x, x_327.y, x_326.x, x_326.y);
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec4<f32> = u_xlat1;
  let x_333 : vec2<f32> = (vec2<f32>(x_329.z, x_329.z) + vec2<f32>(x_331.x, x_331.w));
  let x_334 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_333.x, x_333.y, x_334.z, x_334.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD3, vs_TEXCOORD7);
}

