struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
  x_Params : vec4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu0 : vec4<u32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_Test : texture_2d<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat9 : f32;

@group(0) @binding(0) var<uniform> x_139 : PGlobals;

var<private> u_xlat3 : f32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec4<f32> = hlslcc_FragCoord;
  let x_36 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_30.x, x_30.y)));
  let x_37 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_36.x, x_36.y, x_37.z, x_37.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_50 : vec4<u32> = u_xlatu0;
  let x_54 : u32 = u_xlatu0.w;
  let x_56 : vec4<f32> = textureLoad(x_Test, bitcast<vec2<i32>>(vec2<u32>(x_50.x, x_50.y)), bitcast<i32>(x_54));
  u_xlat0 = x_56;
  let x_62 : f32 = u_xlat0.w;
  u_xlatb1 = (x_62 == 0.0f);
  let x_65 : bool = u_xlatb1;
  if (x_65) {
    let x_80 : vec2<f32> = vs_TEXCOORD1;
    let x_81 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_80);
    SV_Target0 = x_81;
    return;
  }
  let x_88 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_88.x, x_88.y), 0.0f);
  u_xlat1 = vec3<f32>(x_90.x, x_90.y, x_90.z);
  let x_95 : f32 = u_xlat0.y;
  let x_97 : f32 = u_xlat0.x;
  u_xlat10 = max(x_95, x_97);
  let x_99 : f32 = u_xlat10;
  u_xlat10 = (-(x_99) + 1.0f);
  let x_104 : f32 = u_xlat0.y;
  let x_106 : f32 = u_xlat0.x;
  u_xlat2.x = min(x_104, x_106);
  let x_109 : f32 = u_xlat10;
  let x_111 : f32 = u_xlat2.x;
  u_xlat10 = min(x_109, x_111);
  let x_113 : f32 = u_xlat10;
  u_xlat10 = (x_113 * 2.191780806f);
  let x_116 : f32 = u_xlat10;
  u_xlat10 = clamp(x_116, 0.0f, 1.0f);
  let x_118 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_118);
  let x_120 : f32 = u_xlat10;
  u_xlat10 = (1.0f / x_120);
  let x_124 : f32 = u_xlat0.w;
  let x_125 : f32 = u_xlat10;
  u_xlat9 = (x_124 * x_125);
  let x_127 : vec4<f32> = u_xlat0;
  let x_131 : vec2<f32> = (vec2<f32>(x_127.x, x_127.y) + vec2<f32>(-0.5f, -0.5f));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_132.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_143 : vec4<f32> = x_139.x_Params;
  let x_145 : vec2<f32> = (abs(vec2<f32>(x_134.x, x_134.y)) * vec2<f32>(x_143.x, x_143.x));
  let x_146 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_146.x, x_145.x, x_145.y);
  let x_151 : f32 = x_139.x_MainTex_TexelSize.z;
  let x_153 : f32 = x_139.x_MainTex_TexelSize.y;
  u_xlat0.x = (x_151 * x_153);
  let x_157 : f32 = u_xlat0.x;
  let x_159 : f32 = u_xlat2.y;
  u_xlat2.x = (x_157 * x_159);
  let x_162 : vec3<f32> = u_xlat2;
  let x_164 : vec3<f32> = u_xlat2;
  u_xlat0.x = dot(vec2<f32>(x_162.x, x_162.z), vec2<f32>(x_164.x, x_164.z));
  let x_169 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_169) + 1.0f);
  let x_174 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_174, 0.0f);
  let x_179 : f32 = u_xlat0.x;
  let x_181 : f32 = u_xlat0.x;
  u_xlat3 = (x_179 * x_181);
  let x_183 : f32 = u_xlat3;
  let x_184 : f32 = u_xlat3;
  u_xlat3 = (x_183 * x_184);
  let x_186 : f32 = u_xlat3;
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = (x_186 * x_188);
  let x_192 : f32 = u_xlat0.x;
  let x_193 : f32 = u_xlat9;
  u_xlat0.x = (x_192 * x_193);
  let x_196 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = u_xlat1;
  let x_199 : vec3<f32> = (vec3<f32>(x_196.x, x_196.x, x_196.x) * x_198);
  let x_200 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_203 : f32 = u_xlat0.z;
  SV_Target0.w = x_203;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

