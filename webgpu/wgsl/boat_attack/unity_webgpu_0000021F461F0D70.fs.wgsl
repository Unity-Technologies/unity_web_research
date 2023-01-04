struct PGlobals {
  x_Time : vec4<f32>,
  x_FaceUVSpeedX : f32,
  x_FaceUVSpeedY : f32,
  @size(8)
  padding : u32,
  x_FaceColor : vec4<f32>,
  x_OutlineSoftness : f32,
  x_OutlineUVSpeedX : f32,
  x_OutlineUVSpeedY : f32,
  @size(4)
  padding_1 : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_ScaleRatioA : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_63 : PGlobals;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat4 : f32;
  var u_xlatb4 : bool;
  var u_xlat8 : vec2<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_22);
  u_xlat0 = x_24.w;
  let x_29 : f32 = u_xlat0;
  let x_35 : f32 = vs_TEXCOORD1.x;
  u_xlat4 = (x_29 + -(x_35));
  let x_38 : f32 = u_xlat0;
  let x_42 : f32 = vs_TEXCOORD1.z;
  u_xlat0 = (-(x_38) + x_42);
  let x_47 : f32 = u_xlat4;
  u_xlatb4 = (x_47 < 0.0f);
  let x_50 : bool = u_xlatb4;
  if (((select(0i, 1i, x_50) * -1i) != 0i)) {
    discard;
  }
  let x_67 : f32 = x_63.x_OutlineWidth;
  let x_70 : f32 = x_63.x_ScaleRatioA;
  u_xlat4 = (x_67 * x_70);
  let x_72 : f32 = u_xlat4;
  let x_75 : f32 = vs_TEXCOORD1.y;
  u_xlat4 = (x_72 * x_75);
  let x_79 : f32 = u_xlat4;
  u_xlat8.x = min(x_79, 1.0f);
  let x_83 : f32 = u_xlat4;
  u_xlat4 = (x_83 * 0.5f);
  let x_87 : f32 = u_xlat8.x;
  u_xlat8.x = sqrt(x_87);
  let x_91 : f32 = u_xlat0;
  let x_93 : f32 = vs_TEXCOORD1.y;
  let x_95 : f32 = u_xlat4;
  u_xlat12 = ((x_91 * x_93) + x_95);
  let x_97 : f32 = u_xlat12;
  u_xlat12 = clamp(x_97, 0.0f, 1.0f);
  let x_99 : f32 = u_xlat0;
  let x_101 : f32 = vs_TEXCOORD1.y;
  let x_103 : f32 = u_xlat4;
  u_xlat0 = ((x_99 * x_101) + -(x_103));
  let x_107 : f32 = u_xlat8.x;
  let x_108 : f32 = u_xlat12;
  u_xlat4 = (x_107 * x_108);
  let x_112 : f32 = x_63.x_OutlineUVSpeedX;
  let x_115 : f32 = x_63.x_OutlineUVSpeedY;
  let x_119 : vec4<f32> = x_63.x_Time;
  let x_123 : vec4<f32> = vs_TEXCOORD5;
  u_xlat8 = ((vec2<f32>(x_112, x_115) * vec2<f32>(x_119.y, x_119.y)) + vec2<f32>(x_123.z, x_123.w));
  let x_133 : vec2<f32> = u_xlat8;
  let x_134 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, x_133);
  u_xlat1 = x_134;
  let x_135 : vec4<f32> = u_xlat1;
  let x_138 : vec4<f32> = x_63.x_OutlineColor;
  u_xlat1 = (x_135 * x_138);
  let x_141 : vec4<f32> = u_xlat1;
  let x_143 : vec4<f32> = u_xlat1;
  let x_145 : vec3<f32> = (vec3<f32>(x_141.w, x_141.w, x_141.w) * vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_151 : vec4<f32> = vs_COLOR0;
  let x_155 : vec4<f32> = x_63.x_FaceColor;
  u_xlat2 = (vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_159 : f32 = x_63.x_FaceUVSpeedX;
  let x_162 : f32 = x_63.x_FaceUVSpeedY;
  let x_165 : vec4<f32> = x_63.x_Time;
  let x_168 : vec4<f32> = vs_TEXCOORD5;
  u_xlat8 = ((vec2<f32>(x_159, x_162) * vec2<f32>(x_165.y, x_165.y)) + vec2<f32>(x_168.x, x_168.y));
  let x_177 : vec2<f32> = u_xlat8;
  let x_178 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, x_177);
  u_xlat3 = x_178;
  let x_179 : vec3<f32> = u_xlat2;
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_179 * vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_184 : f32 = u_xlat3.w;
  let x_186 : f32 = x_63.x_FaceColor.w;
  u_xlat3.w = (x_184 * x_186);
  let x_189 : vec3<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat3;
  let x_192 : vec3<f32> = (x_189 * vec3<f32>(x_190.w, x_190.w, x_190.w));
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_195 + -(x_196));
  let x_199 : f32 = u_xlat4;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = u_xlat3;
  u_xlat1 = ((vec4<f32>(x_199, x_199, x_199, x_199) * x_201) + x_203);
  let x_207 : f32 = x_63.x_OutlineSoftness;
  let x_209 : f32 = x_63.x_ScaleRatioA;
  u_xlat4 = (x_207 * x_209);
  let x_211 : f32 = u_xlat4;
  let x_213 : f32 = vs_TEXCOORD1.y;
  u_xlat8.x = (x_211 * x_213);
  let x_216 : f32 = u_xlat4;
  let x_218 : f32 = vs_TEXCOORD1.y;
  u_xlat4 = ((x_216 * x_218) + 1.0f);
  let x_222 : f32 = u_xlat8.x;
  let x_224 : f32 = u_xlat0;
  u_xlat0 = ((x_222 * 0.5f) + x_224);
  let x_226 : f32 = u_xlat0;
  let x_227 : f32 = u_xlat4;
  u_xlat0 = (x_226 / x_227);
  let x_229 : f32 = u_xlat0;
  u_xlat0 = clamp(x_229, 0.0f, 1.0f);
  let x_231 : f32 = u_xlat0;
  u_xlat0 = (-(x_231) + 1.0f);
  let x_235 : f32 = u_xlat1.w;
  let x_236 : f32 = u_xlat0;
  u_xlat4 = ((x_235 * x_236) + -0.001f);
  let x_240 : f32 = u_xlat0;
  let x_242 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_240, x_240, x_240, x_240) * x_242);
  let x_246 : vec4<f32> = u_xlat1;
  let x_247 : vec4<f32> = vs_COLOR0;
  SV_Target0 = (x_246 * vec4<f32>(x_247.w, x_247.w, x_247.w, x_247.w));
  let x_251 : f32 = u_xlat4;
  u_xlatb0 = (x_251 < 0.0f);
  let x_253 : bool = u_xlatb0;
  if (((select(0i, 1i, x_253) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

