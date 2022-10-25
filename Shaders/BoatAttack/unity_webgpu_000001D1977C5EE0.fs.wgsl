struct PGlobals {
  x_SourceSize : vec4<f32>,
  x_FsrRcasConstants : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatu0 : vec4<u32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatu1 : vec4<u32>;
  var u_xlatu2 : vec4<u32>;
  var u_xlat0 : vec3<f32>;
  var u_xlatu3 : vec4<u32>;
  var u_xlatu4 : vec4<u32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_32 : vec4<f32> = x_27.x_SourceSize;
  let x_34 : vec2<f32> = (x_23 * vec2<f32>(x_32.x, x_32.y));
  let x_35 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_34.x, x_34.y, x_35.z);
  let x_38 : vec3<f32> = u_xlat1;
  let x_43 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_38.x, x_38.y)));
  let x_44 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_43.x, x_43.y, x_44.z, x_44.w);
  let x_47 : vec4<u32> = u_xlatu1;
  u_xlatu2 = (vec4<u32>(x_47.x, x_47.y, x_47.x, x_47.y) + vec4<u32>(0u, 4294967295u, 4294967295u, 0u));
  let x_52 : vec4<u32> = u_xlatu2;
  let x_53 : vec2<u32> = vec2<u32>(x_52.z, x_52.w);
  let x_54 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_53.x, x_53.y, x_54.z, x_54.w);
  let x_61 : vec4<u32> = u_xlatu0;
  let x_65 : u32 = u_xlatu0.w;
  let x_67 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_61.x, x_61.y)), bitcast<i32>(x_65));
  u_xlat0 = vec3<f32>(x_67.x, x_67.y, x_67.z);
  let x_70 : vec4<u32> = u_xlatu1;
  u_xlatu3 = (vec4<u32>(x_70.x, x_70.y, x_70.x, x_70.y) + vec4<u32>(0u, 1u, 1u, 0u));
  let x_76 : vec4<u32> = u_xlatu3;
  let x_77 : vec2<u32> = vec2<u32>(x_76.z, x_76.w);
  let x_78 : vec4<u32> = u_xlatu4;
  u_xlatu4 = vec4<u32>(x_77.x, x_77.y, x_78.z, x_78.w);
  u_xlatu4.z = 0u;
  u_xlatu4.w = 0u;
  let x_84 : vec4<u32> = u_xlatu4;
  let x_88 : u32 = u_xlatu4.w;
  let x_90 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_84.x, x_84.y)), bitcast<i32>(x_88));
  u_xlat4 = vec3<f32>(x_90.x, x_90.y, x_90.z);
  let x_93 : vec3<f32> = u_xlat0;
  let x_94 : vec3<f32> = u_xlat4;
  u_xlat5 = max(x_93, x_94);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  let x_100 : vec4<u32> = u_xlatu2;
  let x_104 : u32 = u_xlatu2.w;
  let x_106 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_100.x, x_100.y)), bitcast<i32>(x_104));
  u_xlat2 = vec3<f32>(x_106.x, x_106.y, x_106.z);
  let x_108 : vec3<f32> = u_xlat5;
  let x_109 : vec3<f32> = u_xlat2;
  u_xlat5 = max(x_108, x_109);
  u_xlatu3.z = 0u;
  u_xlatu3.w = 0u;
  let x_115 : vec4<u32> = u_xlatu3;
  let x_119 : u32 = u_xlatu3.w;
  let x_121 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_115.x, x_115.y)), bitcast<i32>(x_119));
  u_xlat3 = vec3<f32>(x_121.x, x_121.y, x_121.z);
  let x_123 : vec3<f32> = u_xlat3;
  let x_124 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_123, x_124);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_129 : vec4<u32> = u_xlatu1;
  let x_133 : u32 = u_xlatu1.w;
  let x_135 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_129.x, x_129.y)), bitcast<i32>(x_133));
  u_xlat1 = vec3<f32>(x_135.x, x_135.y, x_135.z);
  let x_138 : vec3<f32> = u_xlat1;
  let x_139 : vec3<f32> = u_xlat5;
  u_xlat6 = max(x_138, x_139);
  let x_141 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_141 * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_147 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(1.0f, 1.0f, 1.0f) / vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_153 : vec3<f32> = u_xlat6;
  u_xlat6 = (-(x_153) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_157 : vec3<f32> = u_xlat0;
  let x_158 : vec3<f32> = u_xlat4;
  u_xlat7 = min(x_157, x_158);
  let x_160 : vec3<f32> = u_xlat2;
  let x_161 : vec3<f32> = u_xlat7;
  u_xlat7 = min(x_160, x_161);
  let x_163 : vec3<f32> = u_xlat3;
  let x_164 : vec3<f32> = u_xlat7;
  u_xlat7 = min(x_163, x_164);
  let x_167 : vec3<f32> = u_xlat7;
  u_xlat8 = ((x_167 * vec3<f32>(4.0f, 4.0f, 4.0f)) + vec3<f32>(-4.0f, -4.0f, -4.0f));
  let x_172 : vec3<f32> = u_xlat1;
  let x_173 : vec3<f32> = u_xlat7;
  u_xlat7 = min(x_172, x_173);
  let x_175 : vec3<f32> = u_xlat5;
  let x_176 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_175 * x_176);
  let x_178 : vec3<f32> = u_xlat8;
  u_xlat7 = (vec3<f32>(1.0f, 1.0f, 1.0f) / vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_184 : vec3<f32> = u_xlat6;
  let x_185 : vec3<f32> = u_xlat7;
  u_xlat6 = (x_184 * x_185);
  let x_187 : vec3<f32> = u_xlat5;
  let x_189 : vec3<f32> = u_xlat6;
  u_xlat5 = max(-(x_187), x_189);
  let x_194 : f32 = u_xlat5.z;
  let x_196 : f32 = u_xlat5.y;
  u_xlat27 = max(x_194, x_196);
  let x_198 : f32 = u_xlat27;
  let x_200 : f32 = u_xlat5.x;
  u_xlat27 = max(x_198, x_200);
  let x_202 : f32 = u_xlat27;
  u_xlat27 = min(x_202, 0.0f);
  let x_205 : f32 = u_xlat27;
  u_xlat27 = max(x_205, -0.1875f);
  let x_208 : f32 = u_xlat27;
  let x_212 : f32 = x_27.x_FsrRcasConstants.x;
  u_xlat27 = (x_208 * x_212);
  let x_214 : vec3<f32> = u_xlat0;
  let x_215 : f32 = u_xlat27;
  u_xlat0 = (x_214 * vec3<f32>(x_215, x_215, x_215));
  let x_218 : f32 = u_xlat27;
  let x_220 : vec3<f32> = u_xlat2;
  let x_222 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_218, x_218, x_218) * x_220) + x_222);
  let x_224 : f32 = u_xlat27;
  let x_226 : vec3<f32> = u_xlat3;
  let x_228 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_224, x_224, x_224) * x_226) + x_228);
  let x_230 : f32 = u_xlat27;
  let x_232 : vec3<f32> = u_xlat4;
  let x_234 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_230, x_230, x_230) * x_232) + x_234);
  let x_236 : f32 = u_xlat27;
  u_xlat27 = ((x_236 * 4.0f) + 1.0f);
  let x_239 : vec3<f32> = u_xlat1;
  let x_240 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_239 + x_240);
  let x_242 : f32 = u_xlat27;
  u_xlat1.x = bitcast<f32>((-(bitcast<i32>(x_242)) + 2129764351i));
  let x_250 : f32 = u_xlat1.x;
  let x_252 : f32 = u_xlat27;
  u_xlat27 = ((-(x_250) * x_252) + 2.0f);
  let x_256 : f32 = u_xlat27;
  let x_258 : f32 = u_xlat1.x;
  u_xlat27 = (x_256 * x_258);
  let x_262 : f32 = u_xlat27;
  let x_264 : vec3<f32> = u_xlat0;
  let x_265 : vec3<f32> = (vec3<f32>(x_262, x_262, x_262) * x_264);
  let x_266 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

