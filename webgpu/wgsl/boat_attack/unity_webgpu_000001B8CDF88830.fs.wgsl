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

@group(1) @binding(0) var<uniform> x_68 : PGlobals;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : f32;
  var u_xlatb4 : bool;
  var u_xlat8 : vec2<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0.x = x_24.w;
  let x_33 : f32 = u_xlat0.x;
  let x_38 : f32 = vs_TEXCOORD1.x;
  u_xlat4 = (x_33 + -(x_38));
  let x_42 : f32 = u_xlat0.x;
  let x_46 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (-(x_42) + x_46);
  let x_52 : f32 = u_xlat4;
  u_xlatb4 = (x_52 < 0.0f);
  let x_55 : bool = u_xlatb4;
  if (((select(0i, 1i, x_55) * -1i) != 0i)) {
    discard;
  }
  let x_72 : f32 = x_68.x_OutlineWidth;
  let x_75 : f32 = x_68.x_ScaleRatioA;
  u_xlat4 = (x_72 * x_75);
  let x_77 : f32 = u_xlat4;
  let x_80 : f32 = vs_TEXCOORD1.y;
  u_xlat4 = (x_77 * x_80);
  let x_84 : f32 = u_xlat4;
  u_xlat8.x = min(x_84, 1.0f);
  let x_88 : f32 = u_xlat4;
  u_xlat4 = (x_88 * 0.5f);
  let x_92 : f32 = u_xlat8.x;
  u_xlat8.x = sqrt(x_92);
  let x_97 : f32 = u_xlat0.x;
  let x_99 : f32 = vs_TEXCOORD1.y;
  let x_101 : f32 = u_xlat4;
  u_xlat12 = ((x_97 * x_99) + x_101);
  let x_103 : f32 = u_xlat12;
  u_xlat12 = clamp(x_103, 0.0f, 1.0f);
  let x_106 : f32 = u_xlat0.x;
  let x_108 : f32 = vs_TEXCOORD1.y;
  let x_110 : f32 = u_xlat4;
  u_xlat0.x = ((x_106 * x_108) + -(x_110));
  let x_115 : f32 = u_xlat8.x;
  let x_116 : f32 = u_xlat12;
  u_xlat4 = (x_115 * x_116);
  let x_120 : f32 = x_68.x_OutlineUVSpeedX;
  let x_123 : f32 = x_68.x_OutlineUVSpeedY;
  let x_127 : vec4<f32> = x_68.x_Time;
  let x_131 : vec4<f32> = vs_TEXCOORD5;
  u_xlat8 = ((vec2<f32>(x_120, x_123) * vec2<f32>(x_127.y, x_127.y)) + vec2<f32>(x_131.z, x_131.w));
  let x_140 : vec2<f32> = u_xlat8;
  let x_141 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, x_140);
  u_xlat1 = x_141;
  let x_142 : vec4<f32> = u_xlat1;
  let x_145 : vec4<f32> = x_68.x_OutlineColor;
  u_xlat1 = (x_142 * x_145);
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : vec4<f32> = u_xlat1;
  let x_152 : vec3<f32> = (vec3<f32>(x_148.w, x_148.w, x_148.w) * vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_158 : vec4<f32> = vs_COLOR0;
  let x_162 : vec4<f32> = x_68.x_FaceColor;
  u_xlat2 = (vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_166 : f32 = x_68.x_FaceUVSpeedX;
  let x_169 : f32 = x_68.x_FaceUVSpeedY;
  let x_172 : vec4<f32> = x_68.x_Time;
  let x_175 : vec4<f32> = vs_TEXCOORD5;
  u_xlat8 = ((vec2<f32>(x_166, x_169) * vec2<f32>(x_172.y, x_172.y)) + vec2<f32>(x_175.x, x_175.y));
  let x_184 : vec2<f32> = u_xlat8;
  let x_185 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, x_184);
  u_xlat3 = x_185;
  let x_186 : vec3<f32> = u_xlat2;
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_186 * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : f32 = u_xlat3.w;
  let x_193 : f32 = x_68.x_FaceColor.w;
  u_xlat3.w = (x_191 * x_193);
  let x_196 : vec3<f32> = u_xlat2;
  let x_197 : vec4<f32> = u_xlat3;
  let x_199 : vec3<f32> = (x_196 * vec3<f32>(x_197.w, x_197.w, x_197.w));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_202 + -(x_203));
  let x_206 : f32 = u_xlat4;
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat1 = ((vec4<f32>(x_206, x_206, x_206, x_206) * x_208) + x_210);
  let x_214 : f32 = x_68.x_OutlineSoftness;
  let x_216 : f32 = x_68.x_ScaleRatioA;
  u_xlat4 = (x_214 * x_216);
  let x_218 : f32 = u_xlat4;
  let x_220 : f32 = vs_TEXCOORD1.y;
  u_xlat8.x = (x_218 * x_220);
  let x_223 : f32 = u_xlat4;
  let x_225 : f32 = vs_TEXCOORD1.y;
  u_xlat4 = ((x_223 * x_225) + 1.0f);
  let x_229 : f32 = u_xlat8.x;
  let x_232 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_229 * 0.5f) + x_232);
  let x_236 : f32 = u_xlat0.x;
  let x_237 : f32 = u_xlat4;
  u_xlat0.x = (x_236 / x_237);
  let x_241 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_241, 0.0f, 1.0f);
  let x_245 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_245) + 1.0f);
  let x_249 : vec4<f32> = u_xlat0;
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec4<f32>(x_249.x, x_249.x, x_249.x, x_249.x) * x_251);
  let x_255 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = vs_COLOR0;
  SV_Target0 = (x_255 * vec4<f32>(x_256.w, x_256.w, x_256.w, x_256.w));
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

