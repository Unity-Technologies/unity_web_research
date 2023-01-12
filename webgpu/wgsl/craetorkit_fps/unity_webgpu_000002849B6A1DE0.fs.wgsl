struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
  x_Params : vec4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_Test : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_138 : PGlobals;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlatu0 : vec4<u32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat3 : f32;
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
  let x_49 : vec4<u32> = u_xlatu0;
  let x_53 : u32 = u_xlatu0.w;
  let x_55 : vec4<f32> = textureLoad(x_Test, bitcast<vec2<i32>>(vec2<u32>(x_49.x, x_49.y)), bitcast<i32>(x_53));
  u_xlat0 = x_55;
  let x_61 : f32 = u_xlat0.w;
  u_xlatb1 = (x_61 == 0.0f);
  let x_64 : bool = u_xlatb1;
  if (x_64) {
    let x_79 : vec2<f32> = vs_TEXCOORD1;
    let x_80 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_79);
    SV_Target0 = x_80;
    return;
  }
  let x_87 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_87.x, x_87.y), 0.0f);
  u_xlat1 = vec3<f32>(x_89.x, x_89.y, x_89.z);
  let x_94 : f32 = u_xlat0.y;
  let x_96 : f32 = u_xlat0.x;
  u_xlat10 = max(x_94, x_96);
  let x_98 : f32 = u_xlat10;
  u_xlat10 = (-(x_98) + 1.0f);
  let x_103 : f32 = u_xlat0.y;
  let x_105 : f32 = u_xlat0.x;
  u_xlat2.x = min(x_103, x_105);
  let x_108 : f32 = u_xlat10;
  let x_110 : f32 = u_xlat2.x;
  u_xlat10 = min(x_108, x_110);
  let x_112 : f32 = u_xlat10;
  u_xlat10 = (x_112 * 2.191780806f);
  let x_115 : f32 = u_xlat10;
  u_xlat10 = clamp(x_115, 0.0f, 1.0f);
  let x_117 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_117);
  let x_119 : f32 = u_xlat10;
  u_xlat10 = (1.0f / x_119);
  let x_123 : f32 = u_xlat0.w;
  let x_124 : f32 = u_xlat10;
  u_xlat9 = (x_123 * x_124);
  let x_126 : vec4<f32> = u_xlat0;
  let x_130 : vec2<f32> = (vec2<f32>(x_126.x, x_126.y) + vec2<f32>(-0.5f, -0.5f));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_142 : vec4<f32> = x_138.x_Params;
  let x_144 : vec2<f32> = (abs(vec2<f32>(x_133.x, x_133.y)) * vec2<f32>(x_142.x, x_142.x));
  let x_145 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_145.x, x_144.x, x_144.y);
  let x_150 : f32 = x_138.x_MainTex_TexelSize.z;
  let x_152 : f32 = x_138.x_MainTex_TexelSize.y;
  u_xlat0.x = (x_150 * x_152);
  let x_156 : f32 = u_xlat0.x;
  let x_158 : f32 = u_xlat2.y;
  u_xlat2.x = (x_156 * x_158);
  let x_161 : vec3<f32> = u_xlat2;
  let x_163 : vec3<f32> = u_xlat2;
  u_xlat0.x = dot(vec2<f32>(x_161.x, x_161.z), vec2<f32>(x_163.x, x_163.z));
  let x_168 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_168) + 1.0f);
  let x_173 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_173, 0.0f);
  let x_178 : f32 = u_xlat0.x;
  let x_180 : f32 = u_xlat0.x;
  u_xlat3 = (x_178 * x_180);
  let x_182 : f32 = u_xlat3;
  let x_183 : f32 = u_xlat3;
  u_xlat3 = (x_182 * x_183);
  let x_185 : f32 = u_xlat3;
  let x_187 : f32 = u_xlat0.x;
  u_xlat0.x = (x_185 * x_187);
  let x_191 : f32 = u_xlat0.x;
  let x_192 : f32 = u_xlat9;
  u_xlat0.x = (x_191 * x_192);
  let x_195 : vec4<f32> = u_xlat0;
  let x_197 : vec3<f32> = u_xlat1;
  let x_198 : vec3<f32> = (vec3<f32>(x_195.x, x_195.x, x_195.x) * x_197);
  let x_199 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : f32 = u_xlat0.z;
  SV_Target0.w = x_202;
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

