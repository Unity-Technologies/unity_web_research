struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

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
  var u_xlatb0 : bool;
  var x_103 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
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
  let x_87 : f32 = u_xlat0.z;
  vs_TEXCOORD1.w = x_87;
  let x_97 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_97 == 0.0f);
  let x_100 : bool = u_xlatb0;
  if (x_100) {
    let x_108 : vec2<f32> = in_TEXCOORD0;
    x_103 = x_108;
  } else {
    let x_111 : vec2<f32> = in_TEXCOORD1;
    x_103 = x_111;
  }
  let x_112 : vec2<f32> = x_103;
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
  let x_116 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_124 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_126 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_120.x, x_120.y)) + vec2<f32>(x_124.z, x_124.w));
  let x_127 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_127.x, x_127.y, x_126.x, x_126.y);
  let x_129 : vec2<f32> = in_TEXCOORD0;
  let x_132 : vec4<f32> = x_18.x_MainTex_ST;
  let x_136 : vec4<f32> = x_18.x_MainTex_ST;
  let x_138 : vec2<f32> = ((x_129 * vec2<f32>(x_132.x, x_132.y)) + vec2<f32>(x_136.z, x_136.w));
  let x_139 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_141 : vec4<f32> = in_POSITION0;
  let x_144 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_146 : vec3<f32> = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_152 : vec4<f32> = in_POSITION0;
  let x_155 : vec4<f32> = u_xlat0;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.x, x_152.x, x_152.x)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_163 : vec4<f32> = in_POSITION0;
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec3<f32> = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * vec3<f32>(x_163.z, x_163.z, x_163.z)) + vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_174 : vec4<f32> = in_POSITION0;
  let x_177 : vec4<f32> = u_xlat0;
  let x_179 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.w, x_174.w, x_174.w)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec4<f32> = u_xlat0;
  let x_186 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_188 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + -(x_186));
  let x_189 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_194 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_194;
  let x_197 : vec4<f32> = in_TANGENT0;
  let x_200 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_202 : vec3<f32> = (vec3<f32>(x_197.y, x_197.y, x_197.y) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_208 : vec4<f32> = in_TANGENT0;
  let x_211 : vec4<f32> = u_xlat1;
  let x_213 : vec3<f32> = ((vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.x, x_208.x, x_208.x)) + vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_219 : vec4<f32> = in_TANGENT0;
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_219.z, x_219.z, x_219.z)) + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_234 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_234);
  let x_237 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.x, x_237.x) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = vec3<f32>(x_244.x, x_244.y, x_244.z);
  let x_246 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_252 : vec3<f32> = in_NORMAL0;
  let x_254 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_252, vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_258 : vec3<f32> = in_NORMAL0;
  let x_260 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_258, vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_264 : vec3<f32> = in_NORMAL0;
  let x_266 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_264, vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_270 : vec3<f32> = u_xlat2;
  let x_271 : vec3<f32> = u_xlat2;
  u_xlat0.x = dot(x_270, x_271);
  let x_275 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_275);
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_278.x, x_278.x, x_278.x) * x_280);
  let x_283 : vec4<f32> = u_xlat1;
  let x_285 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_283.y, x_283.z, x_283.x) * vec3<f32>(x_285.z, x_285.x, x_285.y));
  let x_288 : vec3<f32> = u_xlat2;
  let x_290 : vec4<f32> = u_xlat1;
  let x_293 : vec3<f32> = u_xlat3;
  let x_295 : vec3<f32> = ((vec3<f32>(x_288.y, x_288.z, x_288.x) * vec3<f32>(x_290.z, x_290.x, x_290.y)) + -(x_293));
  let x_296 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec3<f32> = u_xlat2;
  let x_300 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_304 : f32 = in_TANGENT0.w;
  let x_306 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat0.x = (x_304 * x_306);
  let x_310 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = u_xlat1;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_318;
  let x_321 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_321;
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD3);
}

